clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 3 - Aplicar la resolución mediante la factorización LU a la matriz
A = [1, 1 + 0.5*10^(-15), 3; 2, 2, 20; 3, 6, 4]
# y obtener la matriz residuo A - LU
  [L,U] = LUGaussSinPerm(A)
  A - L*U