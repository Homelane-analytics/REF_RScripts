####### General function
optim(c(0), function(x) {(x[1]-1)^2})$par

######## LPP
library(lpSolve)
objfn<- c(20,60)
constr<- matrix(c(30,20,5,10,1,1),ncol = 2, byrow = T)
constrdr <- c("<=","<=",">=")
rhs<- c(2700,850,95)
mod<-lp("max",objfn,constr,constrdr,rhs)
