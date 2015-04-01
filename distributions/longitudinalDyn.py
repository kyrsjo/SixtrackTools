import numpy as np
import matplotlib.pyplot as plt

mp = 0.938272046e9 #proton mass, eV/c^2
e  = 1.60217657e-19 #C, electron charge
c  = 2.99792485e8   #m/s, speed of light

#machine = "LHC_coll"
machine = "HL_coll"
print machine

h       = 35640    #RF harmonic number
omegaRF = 400.8e6*np.pi*2    #Hz, omegaRF = h*omega0
omega0  = omegaRF/h
if machine == "LHC_coll":
    slip    = 3.225e-4 #Slip factor @ collission
    V       = 16e6     #V, RF voltage @ collission
elif machine == "HL_coll":
    slip    = 3.467e-4 #Slip factor @ collission
    V       = 16e6     #V, RF voltage @ collissions

beta    = 1.0      # Relativistic beta

phiS    = 0.0#np.pi #Radians, synchronous RF phase

E0      = 7e12 #Beam energy, eV
p0      = np.sqrt(E0**2-mp**2) #Beam momentum, eV/c

delta = np.linspace(-1e-3, 1e-3,200) #delta p / p
phi   = np.linspace(-3*np.pi,1*np.pi,200)
DELTA,PHI = np.meshgrid(delta,phi)

p = p0*(1.0+DELTA) #eV/c
E = np.sqrt(p**2 + mp**2)

DELTA_E = E/E0-1

#print omega0
#print E

H1 = 0.5*omegaRF*slip*DELTA**2
H2 = omega0*V/(2*np.pi*beta**2*E)*(np.cos(PHI)-np.cos(phiS)+(phi-phiS)*np.sin(phiS))

H = H1+H2

def label():
    plt.xlabel(r"$\phi$")
    plt.ylabel(r"$\Delta E/E$")
    plt.colorbar()
    
    plt.axvline(0.0,color='k',ls='--')
    plt.axvline(np.pi,color='k',ls='--')
    plt.axvline(-np.pi,color='k',ls='--')
    plt.axhline(0.0,color='k',ls='--')

PHIp = PHI+np.pi #above transition energy

plt.figure(1)
plt.title("$H_1$")
plt.pcolor(PHIp,DELTA_E,H1)
label()
plt.figure(2)
plt.title("$H_2$")
plt.pcolor(PHIp,DELTA_E,H2)
label()
plt.figure(3)
plt.title("$H = H_1 + H_2$")
plt.pcolor(PHIp,DELTA_E,H)
label()
plt.figure(4)
plt.title("$H = H_1 + H_2$")
plt.contour(PHIp,DELTA_E,H,40)
label()

#Now: Plot generated longitudinal distribution
if machine=="LHC_coll":
    sigma_dE_E = 1.129e-4
    sigma_z    = 7.55e-2 #[m]
elif machine=="HL_coll":
    sigma_dE_E = 1.13e-4
    sigma_z    = 7.55e-2 #[m]

DEE,DZ = np.random.multivariate_normal((0.0,0.0),((sigma_dE_E**2,0.0),(0.0,sigma_z**2)),1000).T
PHIZ = omegaRF*DZ/c/beta
plt.scatter(PHIZ,DEE, marker='+')

#plt.figure(5)
#plt.hist(DEE,30,normed=True)
#x = np.linspace(max(DEE),min(DEE))
#plt.plot(x,np.exp(-x**2/(2*sigma_dE_E**2))/np.sqrt(2*np.pi)/sigma_dE_E)
#plt.scatter(DZ,DEE)

plt.show()
