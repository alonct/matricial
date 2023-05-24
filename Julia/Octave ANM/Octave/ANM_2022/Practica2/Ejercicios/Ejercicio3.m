#Ejercicio 3:

clc
clear all
close all
addpath('./Biblioteca')

display('Aplicamos resolucion a la matriz A y obtenemos la matriz residuo')

format long 

A = [1,1+0.5*10^(-15),3;2,2,20;3,6,4]

[L,U] = LUGaussSinPerm(A)

Matres = A-L*U

display("Como se observa, esa pequeña alteracion al sumar 1/2*10^(-15), trae consigo problemas de calculo al usar LU sin permutar.")
format short