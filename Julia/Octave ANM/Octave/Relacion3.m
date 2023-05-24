clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 1
n = 8
##A = rand(n, n); 
##A = triu(A) - diag(diag(A))
##for i = 2:10
##  display(i)
##   A^i
##endfor

# Ejercicio 2
##A2 = [29, -12, -2, -5; 48, -20, -4, -8; -22, 13, 6, 0; 30, -13, -2, -4]
##eig(A2)
##
##P = [1, 2, 2, 1; 2, 3, 3, 2; -1, 1, 2, -2; 1, 3, 2, 1];
##D = [2, 1, 0, 0; 0, 2, 1, 0; 0, 0, 3, 0; 0, 0, 0, 4];
##A = P * D * inv(P);
##eig(A)
##r= max(abs(eig(matriz))) # calculamos radio espectra de A

# Ejercicio 4
##A = [10 7 8 7;7 5 6 5;8 6 10 9;7 5 9 10]
##[V,D] = eig(A) 
##V'*V

# Ejercicio 5
##A = [1 -1 4;2 -2 0;3 -3 5;-1 -1 0];
##pinv(A)
##pinv(A)*A
##A*pinv(A)
##A*pinv(A)*A 
##pinv(A)*A*pinv(A)