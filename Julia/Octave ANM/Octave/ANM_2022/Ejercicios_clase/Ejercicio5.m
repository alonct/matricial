#Ejercicio 5:

clc
clear all

A = [1:3;4:6;7:9;10:12]
B = [-1 2 3;4:6;7:9;10:12]

C = A'*A
D = B'*B

rank(C)
rank(D)