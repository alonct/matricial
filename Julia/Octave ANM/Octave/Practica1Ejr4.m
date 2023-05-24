clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 4

n = 5;
##r = 100*rand(1)
r = 10^(-20)
p = NonsingularMat(n);
A = p * diag([ones(n - 1, 1); r]) * inv(p)
determinante(A) # = r