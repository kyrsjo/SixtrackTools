#!/usr/bin/env python
import numpy as np

import sys
if len(sys.argv) ==2:
    seed = int(sys.argv[1])
    print "Got seed =", seed
    np.random.seed(seed)
else:
    seed = 0

npart = 64   #Number of particles to generate
             #Should be divisible by 2!
#machine = "LHC_design_coll"
machine = "LHC_HL"

if machine == "LHC_design_coll":
    E0    = 7e12 #[eV] Nominal beam energy

    betax = 0.55 #[m] 
    betay = 0.55 #[m]
    epsx_n  = 3.75e-6 #[m*rad] Normalized emittance
    epsy_n  = 3.75e-6 #[m*rad] Normalized emittance
    
    rmsZ  = 0.0755   #[m] RMS bunch length
    rmsE  = 1.129e-4 #    RMS energy spread
    
    x0     = 0.0      #Orbit at injection point (x)
    y0     = 0.0      #Orbit at injection point (x)
    xcross = 0.0      #[rad] Crossing angle (x)
    ycross = 142.5e-6 #[rad] Crossing angle (y)

elif machine == "LHC_HL":
    E0    = 7e12 #[eV] Nominal beam energy

    betax = 0.15 #[m] 
    betay = 0.15 #[m]
    epsx_n  = 2.5e-6 #[m*rad] Normalized emittance
    epsy_n  = 2.5e-6 #[m*rad] Normalized emittance
    
    rmsZ  = 0.0755  #[m] RMS bunch length
    rmsE  = 1.13e-4 #    RMS energy spread
    
    x0     = 0.0     #Orbit at injection point (x)
    y0     = 0.0     #Orbit at injection point (x)
    xcross = 0.0     #Crossing angle (x)
    ycross = 590e-6/2.0 #Crossing angle (y)

#General physics parameters
mp = 938.272046e6 #proton mass, eV/c^2
e  = 1.60217657e-19 #C, electron charge
c  = 2.99792485e8   #m/s, speed of light

#Calculate parameters
# Particles should come in packets of 2
assert npart % 2 == 0 
gamma = E0/mp
beta  = np.sqrt(1-gamma**-2)
p0 = np.sqrt((E0-mp)*(E0+mp))#np.sqrt(E0**2-mp**2)
# Geometrical emittance
epsx_g = epsx_n / (beta*gamma)
epsy_g = epsy_n / (beta*gamma)
# Spot size
sigmax = np.sqrt(epsx_g*betax)
sigmay = np.sqrt(epsy_g*betay)
sigmaxp = np.sqrt(epsx_g/betax) #Assuming alpha=0, i.e. at an IP
sigmayp = np.sqrt(epsy_g/betay)

#Printout!
print "Beam:"
print "E0      =", E0,    "[eV]"
print "betax   =", betax, "[m]"
print "betay   =", betay, "[m]"
print "epsx_n  =", epsx_n,"[m*rad]"
print "rmsZ    =", rmsZ,  "[m]"
print "rmsE    =", rmsE,  "[-]"
print
print "Relativistic:"
print "gamma   =", gamma
print "beta    =", beta
print "p0      =", p0,    "[eV/c]"
print "epsx_g  =", epsx_g,"[m*rad]"
print
print "Spot parameters"
print "sigmax  =", sigmax,  "[m]"
print "sigmay  =", sigmay,  "[m]"
print "sigmaxp =", sigmaxp, "[rad]"
print "sigmayp =", sigmayp, "[rad]"


x   = np.zeros(npart)
xp  = np.zeros(npart)
y   = np.zeros(npart)
yp  = np.zeros(npart)
z   = np.zeros(npart)
#dPP = np.zeros(npart)
E   = np.zeros(npart)

if seed == 0:
    #Reference particle at zero
    x  [0] = 0.0+x0
    xp [0] = 0.0+xcross
    y  [0] = 0.0+y0
    yp [0] = 0.0+ycross
    z  [0] = 0.0
    #dPP[0] = 0.0
    E  [0] = E0

#Random generate the rest
if seed == 0:
    firstIdx = 1
else:
    firstIdx = 0

x  [firstIdx:] = np.random.normal(loc=x0,     scale=sigmax,   size=npart-firstIdx)
y  [firstIdx:] = np.random.normal(loc=y0,     scale=sigmay,   size=npart-firstIdx)
xp [firstIdx:] = np.random.normal(loc=xcross, scale=sigmaxp,  size=npart-firstIdx)
yp [firstIdx:] = np.random.normal(loc=ycross, scale=sigmayp,  size=npart-firstIdx)


#Accept/reject method for the longitudinal distribution,
# accept only particles inside of bucket
from longitudinalDyn import longitudinalHamiltonian 
Hclass = longitudinalHamiltonian("HL_coll")
Hmargin = -0.01 #Hamiltonian to accept below
while firstIdx < npart:
    z  [firstIdx:] = np.random.normal(loc=0,      scale=rmsZ,     size=npart-firstIdx)    
    phi = Hclass.omegaRF*z/(c*beta)-np.pi
    E  [firstIdx:] = np.random.normal(loc=E0,      scale=E0*rmsE, size=npart-firstIdx)
    p = np.sqrt((E-mp)*(E+mp))
    dPP = (p-p0)/p0
    
    H = Hclass.calcH(dPP,phi)[0]
    print max(H)
    print min(H)
    
    def hfilter(h):
        #print h
        if h>Hmargin:
            #outside bucket!
            return 0
        else:
            return 1
    Hf = map(hfilter,H)
    if sum(Hf) == npart:
        print "Generation competed!"
        break
    else:
        print "Retrying", npart-sum(Hf), "particles"

    iShift = 0
    for i in xrange(len(H)):
        if not Hf[i]:
            iShift = iShift+1
        
        if i+iShift >= npart:
            z[i] = 0.0
            E[i] = 0.0
        else:
            z[i] = z[i+iShift]
            E[i] = E[i+iShift]
    
    firstIdx = npart-iShift

#Write to file
ofile = open("fort.13", 'w')
for i in xrange(0,npart,2):
    ofile.write(str(x  [i]  *1e3 )+"\n") #mm
    ofile.write(str(xp [i]  *1e3 )+"\n") #mrad
    ofile.write(str(y  [i]  *1e3 )+"\n") #mm
    ofile.write(str(yp [i]  *1e3 )+"\n") #mrad
    ofile.write(str(z  [i]  *1e3 )+"\n") #mm
    ofile.write(str(dPP[i]       )+"\n") #-

    ofile.write(str(x  [i+1]*1e3 )+"\n") #mm
    ofile.write(str(xp [i+1]*1e3 )+"\n") #mrad
    ofile.write(str(y  [i+1]*1e3 )+"\n") #mm
    ofile.write(str(yp [i+1]*1e3 )+"\n") #mrad
    ofile.write(str(z  [i+1]*1e3 )+"\n") #mm
    ofile.write(str(dPP[i+1]     )+"\n") #-

    ofile.write(str(E0*1e-6      )+"\n") #MeV
    ofile.write(str(E  [i]  *1e-6)+"\n") #MeV
    ofile.write(str(E  [i+1]*1e-6)+"\n") #MeV
ofile.close()
