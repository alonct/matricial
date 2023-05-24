#Ejercicio5

clc
clear all
close all
addpath('./ficherosClase')

display("Fijamos n=5 y realizamos:")
format short

n=5;

display("a) Dado un entero r = 1,2,3,4,5; creamos con rand r vectores ui y definimos la matriz A como la suma de ui*ui' y comparamos el rango de A con r")

r = randi(5,1,1)
vec = zeros(r,5)

for i=1:r
  vec(i,:) = rand(5,1);
endfor 

vec

vec(1,:)'*vec(1,:)

A = zeros(5,5) # Matriz A

for i=1:r
  A += vec(i,:)'*vec(i,:);
endfor 

A
rangoA = rank(A)


display("Como se observa, el rango de las matrices coincide con el numero de vectores r que hay. Es claro que v*v' sera un vector cuyas filas seran c.lineales. El rango sera r salvo que hayan 2 vectores ui  lin. dependientes o mas.")

