import numpy as np
import matplotlib.pyplot as plt

import util #From Andrea's library https://github.com/KFubuki/Toolkit

alpha_y = -0.000764
beta_y  = 0.150235

orb_y = 0.0
orbp_y = 295e-6

E = 7e12
gamma_rel, beta_rel, p0, mass = util.get_rel_params(E)

eps   = 2.5e-6 #[m*rad]
eps_g = eps/(beta_rel*gamma_rel) #[m*rad]

print "eps=",eps, "eps_g=",eps_g

plot_maxsig = 10.0
gamma_y = (1+alpha_y**2)/beta_y

coll_nsig = 5.7*np.sqrt(3.5e-6/eps)
print "coll_nsig =",coll_nsig, "(effective at eps=",eps,", reference nsig=5.7)"

def do_floquet(x,xp, alpha,beta):
    "Floquet transform"
    return (x/np.sqrt(beta), (x*alpha)/np.sqrt(beta) + xp*np.sqrt(beta))
def do_floquet_inverse(x2,xp2,alpha,beta):
    "Inverse floquet transform"
    return (x2*np.sqrt(beta), -(x2*alpha)/np.sqrt(beta) + xp2/np.sqrt(beta))
def calc_r(x2,xp2):
    "Calculate radius of particle in normalized phase space in units of sigma"
    return np.sqrt(x2**2+xp2**2)/np.sqrt(eps_g)

(y, yp, z) = np.loadtxt("dump.txt", usecols=(5, 6, 7), unpack=True, dtype=float)
t = np.loadtxt("dump.txt", usecols=(1,), unpack=True, dtype=int)

y  *=1e-3 #[mm]->[m]
yp *=1e-3 #[mrad]->[rad]
(y2,yp2) = do_floquet(y-orb_y, yp-orbp_y, alpha_y, beta_y)
r2 = calc_r(y2,yp2)

def plotEllipse(sigma,alpha,beta, orb,orbp):
    #Calculate the ellipse in normalized coordinates
    theta = np.linspace(0,2*np.pi)
    x2_c = sigma*np.sqrt(eps_g)*np.cos(theta)
    xp2_c = sigma*np.sqrt(eps_g)*np.sin(theta)
    #Convert to non-normalized coordinates
    (x_c,xp_c)=do_floquet_inverse(x2_c,xp2_c,alpha,beta)
    x_c += orb
    xp_c += orbp
    plt.plot(x_c,xp_c,'k')

TIME = []
sigma_all = []
sigma_tail = []
sigma_center = []
sigma_head = []
    
