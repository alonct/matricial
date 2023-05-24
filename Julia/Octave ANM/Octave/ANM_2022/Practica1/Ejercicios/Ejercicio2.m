#Ejercicio 2

clc
clear all 
close all

display( "Usamos el ejemplo clasico de R.S.Wilson. Sean pues:")

A = [10,7,8,7;7,5,6,5;8,6,10,9;7,5,9,10]
b = [32;23;33;31]

sol = [1,1,1,1]'

prueba = A*sol 

display("Usamos estas perturbaciones: ")

Ap = [10,7,8.1,7.2;7.08,5.04,6,5;8,5.98,9.89,9;6.99,4.99,9,9.98]
bp = [32.1,22.9,33.1,30.9]'

display("Calcular las soluciones de los sist. lineales Ap*y = b y A*z = bp")

y = (Ap\b)
z = (A\bp)


p1 = Ap*y
p2 = A*z

display("Como se observa, en este caso, pequeños errores en los datos de entrada produce grandes cambios en las soluciones. Esto se debe al condicionamiento del problema.")