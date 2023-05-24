clc
clear all
close all

# Julia Pereda Vivo - 48699634D

# Empezamos definiendo ep
ep = (0.5)*((10)^(-9))
for i = 1:4
  v(i) = ep;
endfor 

# Definamos ahora A
A = diag(v, -1)
A(:,5)= [];
#Y en la primera fila ponemos unos 
for i =1:5
  A(1,i)=1;
endfor 

#Ahora buscamos la factorizacion QR por Granm-Schmidt y vemos la norma 2
[Q, R] = gramschmidt(A)
norma= norm(Q'*Q-eye(5), 2)
#Como es un número relativamente grande, 1.5, el de ortogonalidad falla.
 
#Hagamos lo mismo con Granm-Schmidt modificadi
[Q1, R1] = modgramschmidt(A)
norma2= norm(Q1'*Q1-eye(5), 2)
#Ahora la norma es de orden 10^(-10), así que mejor que en la anterior

# Householder
[Q2, R2] = Householder(A)
norma3 = norm(Q2'*Q2-eye(5), 2)
# Por ser la norma nula tenemos que es la mejor factorización para esta matriz
# pues el test de ortogonalidad es óptimo