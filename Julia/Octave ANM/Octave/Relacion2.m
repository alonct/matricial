clc
clear all
close all
addpath('./Biblioteca')

##A = [25,15,-5;15,18,0;-5,0,11]
##A^2
##x = rand(1,3)
##x*A*x'
##
### Ejercicio 12
##B = [4,1,1,1;1,3,-1,0;1,-1,2,0;1,0,0,2]
##[L, U] = LUdootlittle(B)


# Ejercicio 13 - Representación en punto flotante: Usar los siguientes comandos
# y comentar los resultados:
  # a) Precisión.
##    a=eps
##    b=0.5*eps;
##    X=[2,1; 2,1];
##    A=[2,1; 2,1+a];
##    norm(A-X)
##    B=[2,1; 2,1+b];
##    norm(X-B)
  # b) Acotaciones para números de punto flotante
##    rM=realmax,
##    1.0001*rM,
##    rm=realmin,
##    .0001*rm
  # c) Infinity y NaN (Not a Number)
##    A=[1 2 0 3];
##    B=1./A,
##    isinf(B), 
##    C=A.*B
  # d) Singular o no?
    A=[1 1; 1 1+eps];
    inv(A), 
    rank(A)
    B=[1 1; 1 1+.5*eps];
    inv(B),
    rank(B)