for i in xrange(1,max(t)+1):
    TIME.append(i)
    
    # Centroid
    y_mean = np.mean(y[t==i])
    yp_mean = np.mean(yp[t==i])

    y2_mean = np.mean(y2[t==i])
    yp2_mean = np.mean(yp2[t==i])
    sigma_all.append( calc_r(y2_mean,yp2_mean) )
    
    #TODO: Check if head/tail is switched
    y2_tail_mean    = np.mean(y2 [np.logical_and(t==i, z<-50)])
    yp2_tail_mean   = np.mean(yp2[np.logical_and(t==i, z<-50)])
    sigma_tail.append( calc_r(y2_tail_mean,yp2_tail_mean) )
    
    y2_center_mean  = np.mean(y2 [np.logical_and(np.logical_and(t==i, z>-50),z<50)])
    yp2_center_mean = np.mean(yp2[np.logical_and(np.logical_and(t==i, z>-50),z<50)])
    sigma_center.append( calc_r(y2_center_mean,yp2_center_mean) )
    
    y2_head_mean    = np.mean(y2 [np.logical_and(t==i, z>50)])
    yp2_head_mean   = np.mean(yp2[np.logical_and(t==i, z>50)])
    sigma_head.append( calc_r(y2_head_mean,yp2_head_mean) )
    
    #Particle distribution
    plt.figure(1)
    plt.clf()
    #plt.scatter(y[t==i],yp[t==i],c=r2[t==i])
    plt.scatter(y[t==i],yp[t==i],c=z[t==i])

    for j in xrange(1,int(np.floor(plot_maxsig))):
        plotEllipse(j,alpha_y,beta_y,orb_y,orbp_y)
        pass
    plt.colorbar().set_label("z [mm]")
    plt.plot((y_mean,),(yp_mean,),"r*",markersize=15)
    
    plt.axis((orb_y-plot_maxsig*np.sqrt(eps_g*beta_y),orb_y+plot_maxsig*np.sqrt(eps_g*beta_y),orbp_y-plot_maxsig*np.sqrt(eps_g*gamma_y),orbp_y+plot_maxsig*np.sqrt(eps_g*gamma_y)))

    plt.xlabel("y [m]")
    plt.xlabel("yp [rad]")
    plt.title("turn=%i"%i)
    
    plt.savefig("fig/yyp_%05i.png"%(i,),dpi=150)
    
    plt.figure(2)
    plt.clf()
    plt.scatter(y2[t==i],yp2[t==i],c=z[t==i])
    for j in xrange(1,int(np.floor(plot_maxsig))):
        plotEllipse(j,0.0,1.0,0.0,0.0)
    plt.colorbar().set_label("z [mm]")
    plt.axis((-plot_maxsig*np.sqrt(eps_g),plot_maxsig*np.sqrt(eps_g),-plot_maxsig*np.sqrt(eps_g),plot_maxsig*np.sqrt(eps_g)))
    
    plt.plot((y2_mean,),(yp2_mean,),"r*",markersize=15)
    plt.plot((y2_center_mean,),(yp2_center_mean,),"gp",markersize=15)
    plt.plot((y2_tail_mean,),(yp2_tail_mean,),"bh",markersize=15)
    plt.plot((y2_head_mean,),(yp2_head_mean,),"bh",markersize=15)

    
    plt.xlabel("Normalized y [m]")
    plt.xlabel("Normalized yp [rad]")
    plt.title("turn=%i"%i)
    
    plt.savefig("fig/norm_yyp_%05i.png"%(i,),dpi=150)
    
    plt.figure(3)
    plt.clf()
    plt.hist(r2[t==i],normed=True,bins=50,label="Observed")
    r2_xax = np.linspace(0,np.max(r2[t==i]))
    r2_expProb = r2_xax*np.exp(-r2_xax**2/2.0) #2D gaussian, sigma=1, integrate out theta -> f(r)
    plt.plot(r2_xax, r2_expProb, label="Expected / initial")

    plt.axvline(coll_nsig,color="k",ls="--",label="Collimator")
    
    plt.xlabel("y-yp population distribution [sigma]")
    plt.title("turn=%i"%i)
    plt.legend()
    
    plt.savefig("fig/popdist_yyp_%05i.png"%(i,),dpi=150)

    plt.figure(4)
    plt.clf()
    plt.scatter(z[t==i],r2[t==i])

    plt.axhline(coll_nsig,color="k",ls="--",label="Collimator")
    
    plt.xlabel("z [mm]")
    plt.ylabel("Amplitude [sigma]")
    plt.title("turn=%i"%i)

    plt.savefig("fig/zr2_%05i.png"%(i,),dpi=150)
    
    #plt.show()

print
print "#Turn sigma_all    sigma_tail   sigma_center sigma_head"
for i in xrange(len(TIME)):
    print "%5i %10e %10e %10e %10e" % (TIME[i],sigma_all[i],sigma_tail[i],sigma_center[i],sigma_head[i])
    #print "%5i %10e" % (TIME[i],sigma_all[i])
    
plt.figure()
plt.plot(TIME,sigma_all,label="all")
plt.plot(TIME,sigma_tail,"--",label="tail")
plt.plot(TIME,sigma_center,"--",label="center")
plt.plot(TIME,sigma_head,"--",label="head")
plt.legend(loc=0)

plt.savefig("fig/timeSigmas.png")
    
plt.show()
