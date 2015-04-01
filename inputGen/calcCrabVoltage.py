#Simply calculate the correct crab cavity voltage
# Equation (1) from "Particle trajectories in a four rod crab cavity" by D.R. Brett et al, NIM A 2012
# Current values taken from twiss output for HL-LHC 1.1 in collission
# betaCrab and mu values are somewhat approximate...

import numpy as np

E0 = 7e12          #eV
mp = 938.272046e6 #proton mass, eV/c^2
e  = 1.60217657e-19 #C, electron charge
c  = 2.99792485e8   #m/s, speed of light

p0 = np.sqrt((E0-mp)*(E0+mp))   #eV/c
omega = 2.0*np.pi*400.7896026e6 #radians/sec

def calcVoltage(betaStar,betaCrab,thetaFull,mu):
    return c * p0 * np.tan(thetaFull/2.0) / \
        ( omega * np.sqrt(betaStar*betaCrab) * np.sin(mu) )

#IP1
print "IP1, right hand"
V_r1 = calcVoltage(0.15,np.mean((3796,3755,3545,3506)),590e-6,0.252*2*np.pi)
print "Total =", V_r1/1e6, "[MV]"
print "Per cavity =", V_r1/1e6/4.0, "[MV]"

print "IP1, left hand"
V_l1 = calcVoltage(0.15,np.mean((2793,2890,3432,3540)),590e-6,(60.32005-60.0680)*2*np.pi)
print "Total =", V_l1/1e6, "[MV]"
print "Per cavity =", V_l1/1e6/4.0, "[MV]"


#IP5

