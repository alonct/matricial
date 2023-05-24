clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 3 - Considera el sistema sobre determinado Ax = b con A ? Mm×n, 
# x ? R^n y b ? R^m (vectores columna). La aproximación al espacio de soluciones,
# x minimiza las distancias ||b ? At||_2 con t ? R^n. Encuentra la expresión de
# x en términos de la factorización SVD de A:
# [U, S, V] = svd(A), que cumple A = U * S * V'
# haciendo multiplicaciones por U y U' y divisiones por los valores singulares.
m = 3;
n = 6;
A = rand(m,n);
b = rand(m,1);
B = A'*A;
c = A'*b;
x = solveSVD(B,c)