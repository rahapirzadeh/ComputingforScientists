# CS 510 midterm project
# A mathematical model of a small virus infection 

install.packages("deSolve")
library(deSolve)


odeequations=function(t,y,parameters) 
{ 
  Utc=y[1]; Itc=y[2]; Vir=y[3];  #uninfected target cells, infected target cells, virus
  p1=parameters[1]; p2=parameters[2]; p3=parameters[3]; p4=parameters[4]; #parameters
  
  #differential equations
  dUtcdt=-p1*Vir*Utc;
  dItcdt=p1*Vir*Utc-p2*Itc;
  dVirdt=p3*Itc-p4*Vir;

  return(list(c(dUtcdt,dItcdt,dVirdt))); 
  
} 

#main








#plot

