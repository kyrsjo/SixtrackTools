import numpy as np
import matplotlib.pyplot as plt
import matplotlib.colors as MPLcolors

#1=name, 2=turn, 3=s [m], 4=x[mm], 5=xp[mrad], 6=y[mm], 7=yp[mrad], 8=dE/E, 9=type, 10=turns in machine after first hits on collimators


#Read aperture loss data
fileDType=np.dtype([("name",np.int),("turn",np.int),("s",np.float),("x",np.float),("xp",np.float),("y",np.float),("yp",np.float),("dEE",np.float),("type",np.int),("turnsImpact",np.int)])
aperLoss = np.loadtxt("LPI.s",dtype=fileDType)

#Read collimator loss data
nhits_coll = {}
pos_coll = {}
print "Loading 'CollPositions.b1.dat'...",
CollPositions = open("CollPositions.b1.dat",'r')
for line in CollPositions:
    if line[0] == "%":
        continue
    elif line.strip() == "":
        continue
    ls = line.split()
    nhits_coll[int(ls[0])]=0
    pos_coll[int(ls[0])]=float(ls[2])
CollPositions.close()
print "done"

print "Loading collgaps.dat...",
length_coll = {}
collgaps = open('collgaps.dat','r')
collgaps.readline() #Skip header
for line in collgaps:
    ls = line.split()
    length_coll[int(ls[0])] = float(ls[7])
collgaps.close()
print "done"

print "Loading impacts_real.dat..."
impacts_real = open("impacts_real.dat",'r')
lidx = 1
for line in impacts_real:
    if line[0]=="#":
        continue
    ls = line.split()
    nhits_coll[int(ls[0])] += 1
    
#    lidx = lidx+1
#    if lidx > 1000000:
#        break
impacts_real.close()     
print "done!"

# prepare for plotting collimator hits
pos_coll_array = []
length_coll_array = []
nhits_coll_normedArray = []
for ID in length_coll.keys():
    pos_coll_array.append(pos_coll[ID])
    length_coll_array.append(length_coll[ID])
    nhits_coll_normedArray.append(nhits_coll[ID]/length_coll_array[-1])

# Lossmap PLOT
plt.figure()
sbins = np.linspace(0,26658.88320,10001) ##### CHECK BEFORE USE #####
binsize = np.mean(np.diff(sbins))
plt.hist(aperLoss["s"],sbins,weights=np.ones_like(aperLoss["s"])/binsize,color="blue",edgecolor="blue",label="Aperture")
plt.bar(pos_coll_array, nhits_coll_normedArray,width=length_coll_array, color="red",edgecolor="red",label="Collimator")
#plt.hist(collImpacts,bins,weights=np.ones_like(collImpacts)/binsize,color="red",edgecolor="red")
plt.legend()
plt.yscale('log', nonposy='clip')
plt.xlabel("s [m]")
plt.ylabel("Lost particles / meter")
plt.savefig("plotImpactsLossmap_lossmap.png",dpi=120)

# Losstime PLOT
plt.figure()
lastTurn = max(aperLoss["turn"])
turnBins = np.arange(0.5,lastTurn+1.0,1.0)
#print turnBins
plt.hist(aperLoss["turn"],turnBins)
plt.xlabel("Turn")
plt.ylabel("Lost particles/turn")
plt.savefig("plotImpactsLossmap_turn.png",dpi=120)

#Correlation losstime/position PLOT
plt.figure()
sbins2 = np.linspace(0,26658.88320,501) ##### CHECK BEFORE USE #####
plt.hist2d(aperLoss["s"],aperLoss["turn"],(sbins2,turnBins),norm=MPLcolors.LogNorm())
plt.colorbar()
plt.xlabel("s [m]")
plt.ylabel("Turn")
plt.savefig("plotImpactsLossmap_pos+turn.png",dpi=120)

plt.show()
