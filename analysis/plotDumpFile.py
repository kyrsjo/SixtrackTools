#!/usr/bin/env python

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

import os,sys

# fileDType = np.dtype([('ID', np.int), ('turn', np.int),
#                       ('s', np.float),('x', np.float),('xp', np.float),('z', np.float),
#                       ('y', np.float),('yp', np.float),('dEE', np.float),
#                       ('pType', np.int)])
fileDType = np.dtype([('ID', np.int), ('turn', np.int),('s', np.float),
                      ('x', np.float),('xp', np.float),
                      ('y', np.float),('yp', np.float),
                      ('z', np.float),('dEE', np.float),
                      ('pType', np.int)])


def readdumpfile(fname):
    print "Loading file '" + fname + "'",
    fdata = np.loadtxt(fname, dtype=fileDType)
    
    print "creating turnIdxs array"
    turnIdxs = [[0]] # 1st idx: Tracking pass (64 particles/pass)
                     # 2nd idx: Turn number (last element = end)
                     #    data: The index into fdata
    
    tPrev   = fdata['turn'][0]
    passIdx = 0

    for i in xrange(1,len(fdata['turn'])):
        t = fdata['turn'][i]
        if t < tPrev:
            turnIdxs[passIdx].append(i)
            passIdx += 1
            turnIdxs.append([])
        if t == tPrev:
            continue
        turnIdxs[passIdx].append(i)
        tPrev = t
    turnIdxs[-1].append(len(fdata['turn']))
    
    return (fdata,turnIdxs)

def plot_particleNum(fdata,turnIdx):
    plt.figure()

    turn = []
    numParticles = []
    
    for i in xrange(len(turnIdxs)):
        if (len(turnIdxs[i])-1) > len(turn):
            for j in xrange(len(turn),len(turnIdxs[i])-1):
                turn.append(j+1)
                numParticles.append(0)
        for j in xrange(len(turnIdxs[i])-1):
            #assumption: One element/turn
            numParticles[j] += turnIdxs[i][j+1]-turnIdxs[i][j]

    plt.plot(turn,numParticles)
    plt.xlabel("Turn")
    plt.ylabel("Particles tracked")
    
def get_turndata(fdata, turn):
    #"Turn" input variable counts from 1
    assert turn > 0

    rdata = []

    for i in xrange(len(turnIdxs)):
        if len(turnIdxs[i])-1 < turn:
            continue
        
        tidx1 = turnIdxs[i][turn-1]
        tidx2 = turnIdxs[i][turn]
        for j in xrange(tidx1,tidx2):
            rdata.append(fdata[j])
    return rdata

def scatterplot_matrix(indata, names, fignum, **kwargs):
    #Adapted from http://stackoverflow.com/questions/7941207/is-there-a-function-to-make-scatterplot-matrices-in-matplotlib
    """Plots a scatterplot matrix of subplots.  Each row of "data" is plotted
    against other rows, resulting in a nrows by nrows grid of subplots with the
    diagonal subplots labeled with "names".  Additional keyword arguments are
    passed on to matplotlib's "plot" command. Returns the matplotlib figure
    object containg the subplot grid."""
    
    data = []
    for n in names:
        data.append(indata[n])
    data = np.asarray(data)
    
    numvars, numdata = data.shape
    fig, axes = plt.subplots(nrows=numvars, ncols=numvars, figsize=(8,8),num=fignum)
    fig.subplots_adjust(hspace=0.05, wspace=0.05)

    for ax in axes.flat:
        # Hide all ticks and labels
        ax.xaxis.set_visible(False)
        ax.yaxis.set_visible(False)

        # Set up ticks only on one side for the "edge" subplots...
        if ax.is_first_col():
            ax.yaxis.set_ticks_position('left')
        if ax.is_last_col():
            ax.yaxis.set_ticks_position('right')
        if ax.is_first_row():
            ax.xaxis.set_ticks_position('top')
        if ax.is_last_row():
            ax.xaxis.set_ticks_position('bottom')

    # Plot the data.
    for i, j in zip(*np.triu_indices_from(axes, k=1)):
        for x, y in [(i,j), (j,i)]:
            axes[x,y].scatter(data[x], data[y], **kwargs)

    # Label the diagonal subplots...
    for i, label in enumerate(names):
        axes[i,i].hist(indata[label],histtype='step')
        axes[i,i].annotate(label, (0.5, 0.5), xycoords='axes fraction',
                ha='center', va='center')

    # Turn on the proper x or y axes ticks.
    cycle = [-1,0]*numvars
    for i, j in zip(range(numvars), cycle):
        axes[j,i].xaxis.set_visible(True)
        for tick in axes[j,i].get_xticklabels():
            tick.set_rotation('vertical')
        axes[i,j].yaxis.set_visible(True)

    return fig

