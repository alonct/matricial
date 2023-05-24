clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 5
##A = [1 : 3; 4 : 6; 7 : 9; 10 : 12]
##B = [-1, 2, 3; 4 : 6; 7 : 9; 10 : 12]
##
##C = A'*A
##det(C)
##C(1:2,1:2)
##det(C(1:2,1:2))
##D = A'
##det(D(1:3,1:3))
##B'*B
##det(B'*B)


# Ejercicio 7
##n = 3
##E = rand(n,n)
##F = E'
##eig(E)
##eig(F)

# Ejercicio 6
##n=400;
##tic;
##for j=1:n
##  for i=1:n
##    a(i,j)=cos(i)*sin(j);
##  endfor
##endfor
##t1=toc;
##clear a;
##tic
##a=zeros(n,n);
##for j=1:n
##  for i=1:n
##    a(i,j)=cos(i)*sin(j);
##  endfor
##endfor
##t2=toc;
##clear a;
##tic;
##a=zeros(n,n);
##for i=1:n
##  for j=1:n
##    a(i,j)=cos(i)*sin(j);
##  endfor
##endfor
##t3=toc;
##clear a;
##tic
##a=zeros(n,n);
##a=cos(1:n)'*sin(1:n);
##t4=toc;
##
##t1 # = 1.8767
##t2 # = 1.4382
##t3 # = 1.3978
##t4 # = 6.8688e-04

# Ejercicio 8
n = 3
u = rand(n,1)*10
v = rand(n,1)*10
G = eye(n) + u*v'
v'*u
det(u*v')
eig(G)