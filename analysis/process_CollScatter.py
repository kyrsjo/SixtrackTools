import numpy as np
import os,re

#Configuration:
basePath = "/afs/cern.ch/project/lhc_mib/ipac16_2/coll_scatter"
collID   = 54

def processCollScatterFile(fname,getColl):
    fileDType = np.dtype([("coll",np.int),("turn",np.int),("id",np.int),("process",np.int)])
    cs = np.loadtxt(fname,dtype=fileDType,usecols=(0,1,2,3))
    
    initial_collimator = {}
    
    cs_ids = set(cs["id"]) # All unique IDs    
    for ID in cs_ids:
        cs_this = cs[cs["id"]==ID]
        first = cs_this["coll"][0]
        last  = cs_this["coll"][-1]
        
        if last!=getColl:
            continue
        
        if first in initial_collimator.keys():
            initial_collimator[first] +=1
        else:
            initial_collimator[first] = 1
        
    return initial_collimator

initialMap = {}
basePathDir = os.listdir(basePath)
for p1 in basePathDir:
#for p1 in ["1","2","3"]: #For debugging
    p1_long = os.path.join(basePath,p1)
    if not os.path.isdir(p1_long):
        continue
    if not re.match("[0-9]+",p1):
        continue
        
    print p1_long
    p1_results = os.path.join(p1_long,"results")
    p1_dir = os.listdir(p1_results)
    for p2 in p1_dir:
        p2_long = os.path.join(p1_results,p2)
        if not os.path.isdir(p2_long):
            continue
        if not re.match("job_[0-9]+",p2):
            continue
        #print p2_long
        
        collScatterFile = os.path.join(p2_long,"Coll_Scatter_real.dat")
        if not os.path.exists(collScatterFile):
            print "Empty:", p2
            continue
        initialMap_this = processCollScatterFile(collScatterFile,collID)
        if len(initialMap_this) == 0:
            continue
        
        print "Hits!", p2, initialMap_this
        for coll in initialMap_this.keys():
            if coll in initialMap.keys():
                initialMap[coll] += 1
            else:
                initialMap[coll] = 1

print
nHits = 0
for col in initialMap.keys():
    print "Collimator",col, "had", initialMap[col], "hits which eventually ended up in collimator", collID
    nHits = initialMap[col]
print
print "nHits =", nHits
