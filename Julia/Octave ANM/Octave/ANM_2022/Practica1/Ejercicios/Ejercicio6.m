#Ejercicio 6

clc
clear all 
close all
addpath('./ficherosClase')

display('Dado un valor n natural y la matriz A = rand(n,1) ∗ rand(1,n): ')

for n=2:5
  
  A = rand(n,1)*rand(1,n);
  A
  determinante(A)
  rangA = rank(A)
  
endfor 

display("Por lo observado anteriormente, su rango coincide con 1, pues sus filas son combinaciones lineales. NOTAS EN PAPEL.")
pause

clc 
display("a) Si son u y v dos vectores no nulos, calcula el rango de A = v*u' ")
display("NOTAS EN PAPEL. Se sigue de lo anterior")

display("b) Si A ∈ Mn(R) de rango 1, prueba que existen u, v de Rn de forma que A=v*u'")
display("HECHO EN PAPEL")
