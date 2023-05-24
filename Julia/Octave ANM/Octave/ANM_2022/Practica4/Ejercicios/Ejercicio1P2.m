#Ejercicio 1:

clc
clear all
close all
addpath('./ficherosClase')

display("Usar el programa gramschmidt y gramschmidtPropio y comprobar que funciona con la matriz:")

global ndig = 4;

A=hilb(8)

#Nuestra matriz Q ortogonal:
[Q,R] = gramschmidt(A);

Q
R

Q1 = Q*Q'
Q2 = Q'*Q

display("Si observamos, es A = QR, siendo que al ser Q ortogonal, es por tanto Q' su inversa por la izquierda, por ello, se obtiene la identidad con un error pequeño si hacemos Q'*Q")
display("")

display("La norma de A-QR y :")
NAQR = norm(A-Q*R)
NQQI = norm(Q2-I)

pause
clc

display('Aplicado a Q:')

[Q3,R2] = gramschmidt(Q)
pause

display("Vector Ruido y analiza las identidades A'A=R'R:")

A=[A,1000*eps*rand(8,1)]
A'*A
R'*R

