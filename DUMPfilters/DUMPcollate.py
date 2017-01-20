import sys
import os

#CONFIGS
PARTS_PER_FILE = 64
MAXPART_PER_FILE = 100000
MAXTURN = 1000000
PRINT_TURNS = 100

DUMPfn = [] #File names we're going to read
DUMPf  = [] #File objects
if len(sys.argv) == 1:
    print "Usage: python DUMPcollate.py file1 file2 ..."
    exit(1)

headers = []
first = True
for fn in sys.argv[1:]:
    if not os.path.isfile(fn):
        print "Warning: file '%s' did not exist." % (fn,)
        continue
    DUMPfn.append(fn)
    f = open(fn,'r')
    DUMPf.append(f)
    
    #Skip headers
    while True:
        fpos = f.tell()
        l = f.readline()
        if not l.strip().startswith("#"):
            f.seek(fpos)
            break
        if first:
            headers.append(l)
    first = False
#print headers

#Open output file
DUMPout=open("DUMP_collated.dat",'w')
for h in headers:
    DUMPout.write(h)

#Copy the data
t = 0
while True: # Loop over turns
    t += 1
    if t > MAXTURN:
        print "WARNING: t = %i > MAXTURN = %i" %(t,MAXTURN)
        break
    if t % PRINT_TURNS == 0:
        print "t=%i"%(t,)
    inFlag = False #Have data?
    for (f,f_idx) in zip(DUMPf,xrange(len(DUMPf))): #Loop over DUMPfiles in that turn
        readpart = 0
        while True: #Loop over particles in that DUMPfile in that turn
            readpart+=1
            if readpart > MAXPART_PER_FILE:
                print "ERROR: readpart = %i > MAXPART = %i" % (readpart,MAXPART_PER_FILE)
                exit(1)
                
            fpos = f.tell()
            l = f.readline()
            ls = l.split()
            if l == '':
                break #No more data in this file
            inFlag = True #Have data!
            thisTurn = int(ls[1])
            if thisTurn == t:
                id = int(ls[0])
                id_new = id + f_idx*PARTS_PER_FILE
                #l = str(id_new) + l[10:]
                l = "%9i%s" % (id_new, l[10:])
                #print l
                DUMPout.write(l)
            else: # Done with this DUMPfile for now
                f.seek(fpos)
                break
    if not inFlag:
        break #no files had data
DUMPout.close()
