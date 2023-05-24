clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 1 - Sean x1 = 2.0, x2 = 2.2, x3 = 2.4, ..., x11 = 4.0 puntos igualmente
# espaciados en el intervalo [2,4] y establezcamos los valores yi = 1 + xi + xi^2 +
# + xi^3 + ... + xi^d. Usar las ecuaciones normales para encontrar el polinomio
# de mínimos cuadrados ?(x) = c1 + c2x + ... + c(d+1)x^d que ajusta al conjunto
# de puntos (xi, yi) para d = 5, d = 6 y d = 8. 
  # Pallarés 2.6.5
  d = 5;
  n = 11;
  x = linspace(2,4,n)';
  y = zeros(n,1);
  for i = 1:n
    for j = 0:d
      y(i) = y(i) + x(i)^j;
    endfor
  endfor
  # A = (x^0|x^1|x^2|...|x^d)
  A = zeros(n,d+1);
  for i=0:d
    A(:,i+1) = x.^i;
  endfor
  # Buscamos resolver el sistema A'u = y
  B = A'*A;
  e = A'*y;
  tic;
  c2 = solveCramer(B,e) # = (323.7272, -106.9737, -18.7962, -2.5716, 4.0058, 0.9026)
  c = zeros(1,d+1);
  for i = 1:d+1
    c(i) = c2(d+2-i);
  endfor
  t1 = toc;
  hold on
  for i = 1:n
    plot(x(i),y(i));
  endfor
  y2 = polyval(c,x);
  plot(x,y2);
  
# ¿Cuántas posiciones correctas se pueden obtener? Usar el número de condición
# para explicar el resultado. 


# Aplicar la factorización QR para resolver los problemas y comparar.
  tic;
  [nB,p] = size(B);
  [Q,R] = qr(B);
  v = Q'*e;
  c3 = R(1:p,1:p)\v(1:p);
  c4 = zeros(1,d+1);
  for i = 1:d+1
    c4(i) = c3(d+2-i);
  endfor
  t2 = toc;
  
  y3 = polyval(c4,x);
  plot(x,y3); # Se ve que aproxima mejor
  hold off
  c - c4