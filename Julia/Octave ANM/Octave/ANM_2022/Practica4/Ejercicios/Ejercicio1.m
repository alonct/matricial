#Ejercicio 1:

clc
clear all
close all
addpath('./ficherosClase')

display("Prueba de la funcion propia de GramSchmidt:")

global ndig = 20;

A = rand(10,10)

[B,po] = gramschmidtPropio(A)

po

rank(A)

pause
clc

display("Usar el programa gramschmidt y gramschmidtPropio y comprobar que funciona con la matriz:")

global ndig = 4;

n = 5;
u = 1:n;
u=u';  # Tomamos en disposicion de columna
c2 = cos(2*u); # Vector de cosenos de 2*u para cada entrada u
c = cos(u); # Analogo al de arriba
s = sin(u);

A = [u,c2,ones(n,1),rand(1,n)*c.*c,exp(u),s.*s]

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

A=[A,1000*eps*rand(5,1)]
A'*A
R'*R

