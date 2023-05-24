clc
clear all
close all
addpath('./Biblioteca')

A = [1 1 2; 1 0 -2; -1 2 3]
Q1 = [(sqrt(3))/3, (-1+sqrt(3))/(3-sqrt(3)), (1-sqrt(3))/(3-sqrt(3));
    (-1+sqrt(3))/(3-sqrt(3)),(3-sqrt(3))/6, 1/(3-sqrt(3));
    (1-sqrt(3))/(3-sqrt(3)),1/(3-sqrt(3)),(3-sqrt(3))/6]

##[Q,R] = qr(A)


Q2 = [1, 0, 0; 
      0, -(25+sqrt(3*14)+2*sqrt(14)+4*sqrt(3))/(14+sqrt(14)*(2+sqrt(3))), (1-sqrt(14)*(sqrt(3)-2))/(14+sqrt(14)*(2+sqrt(3)));
      0,  (1-sqrt(14)*(sqrt(3)-2))/(14+sqrt(14)*(2+sqrt(3))), (7+2*sqrt(14)+sqrt(3*14)+3*sqrt(3))/(14+sqrt(14)*(2+sqrt(3)))]

Q = Q1*Q2
R = [sqrt(3), -sqrt(3)/3, -sqrt(3);
    0, -3.5472, -5.2346;
    0,0,-1.9447]
Q*R