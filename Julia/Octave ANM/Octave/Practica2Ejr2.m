clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 2
# a)
##  n = 600
##  A = rand(n,n);
##  b = rand(n, 1);
##  [L,U,x] = solveLU2param(A, b);
##  # Para calcular U, fija la primera fila de A y trabaja a partir de ahí
##
### b)
##  [L2,U2] = lu(A);
##  # No reordena las filas para que se quede con la forma triangular
##  # U y U2 son distintas, aunque coinciden en la primera fila
##  [L3,U3,P3] = lu(A);
##  
### c)
##  tic
##  det(A)
##  toc
##  tic
##  det(L)*det(U) # Tarda más para números pequeños, pero para grandes es mucho 
##  # más veloz:
##  # n = 600
##  # ans = Inf
##  # Elapsed time is 0.013422 seconds.
##  # ans = Inf
##  # Elapsed time is 0.00144196 seconds.
##  toc
  
# d)
  m = 4
# 1. Definimos Ad
  v = ones(1,m)*2;
  Ad = diag(v);
  Ad(2,1) = -1;
  for i = 2:m-1
    Ad(i-1, i) = -1;
    Ad(i+1, i) = -1;
  endfor
  Ad(m-1,m) = -1;
  Ad
# 2. Definimos el vector b
  for j = 1:m
    bd(j) = 3*sin(2*pi*((j-1)/(m-1)));
  endfor
  bd
# 3. Calcula LU
  [Ld, Ud] = LUdootlittle(Ad)
# 4. Comprueba que ||A-LU|| = 0
  C = Ad - Ld*Ud;
  norm(C) # = 0
# 5. Calcula det(A) usando la factorización
  det(Ld)*det(Ud)
# 6. Resuelve el sistema LUx = b
  x = solveLU(Ld, Ud, bd')  # He tenido que poner b traspuesta porque trabajamos con
  # vectores columna y tenemos un vector fila
# 7. Comprueba también que las matrices L y U de la factorización de esta matriz
# conservan la misma estructura de banda que la matriz de coeficientes