# This script runs Sixtrack (non-collimation version) multiple times, with different input distributions (from makeDist_fort13.py), doing a smart concatenation of the DUMP files.

import subprocess
import os,sys

sixtrackExec  = "SixTrack_4520_cernlib_crlibm_gfortran_O4"
generatorExec = "makeDist_fort13.py"

if len(sys.argv) == 2:
    nRuns = int(sys.argv[1])
else:
    nRuns = 20

dumpFiles = ["DUMP_ip1.dat","DUMP_ip5.dat"]
dumpConcat = []

#Do runs
for rIdx in xrange(nRuns):
    print "rIdex =", rIdx
    print "Generating input data..."
    generatorFile = open("genlog.out."+str(rIdx),'w')
    subprocess.check_call(["python", generatorExec, str(rIdx)],stdout=generatorFile)
    generatorFile.close()

    print "Running '"+sixtrackExec +"'..."
    sixtrackFile = open("sixlog.out."+str(rIdx),'w')
    subprocess.check_call(["./"+sixtrackExec],stdout=sixtrackFile)
    sixtrackFile.close()

    for (d,dIdx) in zip(dumpFiles,xrange(len(dumpFiles))):
        if rIdx == 0:
            dumpConcat.append( open(d+".MULTI",'w') )
        df = open(d,'r')

        for l in df.readlines():
            #print l
            if l.strip().startswith("#"):
                if rIdx == 0:
                    dumpConcat[dIdx].write(l)
                continue
            pID = int(l.split()[0])
            #print pID
            pID = pID + rIdx*64
            lout = "%9d" % (pID,) + l[10:]
            
            dumpConcat[dIdx].write(lout)

        #os.rename(d,d+"."+str(rIdx))
      
#Close concatenated files  
for df in dumpConcat:
    df.close()
