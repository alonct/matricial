clear all
clc
%Practica 2
%Ejercicio 2
disp('Ejercicio 2')
A=[2 -1 4 0; 4 -1 5 1; -2 2 -2 3; 0 3 -9 4]
[L,U]=LUfacto(A)
det(A)
B=[3 -2 6 -5; 24 -12 41 -39; -27 18 -62 54; 9 14 15 -47]
[L,U]=LUfacto(B)
det(B)
C=[1 1 0; 2 1 5; 0 3 4]
[L,U]=LUfacto(C)
det(C)
%Ejercicio 3
disp('Ejercicio 3')
clear all
A=[1 2 3 4; 2 5 1 10;3 1 35 5;4 10 5 45]
det(A)
C=Cholesky(A)
b=[1;0;0;0]
X=solveL(C,b)
%Ejercicio 10
disp('Ejercicio 10')
clear all
A=[2 -1 4 0; 4 -1 5 1; -2 2 -2 3; 0 3 -9 4]
[Q,R]=Householdergramschmidt(A)
b=rand(4,1)
X=solveQR(Q,R,b)
%Ejercicio 11
disp('Ejercicio 11')
[L,U]= LUfacto(A)
X=solveLU(L,U,b)
%n=4 -------------------------------------
tic
n=4
T=tridiag(n,-1,2,-1)
for i=1:n
  b(i)=3*(sin(2*pi*((i-1)/(n-1))));
endfor
b
[L,U]=LUfacto(T)
norm(T-L*U)
detA=det(L)*det(U)
solveLU(L,U,b)
t1=toc
%n=5 ---------------------------------------
tic
n=5
T=tridiag(n,-1,2,-1)
for i=1:n
  b(i)=3*(sin(2*pi*((i-1)/(n-1))));
endfor
b
[L,U]=LUfacto(T)
norm(T-L*U)
detA=det(L)*det(U)
solveLU(L,U,b)
t2=toc
%n=10 --------------------------------------   G*G'x=b    G'x=inv(G)*b
tic
n=10
T=tridiag(n,-1,2,-1)
for i=1:n
  b(i)=3*(sin(2*pi*((i-1)/(n-1))));
endfor
b
[L,U]=LUfacto(T)
norm(T-L*U)
detA=det(L)*det(U)
solveLU(L,U,b)
t3=toc
%Ejercicio 14
disp('Ejercicio 14')
clear all
%Apartado c
disp('Apartado c')
##n=10
##b= ones(n,1);
##A=PdSmat(n);
##tic
##[L,U]=LUfacto(A);
##B=inv(L)*b;
##X=BackSub(U,B);
##tlu1=toc
##tic
##G=Cholesky(A);
##B=inv(G)*b;
##X=BackSub(G',B);
##tc1=toc
##n=20
##b= ones(n,1);
##A=PdSmat(n);
##tic
##[L,U]=LUfacto(A);
##B=inv(L)*b;
##X=BackSub(U,B);
##tlu2=toc
##tic
##G=Cholesky(A);
##B=inv(G)*b;
##X=BackSub(G',B);
##tc2=toc
##n=50
##b= ones(n,1);
##A=PdSmat(n);
##tic
##[L,U]=LUfacto(A);
##B=inv(L)*b;
##X=BackSub(U,B);
##tlu3=toc
##tic
##G=Cholesky(A);
##B=inv(G)*b;
##X=BackSub(G',B);
##tc3=toc
##n=100
##b= ones(n,1);
##A=PdSmat(n);
##tic
##[L,U]=LUfacto(A);
##B=inv(L)*b;
##X=BackSub(U,B);
##tlu4=toc
##tic
##G=Cholesky(A);
##B=inv(G)*b;
##X=BackSub(G',B);
##tc4=toc
##n=500
##b= ones(n,1);
##A=PdSmat(n);
##tic
##[L,U]=LUfacto(A);
##B=inv(L)*b;
##X=BackSub(U,B);
##tlu5=toc
##tic
##G=Cholesky(A);
##B=inv(G)*b;
##X=BackSub(G',B);
##tc5=toc
%Ejercicio 16
disp('Ejercicio 16')
clear all
n=5
A=rand(n,n)
[L,D,R]=LDR(A)
%Ejercicio 18
disp('Ejercicio 18')
clear all
n=5
A=PdSmat(5)
b=rand(n,1)
X=solveCholeski(A,b)
