import numpy as np
import matplotlib.pyplot as plt
import matplotlib.colors as MPLcolors
import sys

title = None
if len(sys.argv) > 1:
    title = sys.argv[1]

#1=name, 2=turn, 3=s [m], 4=x[mm], 5=xp[mrad], 6=y[mm], 7=yp[mrad], 8=dE/E, 9=type, 10=turns in machine after first hits on collimators

L = 26658.8832 #[m]
IP = (0, 3332.43658, 6664.72080, 9997.00502, 13329.28923, 16661.72582, 19994.16240, 23315.37898, 26658.88320)
IPnom = ("IP1", "IP2", "IP3", "IP4", "IP5", "IP6", "IP7", "IP8", "IP1")

#Read aperture loss data
fileDType=np.dtype([("name",np.int),("turn",np.int),("s",np.float),("x",np.float),("xp",np.float),("y",np.float),("yp",np.float),("dEE",np.float),("type",np.int),("turnsImpact",np.int)])
aperLoss = np.loadtxt("LPI.s",dtype=fileDType)
lastTurn = max(aperLoss["turn"])

#Read collimator loss data
nhits_coll = {}
pos_coll = {}
nhitsTurn_coll = {}
print "Loading 'CollPositions.b1.dat'...",
CollPositions = open("CollPositions.b1.dat",'r')
for line in CollPositions:
    if line[0] == "%":
        continue
    elif line.strip() == "":
        continue
    ls = line.split()
    collIdx = int(ls[0])
    nhits_coll[collIdx]=0
    pos_coll[collIdx]=float(ls[2])
    nhitsTurn_coll[collIdx]=np.zeros(lastTurn*2)#make enough room...
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
    if ls[7] == "4":
        #skip difractive
        continue
    collIdx = int(ls[0])
    nhits_coll[collIdx] += 1
    nhitsTurn_coll[collIdx][int(ls[9])]+=1
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
plt.xlim(0,L)
plt.yscale('log', nonposy='clip')
plt.xlabel("s [m]")
plt.ylabel("Lost particles / meter")
for ip,nom in zip(IP,IPnom):
    plt.axvline(ip,ls="--",color="k")
    plt.annotate(s=nom,xy=(ip,max(nhits_coll_normedArray)),xytext=(7,0),textcoords="offset points")
if title:
    plt.title(title)
plt.legend(loc=0,frameon=False)
plt.savefig("plotImpactsLossmap_lossmap.png",dpi=120)

# Losstime PLOT
plt.figure()
#lastTurn = max(aperLoss["turn"])
turnBins = np.arange(0.5,lastTurn+1.0,1.0)
#print turnBins
plt.hist(aperLoss["turn"],turnBins)
plt.xlabel("Turn")
plt.ylabel("Lost particles/turn")
if title:
    plt.title(title)
plt.savefig("plotImpactsLossmap_turn.png",dpi=120)

# Losstime PLOT#2
plt.figure()
aperLoss_turn = np.zeros(lastTurn*2)
for t in aperLoss["turn"]:
    aperLoss_turn[t]+=1
timeLoss = np.zeros(lastTurn*2)
lastLoss = 0
for i in xrange(len(aperLoss_turn)):
    timeLoss[i] = aperLoss_turn[i]
    for ID in nhitsTurn_coll.keys():
        timeLoss[i] += nhitsTurn_coll[ID][i]
    if timeLoss[i] > 0:
        lastLoss = i
#plt.plot(timeLoss)
print len(np.arange(0.5,lastTurn*2,1.0)),len(timeLoss)
plt.bar(np.arange(0.5,lastTurn*2,1.0), timeLoss, 1.0)
plt.xlim(0,lastLoss+1)
plt.xlabel("Turn")
plt.ylabel("Lost particles/turn")
plt.axvline(8.0,ls="--",color="k") ##Onset of FAILURE
plt.savefig("plotImpactsLossmap_turn2.png",dpi=120)

# Normalized losstime2 plot
plt.figure()
timeLoss_norm = timeLoss/128e6 ### Number of particles tracked
plt.bar(np.arange(0.5,lastTurn*2,1.0), timeLoss_norm, 1.0)
plt.xlim(0,lastLoss+1)
plt.xlabel("Turn")
plt.ylabel("Fraction of total particles lost/turn")
plt.axvline(8.0,ls="--",color="red") ##Onset of FAILURE
plt.savefig("plotImpactsLossmap_turn2_norm.png",dpi=120)

#Correlation losstime/position PLOT
plt.figure()
sbins2 = np.linspace(0,26658.88320,501) ##### CHECK BEFORE USE #####
plt.hist2d(aperLoss["s"],aperLoss["turn"],(sbins2,turnBins),norm=MPLcolors.LogNorm())
plt.colorbar()
plt.xlim(0,L)
plt.xlabel("s [m]")
plt.ylabel("Turn")
if title:
    plt.title(title)
plt.savefig("plotImpactsLossmap_pos+turn.png",dpi=120)

plt.show()
