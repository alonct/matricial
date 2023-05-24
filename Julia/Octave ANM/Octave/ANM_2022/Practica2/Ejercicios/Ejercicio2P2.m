#Ejercicio 2P2:

clc
clear all
close all
addpath('./ficherosClase')

display("Comprueba la eficiencia resolviendo el sistema que tiene como matriz la del apartado d del ejercicio 2)")

format short

function ret = f(x,n) # Funcion vector term. independiente
  for i=1:length(x)
  ret(i) = 3*sin(2*pi*((x(i)-1)/(n-1)));
  endfor

endfunction

for n= [4,5,10]
  
  M = zeros(n,n);
  b = 1:n;
  b = f(b,n)
  
  for i=1:n  # Matriz A
    if i == 1
      M(i,i) = 2;
      M(i,i+1) = -1;
     elseif i == n
      M(i,i) = 2;
      M(i,i-1) = -1;
     else 
      M(i,i) = 2;
      M(i,i-1) = -1;
      M(i,i+1) = -1;
    endif
  endfor
  M
  b
  
  [L,U,x] = solveLUsinPerm(M,b)
  M-L*U
  
  det(M) # Para comprobar la equivalencia de determinantes
  det(L)*det(U) # Para comprobar las equivalencias de determinantes
  
  pause 
  clc
endfor 