clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 5

n = 5

# a) 1 <= r <= 5 con r entero
     # The following example returns 150 integers in the range 1–10.
     # ri = randi (10, 150, 1)
     r = randi(5, 1)
     A = zeros(r);
     for i = 1:n
       u = rand(r);
       A = A + u*u';
     endfor
     A
     rank(A)  # = r
     
# b) Justificar resultados