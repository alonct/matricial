#Ejercicio 1:

clc
clear all
close all

display("Fijamos la dimension n>=2: ")
pause

display("a) Indica que es el vector u en terminos de la matriz definida por eye(n,n); u = a(:,i) con i entre 1 y n:")

for n=2:5
  
  mat = eye(n,n)
  pause 
  
  for i=1:n
    u = mat(:,i);
    u
  endfor
  
  pause 
  clc
 endfor 
 
 display("Si hemos observado, cada u(:,i) se trata del vector de la base canonica con ceros en sus entradas y un 1 en la componente i, dispuestos en forma vertical.")
 pause
 
 #-----------------------------------------------------------------------------------------------------------------------------------------
 
 display("Con ello, la orden rand(n,m) obtiene un vector aleatorio con entradas en el intervalo [0,1]. Definimos:")
 for n=1:4
   u = rand(n,1)  # vector nº 1
   v = rand(n,1)  # vector nº 2
   pause 
   display("Calculamos la operacion dada en la practica 1 en el ejercicio 1º b):")
   w = v - (dot(u,v)/dot(u,u))*u 
   display("Producto escalar de u y w")
   esuw = dot(w,u)
   pause 
   clc 
 endfor
 display("En este apartado b, lo que hemos tratado de probar es la precision de la maquina para vectores ortogonales. w era un vector obtenido de manera que este fuera ortogonal a u por definicion. Sin embargo, la precision de maquina hace que dicho prod. escalar no sea del todo nulo.")
 
 #-----------------------------------------------------------------------------------------------------------------------------------------

 clc
 display("Sea A una matriz real cuadrada inicializada por rand(n, n); definir dos matrices B y C dadas por B = 0.5 ∗ (A + A′) y C = 0.5 ∗ (A − A′):")
  
 for n=2:5
   A = rand(n,n)
   B = 0.5*(A+A') # Matriz simétrica
   C = 0.5*(A-A') # Matriz antisimétrica
   pause
   display("Producto escalar de <Cx,x> y de <Bx,x>")
    for i=1:4
     x = rand(n,1)
     escalarC = dot(C*x,x)
     escalarB = dot(B*x,x)
     escalarA = dot(A*x,x)
    endfor
    pause
    clc
   
 endfor
 display("Como hemos observado, en cada caso, el producto escalar de Cx y x, tiende a anularse porque C es antisimetica, de forma que cada coordenada tiende a anularse.")
 display("En cuanto al producto escalar de Bx y x")
  