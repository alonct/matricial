#Ejercicio 8

clc
clear all
close all
addpath('./ficherosClase')

A = SPDMat(3)
b = [1;5;2]

[L,x] = solveCholeski(A,b)

L*L'
A*x'