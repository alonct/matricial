clc
clear all
close all
addpath('./Biblioteca')

# Práctica 2

  # 1. Generar una tabla de valores para f(x) = 8e^(-0.5x) con x = 1:30; y almacenar
  # los valores en un vector y.
  f = @(x) 8*exp(-0.5*x)
  x = 1:30;
  y = f(x);
  
  # 2.  Supongamos de antemano que f es de la forma f(x) = ae^(bx) para a, b
  # desconocidas. Calcular estos valores a y b a partir de los datos (x, y) en
  # el sentido de los mínimos cuadrados. Reformular el problema para que pueda
  # ser tratado como un problema de mínimos cuadrados lineales.
  # Ejemplo 2.3.14 Pallarés
  # y = ae^(bx) => log y = log a + bx = c + bx
  # Al final tendríamos la tabla en la que las dos filas son x, log y
  # Y una vez obtenidos c y b, calculamos a = e^c. Para calcular los coeficientes
  # consideramos A = (1|x')
    [m,n] = size(x); #m = 1, n = 30
    A = [ones(1,n);x];
    A = A'
  # x = (c,d) y d = log(y)
  # Buscamos resolver A'*A*x = A'*d 
    e = log(y)';
    B = A'*A;
    d = A'*e;
    u = solveCramer(B,d); # u = (2.0794, -0.5000) = (c,d)
  # a = e^c
    a = exp(u(1)) # = 8
    b = u(2) # = -0.5
  
  # 3. Resolver usando QR y SVD y comparar.
    [x1,x2,x3] = MinL2Comparacion(B,d)
  
  # 4. Vamos a comparar la sensibilidad a una perturbación de los datos. Tomar
  # una tabla de 30 números aleatorios usando err = rand(1,30) y construir 
  # z = y + err*e^(-6) como los valores tabulados de la función f donde se
  # contemplan errores.
    err = rand(1,30);
    z = y + err*exp(-6);
  
  # 5. Volver a resolver los valores a y b y comparar.
    e2 = log(z);
    e2 = e2';
    d2 = A'*e2;
    u2 = solveCramer(B,d2) # u2 = (0.5732, -0.3176) = (c2,d2)
  # a2 = e^c2
    a2 = exp(u2(1)) # = 1.8598
    b2 = u2(2) # = -0.3183