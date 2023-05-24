clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 1 - Generar códigos nuevos de los tres esquemas donde se tengan en
# cuenta los valores concretos de la matriz, los ceros y los patrones al
# multiplicar y se reduzca lo más posible el uso de memoria. Es decir, donde no
# se use la matriz A en su totalidad sino la mínima información necesaria sobre
# A. Comparar las ganacias en tiempo.
  n = 5
  A = 2*eye(n);
  I = [zeros(1,n-1);-1*eye(n-1)];
  I = [I,zeros(n,1)];
  S = [-1*eye(n-1);zeros(1,n-1)];
  S = [zeros(n,1),S];
  A = I + A + S