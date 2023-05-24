#Ejercicio 7

clc
clear all
close all
addpath('./ficherosClase')

A = SPDMat(5);
D = SymmetricMat(5)
A
D

display("")

for i=1:length(A(1,:))
  det(A(1:i,1:i))
  det(D(1:i,1:i))
  display("")
endfor  