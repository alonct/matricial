#EJERCICIO 6P3

clc
clear all
close all

addpath('./ficherosClase')

display(" Encuentra las rectas que mejor aproximan a la función f(x) = sin x:")

a1 = [-1/2;-1/4;0;1/4;1/2]
a2 = sin(a1)

A = [a1,ones(5,1)] 
b = a2

#Choleski, QR y SVD:

[x1,x2,x3] = MinL2Comparacion(A, b)

t = linspace(-2,2,200);

#CHOLESKI VERSION

figure(1)
plot(t,sin(t))
hold on
plot(t,t*x1(1)+x1(2))
legend("Choleski")


#QR VERSION
figure(2)
plot(t,sin(t))
hold on
plot(t,t*x2(1)+x2(2))
legend("QR")

#SVD VERSION
figure(3)
plot(t,sin(t))
hold on
plot(t,t*x3(1)+x3(2))
legend("SVD")

