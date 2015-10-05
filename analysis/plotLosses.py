import numpy as np
import matplotlib.pyplot as plt

import os

##
N = 64*100
nTurns = 10

maxF = 4790


FREQ = []
APPLOSS = []
COLLLOSS = []
LOSSTURN = []

for directory in os.walk("."):
    thisDir = directory[0]
    print thisDir
    if thisDir == ".":
        continue
    freq = thisDir.split("_")[1]
    if int(freq) > maxF:
        break
    FREQ.append(int(freq))
    
    lossturn = []

    lpi_fname = os.path.join(directory[0],"LPI_test.s")
    #collsummary_fname = os.path.join(directory[0],"coll_summary.dat")
    impactsReal_fname = os.path.join(directory[0],"impacts_real.dat")
    
    lpi = open(lpi_fname,'r')
    apploss = 0
    for line in lpi.readlines():
        apploss += 1
        #print "line = '"+line+"'"
        lossturn.append(int(line.split()[1]))
    lpi.close()
    APPLOSS.append(apploss)
    
    #collsummary = open(collsummary_fname,'r')
    #collloss = 0
    #for line in collsummary.readlines():
    #    if line.lstrip().startswith("#") or line.strip() == "":
    #        continue
    #    collloss += int(line.split()[3])
    #collsummary.close()
    #COLLLOSS.append(collloss)
    impactsReal = open(impactsReal_fname,'r')
    collloss = 0
    for line in impactsReal.readlines():
        if line.startswith("#"):
            continue
        ls = line.split()
        if ls[7] != '1':
            continue #diffractive, not scatter
        collloss += 1
        lossturn.append(int(ls[9]))
    impactsReal.close()
    COLLLOSS.append(collloss)        

    LOSSTURN.append(lossturn)

#print FREQ
#print APPLOSS
#print COLLLOSS
#print map(len, LOSSTURN), map(np.mean, LOSSTURN)
#print

#Sort by frequency
argsort = np.argsort(FREQ)
FREQ = np.asarray(FREQ)[argsort]
APPLOSS = np.asarray(APPLOSS)[argsort]
COLLLOSS = np.asarray(COLLLOSS)[argsort]
#LOSSTURN = np.asarray(COLLLOSS)[argsort]
LOSSTURN2 = []
LOSSHIST = []
LOSSHIST_CUM = []
for a in argsort:
    LOSSTURN2.append(LOSSTURN[a])

    losshist = np.zeros(nTurns,dtype='int')
    for l in LOSSTURN[a]:
        losshist[l-1]+=1
    LOSSHIST.append(losshist)
    LOSSHIST_CUM.append(np.cumsum(losshist))
    
LOSSTURN = LOSSTURN2
del LOSSTURN2
#print LOSSTURN
#print LOSSHIST_CUM

LOSSHIST = np.asarray(LOSSHIST)
LOSSHIST_CUM = np.asarray(LOSSHIST_CUM)

LOSS = APPLOSS+COLLLOSS
LOSSFRAQ = LOSS/float(N)



ofile = open("lossFile.txt",'w')
ofile.write("# FREQ[Hz] APPLOSS COLLLOSS    LOSS      LOSSFRAQ\n")
for i in xrange(len(FREQ)):
    ofile.write("%10s %7i %8i %7i  %10.6e\n"%(FREQ[i],APPLOSS[i],COLLLOSS[i],LOSS[i],LOSSFRAQ[i]))
ofile.close()

plt.figure()
plt.plot(FREQ,APPLOSS)
plt.plot(FREQ,COLLLOSS)
plt.axhline(N)

plt.figure()
plt.plot(FREQ,LOSSFRAQ)
plt.xlabel(r"$\Delta f$ [Hz]")
plt.ylabel("Loss fraction")
plt.title("Crab detuning: Total particle losses in 10 turns")

radTurnHz = 5.5873e-04

def plotVLine(x,label):
    plt.axvline(x, ls="--", color="k")
    plt.annotate(s=label,xy=(x,0.7),xytext=(0,0),textcoords="offset points",rotation="vertical",ha="right")

#plotVLine(2*np.pi/3/radTurnHz,r"$2\pi/3$")
#plotVLine(4*np.pi/3/radTurnHz,r"$4\pi/3$")
#plotVLine(2*np.pi  /radTurnHz,r"$2\pi$")

plt.savefig("lossfraction.png")

plt.figure()
for i in xrange(len(FREQ)):
    #plt.plot(LOSSHIST_CUM[i])
    plt.plot(range(1,nTurns+1),LOSSHIST_CUM[i]/float(N))
plt.xlabel("Turns")
plt.ylabel("Lost fraction")
plt.savefig("lossfraction_turns.png")

plt.figure()
yTurns = np.arange(0.5,nTurns+1.5)
#print FREQ
xFreqs = np.asarray([FREQ[0]-(FREQ[1]-FREQ[0])] + list(FREQ) + [FREQ[-1]+(FREQ[-1]-FREQ[-2])])
#print yFreqs
xFreqs = xFreqs[:-1]+np.diff(xFreqs)/2
#print yFreqs
(xFREQS,yTURNS)=np.meshgrid(xFreqs,yTurns)
plt.pcolor(xFREQS,yTURNS,LOSSHIST_CUM.T/float(N),vmin=0.0,vmax=1.0)

plt.xlim(xFreqs[0],xFreqs[-1])
plt.ylim(yTurns[0],yTurns[-1])
plt.colorbar().set_label("Lost fraction after T turns")
plt.xlabel(r"$\Delta f$ [Hz]")
plt.ylabel("T Turns")
plt.savefig("lossfraction_turnsFreq.png")

plt.show()
