clc
clear all
close all
addpath('./Biblioteca')

A = [3 1 -1; 1 -4 2; -2 -2 5]
##T = eye(3) - A
##eig(T)
b = [3;-1;2]
T = [0, 1/3, -1/3;-1/4, 0, -1/2;-2/5, -2/5,0]
c = [1;1/4;2/5]
x = zeros(3,1)
for i = 1:100
  x = T*x+c
endfor

[y, iter, r] = verJacobi(A,b,10^(-20),100,[0;0;0]);
y