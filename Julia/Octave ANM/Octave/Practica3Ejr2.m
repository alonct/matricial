clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 2 - Sea A la matriz 10 � n formada por las primeras columnas de la
# matriz de Hilbert 10�10, sea c el vector de entradas [1, 1, ..., 1] y establezca
# b = Ac. Usar las ecuaciones normales y resolver el problema de m�nimos cuadrados
# Ax = b para n = 6 y n = 8.
# �Cu�ntas posiciones correctas se pueden obtener? Usar el n�mero de condici�n
# para explicar el resultado. Aplicar la factorizaci�n QR para resolver los problemas
# y comparar.
  n = 6;
  A = hilb(100);
  A = A(1:10, 1:n)
  c = ones(n,1);
  b = A*c
  B = A'*A;
  d = A'*b
  [x1,x2,x3] = MinL2Comparacion(B,d);
##  B*x2 = d
##  B*x3 = d