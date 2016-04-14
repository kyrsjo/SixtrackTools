import numpy as np
import matplotlib.pyplot as plt
import sys,os,re

from matplotlib import rcParams, rc
textwidth=3.25
DPI=300
rc("font", **{"family":"serif", "serif":["Times"], "size":10})
FIGSIZE1=(textwidth,textwidth/2.5)
FIGSIZE2=(textwidth,textwidth/1.618)
rcParams["figure.figsize"]=FIGSIZE1
rcParams.update({"text.usetext":True})

Nparticles = 64*312

fileDType=np.dtype([("name",np.int),("turn",np.int),("s",np.float),("x",np.float),("xp",np.float),("y",np.float),("yp",np.float),("dEE",np.float),("type",np.int),("turnsImpact",np.int)])

def getLossTimes(basepath):
    print "Working in '"+basepath+"'"
    if not os.path.exists(os.path.join(basepath,"LPI_test.s")):
        return None

    lossTurn = {}    

    print "Loading aperLoss"
    aperLoss = np.loadtxt(os.path.join(basepath,"LPI_test.s"),dtype=fileDType)
    print "turnsImpact:"
    print aperLoss["turnsImpact"]
    print aperLoss
    #assert len(aperLoss) == 0
    
    #Read collimator loss data
    nhits_coll = {}
    pos_coll = {}
    nhitsTurn_coll = {}
    print "Loading 'CollPositionsHL.b1.dat'...",
    CollPositions = open(os.path.join(basepath,"CollPositionsHL.b1.dat"),'r')
    for line in CollPositions:
        if line[0] == "%":
            continue
        elif line.strip() == "":
            continue
        ls = line.split()
        collIdx = int(ls[0])
        nhits_coll[collIdx]=0
        pos_coll[collIdx]=float(ls[2])
        #nhitsTurn_coll[collIdx]=np.zeros(lastTurn*2)#make enough room...
    CollPositions.close()
    print "done"

    print "Loading impacts_real.dat..."
    impacts_real = open(os.path.join(basepath,"impacts_real.dat"),'r')
    for line in impacts_real:
        if line[0]=="#":
            continue
        ls = line.split()
        if ls[7] == "4":
            #skip difractive
            continue
        collIdx = int(ls[0])
        turn = int(ls[9])
        
        nhits_coll[collIdx] += 1
        #nhitsTurn_coll[collIdx][turn]+=1
        if turn in lossTurn:
            lossTurn[int(ls[9])] += 1
        else:
            lossTurn[int(ls[9])] = 1
    impacts_real.close()
    print "done!"

    print lossTurn
    
    #Number of turns
    maxturn = max(lossTurn.keys())
    turns = np.arange(1,maxturn+1)
    turns_loss = np.zeros_like(turns,'int')
    for t,n in lossTurn.iteritems():
        turns_loss[t-1]+=n
    
    return (turns,turns_loss)

def getLossTimesScan(inFolder, title):
    fm = []
    fm_folders = []
    for f in os.listdir(inFolder):
        fr = re.match("run_([0-9]+)_Hz",f)
        f2 = os.path.join(inFolder,f)
        if os.path.isdir(f2) and fr:
            fm.append(float(fr.group(1)))
            fm_folders.append(f2)
    #Sort by frequency
    fm_sortidx = np.argsort(fm)
    print fm_sortidx
    fm=[fm[i] for i in fm_sortidx]
    fm_folders=[fm_folders[i] for i in fm_sortidx]
    fm_losses_after = []
    fm_losses_pre = []

    for f in fm_folders:
        ret = getLossTimes(f)
        if ret == None:
            fm_losses_after.append(-1)
            fm_losses_pre.append(-1)
            continue
        (turns,turns_loss) = ret
        
        plt.figure(1, dpi=DPI, figsize=FIGSIZE2)
        plt.step(turns,turns_loss,where='mid')
        
        losses_cum = np.zeros_like(turns_loss)
        cumsum = 0
        for i in xrange(len(turns)):
            cumsum += turns_loss[i]
            losses_cum[i]=cumsum
        fm_losses_pre.append(losses_cum[9])
        fm_losses_after.append(losses_cum[-1]-losses_cum[9])
        
        plt.figure(2, dpi=DPI, figsize=FIGSIZE2)
        plt.step(turns,losses_cum,where='mid')

    #Remove invalid data points
    fm_tmp = []
    fm_folders_tmp = []
    fm_losses_after_tmp = []
    fm_losses_pre_tmp = []
    for i in xrange(len(fm)):
        if fm_losses_after[i] == -1:
            continue
        fm_tmp.append(fm[i])
        fm_folders_tmp.append(fm_folders[i])
        fm_losses_after_tmp.append(fm_losses_after[i])
        fm_losses_pre_tmp.append(fm_losses_pre[i])
    fm = fm_tmp
    fm_folders = fm_folders_tmp
    fm_losses_after = fm_losses_after_tmp
    fm_losses_pre = fm_losses_pre_tmp
        
    if len(fm) > 1:
        plt.figure(10, dpi=DPI, figsize=FIGSIZE2)
        plt.plot(np.asarray(fm)/1e3, np.asarray(fm_losses_after)/(float(Nparticles)-np.asarray(fm_losses_pre))*100, "o--", label=title,ms=3.5)
        #plt.plot(np.asarray(fm)/1e3,    np.asarray(fm_losses_after)/(float(Nparticles)-np.asarray(fm_losses_pre))*100, "--", label=title)
        #plt.scatter(np.asarray(fm)/1e3, np.asarray(fm_losses_after)/(float(Nparticles)-np.asarray(fm_losses_pre))*100, s=10)

