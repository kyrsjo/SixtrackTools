import sys

if len(sys.argv) != 2:
    print "Usage: DUMPfilter_filterID ID"
    print "The program expects input in DUMP format #2 on STDIN,"
    print "and will write the comment lines + lines where the particleID matches to stdout"
    print
    print "Example usage:"
    print "cat ALL_DUMP.dat | python ~/path/to/DUMPfilter_filterID.py 42 > ALL_DUMP.filter.dat"
    print
    print "Example usage2:"
    print "cat ALL_DUMP.dat | python ~/path/to/DUMPfilter_filterS.py 0 1042 | python ~/path/to/DUMPfilter_filterID.py > ALL_DUMP.filter.dat"
    print
    exit(1)

ID = int(sys.argv[1])

while True:
    line = sys.stdin.readline()
    if line == "":
        break
    elif line.startswith(" #"):
        print line,
        continue
    
    thisID = float(line.split()[0])
    if thisID == ID:
        print line,

