clc
clear all
close all
addpath('./Biblioteca')

# Práctica 1 - Usando estos códigos analizar lo que ocurre con la siguiente
# matriz mal condicionada:
  A = hilb(25);
  A = A(:, 1:7)
  # 1. ¿Qué hacen estos comandos?
  # Devuelve la matriz de Hilbert de orden n.
  # El elemento i,j de una matriz Hilbert viene dado por H(i,j) = 1/(i+j-1) 
  # Las matrices de Hilbert matrices están cerca de ser singulares, lo que las 
  # difíciles de invertir con algoritmos numéricos. Comparando el nº de
  # condicionamiento de una matriz aleatoria 5x5 con la matriz de Hilbert de orden
  # 5 revela cuan difícil es el problema.
  # Y luego nos centramos en las 7 primeras columnas.
  
  # 2. Definir el vector x ? R^7 con todas sus entradas 1 y obtener b = Ax.
  # Observar que x es la solución del sistema sobredeterminado Ax = b incluso en
  # sentido usual. Comprobarlo con / de MATLAB.
  x = ones(7,1)
  b = A*x
  
  # 3. Construir el sistema de ecuaciones normales para Ax ? b, resolver y comparar
  # con la solución conocida.  
  # 4. Resolver usando QR y SVD y comparar con el vector x.
  [x1,x2,x3] = MinL2Comparacion(A,b);
  
  errorCholeski = norm(x1-x)
  errorQR = norm(x1-x)
  errorSVD = norm(x1-x)