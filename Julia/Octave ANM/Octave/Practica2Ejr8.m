clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 8 - Construye una función function [L,x] = solveCholeski(A,b) que
# tenga como entrada una matriz simétrica definida positiva A y un vetor b y
# devuelva una matriz triangular inferior L que da la factorización de Choleski
# A = L Lt junto con la solución del sistema lineal Ax = b. Si A no es definida 
# positiva lo comprobaremos en la construcción de L y mandaremos un mensaje de error.
  n = 3;
  A = spdMat(n)
  b = rand(n,1)
  [L,x] = solveCholeski(A,b)