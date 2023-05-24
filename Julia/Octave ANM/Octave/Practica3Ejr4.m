clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 4 -  Se define f(x) = sin(x) ? sin(2x) y consideramos X un vector
# aleatorio de 100 entradas escogidas arbitrariamente entre 0 y 4 por la función
# rand. Ordenar el vector X en orden creciente usando la función sort.
  f =@ (x) sin(x) - sin(2*x)
  n = 100;
  x = sort(rand(1,n)*4);
  # a) Encontrar una aproximación de f en sentido de mínimos cuadrados por un
  # polinomio de grado 2. (p(x) = ax^2 + bx + c)
    grado = 2
    y = f(x)';
    A = zeros(n,grado+1);
    for i=0:grado
      A(:,i+1) = x.^i;
    endfor
    B = A'*A;
    d = A'*y;
    p2 = solveQR(B,d)
    p = zeros(1,grado+1);
    for i = 1:grado+1
      p(i) = p2(grado+1-i+1);
    endfor
    hold on
    for i = 1:n
      plot(x(i),y(i));
    endfor
    y2 = polyval(p,x);
    plot(x,y2);
  # b) Encontrar otra aproximación de f en mínimos cuadrados por una función
  # trigonométrica q(x) = a + b*cos(x) + c*sin(x). Comparar p y q.
    A2 = zeros(100,2);
    A2(:,1) = ones(100,1);
    A2(:,2) = x';
    B2 = A2'*A2;
    d2 = A2'*y;
    p3 = solveQR(B2,d2); # = (a, bcos(x) + csen(x)) = (0.5670, -0.1655)
    a = p3(1)
    # bcos(x) + csen(x) = -0.1655 ??????????????????????????????????????????????
    