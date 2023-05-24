clc
clear all
close all

# Se trata de un problema de mínimos cuadrados en el que dados estos datos:
x = [20       21.3    21.9    30.6    32      33.3]
y = [1.0152   1.027   1.032   1.0859  1.0922  1.0976]
# Buscamos alfa, beta tales que y(x) = x/(alfa + beta*x) <=> 1/y = beta + (1/x)*alfa
# Y ya vimos en clase que este tipo de problemas se puede resolver, considerando 
# A = col(1,1/y) y b = 1/y, resolviendo la ecuación normal A'*A*z = A'*b
function ret = f(x)
  for i = 1:length(x)
    ret(i) = 1/x(i);
  endfor
endfunction

A = [ones(1,length(x)); f(x)]'
b = f(y)'
B = A'*A;
c = A'*b;
# Para resolver A'*A*z = A'*b lo hacemos con QR obtenido con Householder (que lo
# tenemos definido en un fichero realizado durante unas prácticas).
[Q,R] = Householder(B)
d = Q'*c
[nB,p] = size(B);
z = R(1:p,1:p)\d(1:p) # = (0.7999,3.7033)' = (beta, alfa)'
z = z'
beta = z(1)
alfa = z(2)

# Por último hacemos una comprobación de que el resultado es correcto viendo que 
# g(x) ~ y
function ret = g(z)
  for i = 1:length(z)
    ret(i) = z(i)/(3.7033 + 0.7999*z(i));
  endfor
endfunction
g(x)