#Ejercicio 1:

clc
clear all
close all
addpath('./ficherosClase')

display('Usando estos codigos analizar lo que ocurre con la siguiente matriz mal condicionada')

A = hilb(25)
A = A(:,1:7)  # Nos quedamos con las columnas de la 1 a la 7

pause

display("El primer comando, lo que hace es generar una matriz simetrica con los elementos de la diagonal principal los inversos de los impares, y los elementos de cada fila son los inverso de los naturales.")
pause

xReal = ones(7,1)

b = A*xReal

display('Cada elemento de cada fila es una suma que tenemos hecha en papel.')
pause 

#Sistema de ecuaciones Normales: A'A*x = A'*b

display("4) Resolvemos comparando diferentes metodos: ")

[x1,x2,x3] = MinL2Comparacion(A,b);

errorChol = norm(x1-x)
errorQR = norm(x1-x)
errorSVD = norm(x1-x)

figure(1)
plot()