if len(sys.argv) < 2:
    print "ERRORRRRRRR!"
    exit(1)

if sys.argv[1] == "S": #single runs, time profile
    for i in xrange(2,len(sys.argv)):
        arg = sys.argv[i]
        if "--" in arg:
            args = arg.split("--")
            fname = args[0]
            title = args[1]
        else:
            fname = arg
            title = arg
        #getLossTimesScan(fname, title)
        (turns,turns_loss) = getLossTimes(fname)

        plt.figure(1, dpi=DPI, figsize=FIGSIZE2)
        plt.step(turns,np.asarray(turns_loss)/float(Nparticles)*100,where='mid',label=title)
        
        losses_cum = np.zeros_like(turns_loss)
        cumsum = 0
        for i in xrange(len(turns)):
            cumsum += turns_loss[i]
            losses_cum[i]=cumsum
        
        plt.figure(2, dpi=DPI, figsize=FIGSIZE2)
        plt.step(turns,np.asarray(losses_cum)/float(Nparticles)*100,where='mid',label=title)

    plt.figure(1)
    plt.ylabel("Fraction lost [%]")
    plt.xlabel("Time [turns]")
    plt.legend(loc=0,prop={"size":8},frameon=False)
    plt.subplots_adjust(left=0.18, bottom=0.18, right=0.95, top=0.96)
    
    plt.figure(2)
    #plt.axvline(10.5,ls="--",color="k",lw=0.75)
    plt.plot((10.5,10.5),(0.0,2.5),color="k",ls="--")
    plt.ylabel("Cumulative loss [%]")
    plt.xlabel("Time [turns]")
    plt.legend(loc=2,prop={"size":8},frameon=False)
    plt.subplots_adjust(left=0.12, bottom=0.18, right=0.95, top=0.96)
    plt.savefig("fracLossTime.png",dpi=DPI)
    
    plt.show()
    
else:
    for i in xrange(1,len(sys.argv)):
        arg = sys.argv[i]
        if "--" in arg:
            args = arg.split("--")
            fname = args[0]
            title = args[1]
        else:
            fname = arg
            title = arg
        getLossTimesScan(fname, title)

    plt.figure(10)
    plt.ylim(0.0, plt.ylim()[1])
    plt.xlabel("$f_m$ [kHz]")
    #plt.ylabel("Fraction of particles lost after failure [%]")
    plt.ylabel("Fraction lost [%]")
    #plt.legend(loc=0,prop={"size":10}, frameon=False,ncol=2,mode="expand")
    #plt.legend(loc=8,prop={"size":10}, frameon=False,ncol=2,mode="expand",labelspacing=0.0,borderaxespad=0)
    plt.legend(loc=9,prop={"size":8}, frameon=False,ncol=2,mode="expand",labelspacing=0.0,borderaxespad=0)
    plt.subplots_adjust(left=0.105, bottom=0.2, right=0.975, top=0.97)
    plt.savefig("fracLoss.png", dpi=DPI)

plt.show()
