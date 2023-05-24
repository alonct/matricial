clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 5 - Construye una función function [L,D,R]=LDR(A) que admita como 
# entrada una matriz A, y caso de existir devuelva la factorización única A = LDR 
# donde L es una matriz triangular con unos en la diagonal, D es una matriz 
# diagonal y R es triangular superior con unos en la diagonal. La respuesta de la
# función serán las tres matrices: L, D y R. Comprueba el funcionamiento con una
# matriz diagonal estrictamente dominante.
n = 3;
A = rand(n,n)*10
[L,D,R] = LDR(A)