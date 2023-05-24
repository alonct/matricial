clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 2

A = [10, 7, 8, 7;
      7, 5, 6, 5;
      8, 6, 10, 9;
      7, 5, 9, 10] 
b = [32; 23; 33; 31]
# Ax = b tiene como solución x = (1, 1, 1, 1)'
A2 = [10, 7, 8.1, 7.2;
      7.08, 5.04, 6, 5;
      8, 5.98, 9.89, 9;
      6.99, 4.99, 9, 9.98] 
b2 = [32.1; 22.9; 33.1; 30.9]
x = solveCramer(A2, b)  # x = (-81, 137, -34, 22)
x2 = solveCramer(A, b2) # x2 = (9.2, -12.6, 4.5, -11)
# Se ve que los errores en los coeficientes de A afectan más
# a la estabilidad del problema pues es con lo que se calculan
# los determinantes, en los que se hacen sumas y productos que 
# son sensibles a cualquier clase de error
