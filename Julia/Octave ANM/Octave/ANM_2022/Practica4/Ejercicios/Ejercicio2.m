#Ejercicio2:

clc
clear all
close all

addpath('./ficherosClase')

A = [10,7,8,7;7,5,6,5;8,6,10,9;7,5,9,10]
b = [32;23;33;31]

[Q,R] = gramschmidt(A)

x = solveQR(Q,R,b)

Ap = [10,7,8.1,7.2;7.08,5.04,6,5;8,5.98,9.89,9;6.99,4.99,9,9.98]
bp = [32.1,22.9,33.1,30.9]'

x = solveQR(Q,R,bp)

[Q1,R1] = Householdergramschmidt(A)
