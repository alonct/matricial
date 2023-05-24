clear all
clc
format long
addpath('./Biblioteca')


%Ejercicio 4
A=[6 -1 2 1; 1 6 1 -1; 0 1 3 1; 1 -2 1 5]
b=[3; 2; -6; 1]
x0=zeros(4,1)
disp('Jacobi')
[XJ,iterJ,rJ]=Jacobi(A,b,1.e-14,50,x0)
contrasteJ=norm(b-A*XJ)/norm(b)
disp('Gauss-Seidel')
[XG,iterG,rG]=GaussSeidel(A,b,1.e-14,50,x0)
contrasteG=norm(b-A*XG)/norm(b)
RJ=JacobiResiduos(A,b,1.e-14,50,x0)
RG=GaussSeidelResiduos(A,b,1.e-14,50,x0)
xJ=1:iterJ;
xG=1:iterG;
figure(1)
plot(xJ,RJ,'*')
legend('Residuos Jacobi')
figure(2)
plot(xG,RG,'*')
legend('Residuos GaussSeidel')
