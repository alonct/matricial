clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 8 - Construye una funci�n function [L,x] = solveCholeski(A,b) que
# tenga como entrada una matriz sim�trica definida positiva A y un vetor b y
# devuelva una matriz triangular inferior L que da la factorizaci�n de Choleski
# A = L Lt junto con la soluci�n del sistema lineal Ax = b. Si A no es definida 
# positiva lo comprobaremos en la construcci�n de L y mandaremos un mensaje de error.
  n = 3;
  A = spdMat(n)
  b = rand(n,1)
  [L,x] = solveCholeski(A,b)