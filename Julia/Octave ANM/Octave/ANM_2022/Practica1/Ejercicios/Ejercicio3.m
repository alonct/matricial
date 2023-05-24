#Ejercicio 4

clc
clear all
close all

display("Define una matriz dada por las instrucciones de la practica 1 ejercicio 4: ")

format long
#p = NonsingularMat(n); A = p ∗ diag([ones(n − 1, 1); r]) ∗ inv(p)
#INSTRUCCIONES DEL COMENTARIO DE ARRIBA

for n=2:5

r = 50*rand(1,1);

if n == 5
display("Caso para n=5 y r = 10^(-20)")  
r = 10^(-20);
endif

p = NonsingularMat(n) # Matriz no singular
r
A = p*diag([ones(n-1,1);r])*inv(p) # Matriz A

determinante(p*inv(p))*10000000000000
# el comando inv(p), devuelve la matriz inversa de p, y el comando diagonal 
#establecido, devuelve una matriz diagonal con 1 en sus entradas salvo en la ultima de ellas.

determinante(A) # Determinante de A

pause
clc 
endfor 

display("En cuanto al tema determinante, cabe resaltar que, al tomar p una matriz invertible, sabemos que, salvo problemas de inestabilidad computacional, su determinante multiplicado por el de su matriz inversa es 1, por lo que el determinante de a se corresponde al de la matriz diagonal diag([ones(n − 1, 1); r] = r")
display("¿Que sucede cuando la matriz es de tamaño 5*5 y r=10^(-20)? Al ser r una cantidad muy pequeña, y trabajar en una maquina de algebra finita, es claro que al calculat el producto de las matrices, se pierde cierta precision. Al ser ademas r muy pequeño, puede producirse una gran perdida de estabilidad.")

