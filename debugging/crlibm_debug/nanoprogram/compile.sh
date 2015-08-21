gcc nanoprogram.c -o nanoprogram_$(gcc -dumpversion) -DLINUX_INLINE -DHAVE_CONFIG_H -I. -fPIC -std=c99 -Wall -Wshadow -Wpointer-arith  -Wcast-align -Wconversion -Waggregate-return -Wstrict-prototypes -Wnested-externs -Wlong-long -Winline -pedantic -fno-strict-aliasing -g -O1 -m32

# source /afs/cern.ch/sw/IntelSoftware/linux/all-setup.sh ia32
# icc nanoprogram.c -o nanoprogram_icc
