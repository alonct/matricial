clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 1
# c)
#   1) 
    n = 6
    A = rand(n,n)
    R = triu(A)
    b = rand(n, 1)
    solveU(R, b)
#   2)
    S = tril(A)
    solveU(A, b)