#(fdata,turnIdxs) = readdumpfile("../fort.660") #IP1
#(fdata,turnIdxs) = readdumpfile("../IP1_DUMP.dat") #IP1
#(fdata,turnIdxs) = readdumpfile("../fort.661") #CRAB5

if len(sys.argv) == 1:
    print "Usage: python plotDumpFile dumpfile (maxturn)"
    exit(1)

(fdata,turnIdxs) = readdumpfile(sys.argv[1])
if len(sys.argv) == 3:
    maxturn = int(sys.argv[2])
else:
    maxturn = None

plot_particleNum(fdata,turnIdxs)

corr = []
X = []
XP = []
Y = []
YP = []
Z = []
DEE = []
T = []

print
t = 0
while True:
    t = t+1
    print "TURN =",t
    tdata = np.asarray(get_turndata(fdata,t),dtype=fileDType)
    if len(tdata) == 0:
        print "*** Stopping here, no more particles to plot ***"
        print
        break
    if maxturn and t>maxturn:
        print "Reached maxturn =", maxturn
        break

    corr.append(np.corrcoef(tdata['z'], tdata['x'])[0,1])    
    
    for p in tdata:
        if p['ID'] == 1:
            X.append(  p['x']  )
            XP.append( p['xp'] )
            Y.append(  p['y']  )
            YP.append( p['yp'] )
            Z.append( p['z'] )
            DEE.append( p['dEE'] )
            T.append( t )
            break
    if t == 1:
        fig = scatterplot_matrix(tdata,['x','xp','y','yp','z','dEE'],fignum=12)
        plt.suptitle("First turn distribution")
        for (v,i) in zip(['x','xp','y','yp','z','dEE'],xrange(6)):
#            plt.figure(199+i)
#            plt.hist(tdata[v])
#            plt.xlabel(v)
#            plt.title("First turn distribution; mean=%f, rms=%f" % (np.mean(tdata[v]), np.std(tdata[v])))
            print "First turn distribution of %s; mean=%f, rms=%f" % (v,np.mean(tdata[v]), np.std(tdata[v]))

    #Check if ID is "unbroken" or not
    if len(tdata) != 64:
        pid = tdata[0]['ID']
        s0 = tdata[0]['s']
        for p in tdata:
            if p['s'] != s0:
                break
            if p['ID'] < pid:
                pid = p['ID']
            if p['ID'] != pid:
