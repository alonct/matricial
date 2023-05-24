#EJERCICIO 5P3

clc
clear all
close all

addpath('./ficherosClase')

display("5) En los procesos adiabáticos de los gases, la presion P y el volumen V siguen la ley PV^(landa) = C, donde C es una constante a lo largo del proceso.")

u = ones(6,1)
V = [1/2;1;3/2;2;5/2;3];
P = [1.62;1;0.75;0.63;0.53;0.46];

v = log(V)
b = log(P)

A = [u,v]


pause 

MinL2Comparacion(A, b)
pause

clc 
MinL2Comparacion(A'*A, A'*b)

display("")
display("Por ello, despejando las soluciones:")


#Choleski, QR y SVD:

[x1,x2,x3] = MinL2Comparacion(A, b)

#CHOLESKI VERSION
lan = -x1(2)
c = e^(x1(1))
Vaprox = power((c./(P)),(1/lan));
figure(1)
plot(P,V,'o',P,Vaprox,'+')
legend("Choleski")


#QR VERSION
lan = -x2(2)
c = e^(x2(1))
Vaprox = power((c./(P)),(1/lan));
figure(2)
plot(P,V,'o',P,Vaprox,'+')
legend("QR")

#SVD VERSION
lan = -x3(2)
c = e^(x3(1))
Vaprox = power((c./(P)),(1/lan));
figure(3)
plot(P,V,'o',P,Vaprox,'+')
legend("SVD")

