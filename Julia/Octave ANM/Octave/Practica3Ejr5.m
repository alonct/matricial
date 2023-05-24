clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 5 - PV^fi = C cte. ¿fi, C?
V = linspace(0.5, 3, 6)'
P = [1.62, 1.00, 0.75, 0.63, 0.53, 0.46]'

u = ones(6,1)

v = log(V)
b = log(P)

A = [u,v]

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