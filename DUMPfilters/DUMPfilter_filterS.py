import sys

if len(sys.argv) != 3:
    print "Usage: DUMPfilter_filterS lowS hiS"
    print "The program expects input in DUMP format #2 on STDIN,"
    print "and will write any comment lines where s \in [lowS,hiS] to stdout"
    print
    print "Example usage:"
    print "cat ALL_DUMP.dat | python ~/path/to/DUMPfilter_filterS.py 0 10 > ALL_DUMP.filter.dat"
    print
    exit(1)

lowS = float(sys.argv[1])
hiS  = float(sys.argv[2])

while True:
    line = sys.stdin.readline()
    if line == "":
        break
    elif line.startswith(" #"):
        print line,
        continue
    
    s = float(line.split()[2])
    if s >= lowS and s<= hiS:
        print line,

