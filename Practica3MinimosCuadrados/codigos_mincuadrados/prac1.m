clc
clear all

A = hilb(25);
%% h(i,j) = 1/(i+j-1)
cond(A)
A = A(:,1:7);

%% 1. Estos comandos proporcionan la matriz de hilbert 25x25 y
%% luego la truncan para que se quede de un tamaño 25x7.

x = ones(1,7);

b = A*x'
h = A'*b