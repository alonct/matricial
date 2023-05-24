clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 5 - Construye una funci�n function [L,D,R]=LDR(A) que admita como 
# entrada una matriz A, y caso de existir devuelva la factorizaci�n �nica A = LDR 
# donde L es una matriz triangular con unos en la diagonal, D es una matriz 
# diagonal y R es triangular superior con unos en la diagonal. La respuesta de la
# funci�n ser�n las tres matrices: L, D y R. Comprueba el funcionamiento con una
# matriz diagonal estrictamente dominante.
n = 3;
A = rand(n,n)*10
[L,D,R] = LDR(A)