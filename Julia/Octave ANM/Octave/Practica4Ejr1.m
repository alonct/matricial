clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 1 
##n = 5;
##u = 1:n;
##u = u';
##c2 = cos(2*u);
##c = cos(u);
##s = sin(u);
##A = [u, c2, ones(n,1), rand()*c.*c, exp(u), s.*s];
##AG = gramschmidt(A);
##AG * AG'
##AG' * AG # En la diagonal tiene 1

##k = 6;
##B = hilb(k);
##BG = gramschmidt(B);
##BG * BG'
##BG' * BG

##C = rand(floor(10*rand(1))+1,floor(10*rand(1))+1);
##gramschmidt(C)

D = [1,3,-5,2,8,2;5,-2,-1,8,1,-3;4,3,-16,23,29,-4;9,2,-1,-1,7,4];
[Q,R] = gramschmidt(D);
Q * Q';
Q' * Q;
norm(D - Q * R) # = 9.9817e-16 (~ 0 :) )
norm(Q' * Q - eye(6)) #  = 2.3934
[Q2, R2] = gramschmidt(Q);

D = [D, 1000*eps*rand(4,1)];
D'*D # última fila y columna aprox 0
[Q,R] = gramschmidt(D);
R'*R # igual antes

##E =[1,3,-5,2,8,2; 5,-2,-1,8,1,-3; 4,3,-16,23,19,-4; 9,2,-1,-1,7,4]
##gramschmidt(E)