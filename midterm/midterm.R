# CS 510 midterm project
# A mathematical model of a small virus infection over discrete and continuous time models

install.packages("deSolve")
library(deSolve)


odeequations=function(t,y,parameters) 
{ 
  #uninfected target cells, infected target cells, virus
  Utc=y[1]; Itc=y[2]; Vir=y[3]; 
  #parameters
  p1=parameters[1]; p2=parameters[2]; p3=parameters[3]; p4=parameters[4]; 
  
  #differential equations
  dUtcdt=-p1*Vir*Utc;
  dItcdt=p1*Vir*Utc-p2*Itc;
  dVirdt=p3*Itc-p4*Vir;

  return(list(c(dUtcdt,dItcdt,dVirdt))); 
  
} 

#main

#initial number of uninfected target cells 
Utc0=1e8; 
#initial number of infected target cells
Itc0=0; 
#initial condition for free virus V
Vir0=10; 

Y0=c(Utc0, Itc0, Vir0); 

#values for model parameters
p1=1e-8;
p2=2;
p3=1e2;
p4=10;
parameters=c(p1,p2,p3,p4); 

timevec=seq(0,20,0.1); 

odeoutput=lsoda(Y0,timevec,odeequations,parameters);

#discrete time model



#plot

