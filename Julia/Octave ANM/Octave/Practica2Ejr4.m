clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 4 - Sea L una matriz triangular inferior con 1 en la diagonal. 
# Escribe una función que proporcione T matriz triangular inferior con 1 en
# diagonal tal que T^2 = L.
  n = 3;
  L = tril(rand(n,n))
  D = cuadradoTriangInf(L)
  D*D