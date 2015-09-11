import numpy as np
import matplotlib.pyplot as plt
import pylab
import matplotlib as mpl

# Read hits
fileDType = np.dtype([("icoll",np.int),("c_rotation",np.float),("s",np.float),("x",np.float),("xp",np.float),("y",np.float),("yp",np.float),("nabs",np.int),("np",np.int),("ntu",np.int)])
fdata = np.loadtxt("impacts_real_TCT.dat",dtype=fileDType)
colls_ID = set(fdata['icoll'])

# Read metadata from collgaps.dat

collgaps = open("collgaps.dat",'r')
colls_name  = {}
colls_angle = {}
colls_halfgap = {}
for line in collgaps.readlines():
    if line[1]=="#":
        continue
    ls = line.split()
    ID = int(ls[0])
    if ID in colls_ID:
        colls_name[ID]=ls[1]
        colls_angle[ID]=float(ls[2])
        colls_halfgap[ID]=float(ls[5])
collgaps.close()

print colls_name
print colls_angle
print colls_halfgap


# Plot!
nBins = 500
nBins2D = 200
for col in colls_ID:
    print col, colls_name[col]
    #sHist = ROOT.TH1D("","",0,
    c_rotation = []
    s = []
    x = []
    xp = []
    y = []
    yp = []
    
    for row in fdata:
        if row['icoll']==col:
            #print row
            c_rotation.append(row['c_rotation'])
            s.append(row['s'])
            x.append(row['x'])
            xp.append(row['xp'])
            y.append(row['y'])
            yp.append(row['yp'])
    c_rotation = np.asarray(c_rotation)
    s = np.asarray(s)
    x = np.asarray(x)
    xp = np.asarray(xp)
    y = np.asarray(y)
    yp = np.asarray(yp)

    
    #plt.figure(1)
    #plt.title("CollID = "+str(col)+" ( "+colls_name[ID]+" ) nHits= "+str(len(s)))
    #plt.hist(c_rotation,nBins)
    #plt.xlabel("c_rotation")

    plt.figure()
    plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
    plt.hist(s,nBins)
    plt.xlabel("s")
    plt.savefig("plotImpactsTCT_"+colls_name[col]+"_s.png",dpi=120)
    
    print colls_angle[col], "->",
    if colls_angle[col] == 0.0:
        #Horizontal (x) collimator
        print "HOR!"
        
        plt.figure()
        plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        plt.hist(x,nBins)
        plt.axvline( colls_halfgap[col]*1e3,ls="--",color='k')
        plt.axvline(-colls_halfgap[col]*1e3,ls="--",color='k')
        plt.xlabel("x [mm]")
        plt.savefig("plotImpactsTCT_"+colls_name[col]+"_x.png",dpi=120)

        #plt.figure()
        #plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        #plt.hist(xp,nBins)
        #plt.xlabel("xp")
        #plt.savefig("plotImpactsTCT_"+colls_name[col]+"_xp.png",dpi=120)

        plt.figure()
        plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        pylab.hist2d(x,xp,nBins2D,norm=mpl.colors.LogNorm())
        plt.colorbar()
        plt.xlabel("x [mm]")
        plt.ylabel("xp")
        plt.savefig("plotImpactsTCT_"+colls_name[col]+"_x-xp.png",dpi=120)

        plt.figure()
        plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        plt.scatter(s,x)
        plt.xlabel("s [m]")
        plt.ylabel("x [mm]")
        plt.savefig("plotImpactsTCT_"+colls_name[col]+"_s-x.png",dpi=120)

        plt.figure()
        plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        pylab.hist2d(s,x,nBins2D,norm=mpl.colors.LogNorm())
        plt.colorbar()
        plt.xlabel("s [m]")
        plt.ylabel("x [mm]")
        plt.savefig("plotImpactsTCT_"+colls_name[col]+"_s-x_hist.png",dpi=120)
        
        plt.figure()
        plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        depth = np.abs(x) - colls_halfgap[col]*1e3
        plt.hist(depth,nBins, range=(0.0,max(depth)))
        #print min(depth), max(depth)
        if min(depth) < 0.0:
            print "WARNING, hits outside collimator jaw!"
        plt.xlabel("Impact depth [m]")
        plt.yscale('log', nonposy='clip')
        plt.savefig("plotImpactsTCT_"+colls_name[col]+"_depth.png",dpi=120)
        
    elif abs(colls_angle[col]-np.pi/2.0) < 0.001:
        #Vertical (y) collimator
        print "VERT!"
        
        plt.figure()
        plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        plt.hist(y,nBins)
        plt.axvline( colls_halfgap[col]*1e3,ls="--",color='k')
        plt.axvline(-colls_halfgap[col]*1e3,ls="--",color='k')
        plt.xlabel("y")
        plt.savefig("plotImpactsTCT_"+colls_name[col]+"_y.png",dpi=120)

        #plt.figure()
        #plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        #plt.hist(yp,nBins)
        #plt.xlabel("yp")
        #plt.savefig("plotImpactsTCT_"+colls_name[col]+"_yp.png",dpi=120)
        
        plt.figure()
        plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        pylab.hist2d(y,yp,nBins2D,norm=mpl.colors.LogNorm())
        plt.colorbar()
        plt.xlabel("y")
        plt.ylabel("yp")
        plt.savefig("plotImpactsTCT_"+colls_name[col]+"_y-yp.png",dpi=120)
        
        plt.figure()
        plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        plt.scatter(s,y)
        plt.xlabel("s")
        plt.ylabel("y")
        plt.savefig("plotImpactsTCT_"+colls_name[col]+"_s-y.png",dpi=120)
        
        plt.figure()
        plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        pylab.hist2d(s,y,nBins2D,norm=mpl.colors.LogNorm())
        plt.colorbar()
        plt.xlabel("s")
        plt.ylabel("y")
        plt.savefig("plotImpactsTCT_"+colls_name[col]+"_s-y_hist.png",dpi=120)        

        plt.figure()
        plt.title("CollID = "+str(col)+" ( "+colls_name[col]+" ) nHits= "+str(len(s)))
        depth = np.abs(y) - colls_halfgap[col]*1e3
        plt.hist(depth,nBins,range=(0.0,max(depth)))
        if min(depth) < 0.0:
            print "WARNING, hits outside collimator jaw!"
            print "  min(depth) =", min(depth)
            print "  num < 0.0 =", (depth < 0.0).sum()
            print "  Values:"
            print "  ", depth[depth < 0.0]
        plt.xlabel("Impact depth [mm]")
        plt.yscale('log', nonposy='clip')
        plt.savefig("plotImpactsTCT_"+colls_name[col]+"_depth.png",dpi=120)

    else:
        print "UNKNOWN ORIENTATION?!?"

plt.show()