#                print pid, tdata['ID']
                break
            pid = pid+1
            
    #continue
    plt.figure(5)
    
    #zx
    #plt.figure()

    plt.clf()
    plt.title("TURN =" + str(t))
    plt.scatter(tdata['z'], tdata['x'], c=tdata['ID'],cmap='rainbow',s=20)
    plt.xlabel("z [mm]")
    plt.ylabel("x [mm]")
    plt.xlim(min(fdata[:]['z']),max(fdata[:]['z']))
    plt.ylim(min(fdata[:]['x']),max(fdata[:]['x']))

    plt.savefig("pngs/zx_%05i.png" % (t))

    plt.clf()
    plt.title("TURN =" + str(t))
    plt.scatter(tdata['x'], tdata['y'], c=tdata['ID'],cmap='rainbow',s=20)
    plt.xlabel("x [mm]")
    plt.ylabel("y [mm]")
    plt.xlim(min(fdata[:]['x']),max(fdata[:]['x']))
    plt.ylim(min(fdata[:]['y']),max(fdata[:]['y']))
    
    plt.savefig("pngs/xy_%05i.png" % (t))

    plt.clf()
    plt.title("TURN =" + str(t))
    plt.scatter(tdata['x'], tdata['xp'], c=tdata['ID'],cmap='rainbow',s=20)
    plt.xlabel("x [mm]")
    plt.ylabel("xp [mrad]")
    plt.xlim(min(fdata[:]['x']),max(fdata[:]['x']))
    plt.ylim(min(fdata[:]['xp']),max(fdata[:]['xp']))
    
    plt.savefig("pngs/xxp_%05i.png" % (t))

    plt.clf()
    plt.title("TURN =" + str(t))
    plt.scatter(tdata['y'], tdata['yp'], c=tdata['ID'],cmap='rainbow',s=20)
    plt.xlabel("y [mm]")
    plt.ylabel("yp [mrad]")
    plt.xlim(min(fdata[:]['y']),max(fdata[:]['y']))
    plt.ylim(min(fdata[:]['yp']),max(fdata[:]['yp']))
    
    plt.savefig("pngs/yyp_%05i.png" % (t))

    plt.clf()
    plt.title("TURN =" + str(t))
    plt.scatter(tdata['z'], tdata['dEE'], c=tdata['ID'],cmap='rainbow',s=20)
    plt.xlabel("z [mm]")
    plt.ylabel("dE/E")
    plt.xlim(min(fdata[:]['z']),max(fdata[:]['z']))
    plt.ylim(min(fdata[:]['dEE']),max(fdata[:]['dEE']))
    
    plt.savefig("pngs/zdEE_%05i.png" % (t))

    continue

    fig = plt.figure(10)
    ax = fig.add_subplot(111, projection='3d')
    ax.scatter(tdata['x'], tdata['y'], tdata['z'])
    ax.set_xlim(-0.05,0.05)
    ax.set_ylim(-0.25,0.25)
    ax.set_zlim(-200,200)
    ax.set_title("TURN =" + str(t))
    plt.xlabel("x [mm]")
    plt.ylabel("y [mm]")
    ax.set_zlabel("z [mm]")
    
    plt.savefig("pngs/xyz_%05i.png" % (t))

fps = 10

print "Making gifs:"

movieFileName = "pngs/xy.gif"
command = "convert " + "pngs/xy_*.png -layers Optimize -delay " + str(100/fps) + " " + movieFileName
print "Command = '" + command + "'"
#os.system(command)
print "Done."

movieFileName = "pngs/zx.gif"
command = "convert " + "pngs/zx_*.png -layers Optimize -delay " + str(100/fps) + " " + movieFileName
print "Command = '" + command + "'"
#os.system(command)
print "Done."

movieFileName = "pngs/zdEE.gif"
command = "convert " + "pngs/zdEE_*.png -layers Optimize -delay " + str(100/fps) + " " + movieFileName
print "Command = '" + command + "'"
#os.system(command)
print "Done."

plt.figure(5) # To close the remains of per-timestep plots, reuse same plot #
plt.clf()
plt.plot(corr)
plt.xlabel("Turn")
plt.ylabel("Corr")

(f,ax) = plt.subplots(2,2)

ax[0][0].scatter(X,XP,  c=T,cmap='rainbow',s=20)
ax[0][0].set_xlabel("X [mm]")
ax[0][0].set_ylabel("XP [mrad]")

ax[0][1].scatter(Y,YP,  c=T,cmap='rainbow',s=20)
ax[0][1].set_xlabel("Y [mm]")
ax[0][1].set_ylabel("YP [mrad]")

ax[1][0].scatter(Z,DEE, c=T,cmap='rainbow',s=20)
ax[1][0].set_xlabel("Z [mm]")
ax[1][0].set_ylabel("dE/E")

ax[1][1].scatter(X,Y,   c=T,cmap='rainbow',s=20)
ax[1][1].set_xlabel("X [mm]")
ax[1][1].set_ylabel("Y [mm]")

plt.show()
