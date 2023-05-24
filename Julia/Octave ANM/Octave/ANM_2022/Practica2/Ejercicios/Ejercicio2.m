#Ejercicio 2:

clc
clear all
close all
addpath('./ficherosClase')

display('a) Comprueba tus funciones usando rand, triu y tri:')

for i=1:6
  
  if i == 1 || i == 3
    A = rand(i+2,i+2)
    b = rand(i+2,1)
    [L,U,z] = solveLUsinPerm(A,b)
    A*z'
   elseif i == 2 || i == 4
    A = rand(i+1,i+1);
    A = triu(A)
    b = rand(i+1,1)
    [L,U,z] = solveLUsinPerm(A,b)
    A*z'
  elseif i == 5 || i ==6
    A = rand(i,i);
    A = tril(A)
    b = rand(i,1)
    [L,U,z] = solveLUsinPerm(A,b)
    A*z'
  endif 
  pause
  clc
endfor

#-----------------------------------------------------------------------------------------------------------------

display('b) Funcionamiento de las internas de octave: ')

A = rand(3,3)

[L,U] = lu(A)
[L1,U1] = LUGaussSinPerm(A)
[L2,U2,P2] = lu(A)

detA1 = det(L1)*det(U1)
detA = det(L2)*det(U2)
detReal = det(A)