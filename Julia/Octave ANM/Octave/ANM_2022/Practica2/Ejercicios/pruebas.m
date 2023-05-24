#Pruebas Ejercicio 1

clc
clear all
close all
addpath('./ficherosClase')

for n = 4:6

  A = rand(n,n)
  R = triu(A)
  S = tril(A)
  b = rand(n,1)

  x = solveU(R,b)
  y = solveL(S,b)
  [L,U,z] = solveLUsinPerm(A,b)

  R*x'
  S*y'
  A*z'
  
  pause
  clc
endfor

A = [1,2,3,4;2,1,3,6;3,8,3,2;0,5,7,4]

[L,D,R] = LDRGauss(A);

L
D
R

L*D*R
pause 

clc
clear all

A = [1,2,3,9,4;0,1,3,5,6;0,3,0,1,2;0,3,0,0,1;1,2,3,4,5]'

L = tril(A)-diag(diag(A))+eye(5)

T = triangInfcuadr(L)
T*T