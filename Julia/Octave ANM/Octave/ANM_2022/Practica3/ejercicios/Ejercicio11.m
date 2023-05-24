#Ejercicio 11P3:

clc
clear all 
close all
addpath('./ficherosClase')

display('Hay tres cumbres de altura m1, m2 y m3 cuyas alturas se han medido desde un punto dando valores (en metros) 2474, 3882 y 4834 respectivamente')

A =[1,0,0;0,1,0;0,0,1;-1,1,0;-1,0,1;0,-1,1]
b = [2474;3882;4834;1422;2354;950]

[x1,x2,x3] = MinL2Comparacion(A, b)