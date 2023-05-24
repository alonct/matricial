clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 1 - dim n >= 2
  n = 3
# a) Qué es el vector u en términos de la matriz a definida como
# a = eye(n, n); u = a(:, i) para un entero i tal que 1 <= i <= n
  a = eye(n, n) # matriz diagonal
  i = 2;
  u = a(:, i)   # se trata de la columna i-ésima

# b) La orden rand(n, m) devuelve una matriz de talla n × m cuyas entradas son
# números reales en [0,1]. Para n fijo, definir dos vectores u = rand(n, 1) y
# v = rand(n, 1). Calcular w = v - (<v,u>/(||u||_2)^2)*u
  u = rand(n, 1)
  v = rand(n, 1)
  w = v - ((u'*v)/(u'*u))*u  # el producto escalar también se puede poner como dot(u,v)
  
# c) 
  A = rand(n,n)
  A + A'
  B = 0.5*(A + A')
  C = 0.5*(A - A')
  # 1) < Cx, x > para varios vectores x
    x = rand(n, 1)
    d = C * x
    d' * x  
    # Se anula porque C es una matriz antisimétrica con la diagonal nula, así que cuando hacemos 
    # < Cx, x > (con las entradas de x < 1 y n = 3) = (a12 - a12)x1x2 + (a13-a13)x2x3 + (a23-a23)x2x3
  # 2)  < Bx, x >
    e = B * x
    e' * x
    # B es simétrica => no se anulan todas las entradas  