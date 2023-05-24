clc
clear all
close all

# Julia Pereda Vivo - 48699634D

# a)
  # Empezamos creando la matriz de Hilbert con el comando automático de octave
  A = hilb(8)
  B = hilb(8)
  B(1,8)= B(1,8) + (10)^(-5)  # Es la matriz perturbada 
  b= rand(8,1)  # Vector independiente 

  x= A\b
  z = B\b

  # Calculamos la norma 2 de z-x
  norma1 = norm(z-x, 2)

  # Y dividimos la norma 2 de x-z entre la norma 2 de x 
  norma2= norm(x-z, 2)
  norma_x= norm(x, 2)
  resultado = norma2/norma_x

# b) 
  A = hilb(8)
  n_condicionamiento = cond(A)
  #El número de condicionamiento de la norma 2 de A es el mayor autovalor entre el menor 
  n_condicionamiento2= max(abs(eig(A)))/min(abs(eig(A)))
  # Y vemos que sale el mismo nº
  # Veamos si se cumple la estimación 
  de_x = z-x
  dA = B-A
  # Empezamos calculando el lado derecho de la desigualdad 
  num = norm(de_x, 2)
  den = norm(x+de_x, 2)
  dere = num/den 
  # Ahora vamos a ver el otro lado de la desigualdad
  den1= norm(dA, 2)
  den1= norm(A,2)
  izq = n_condicionamiento*(den1/den1)
  # Para ver si se cumple la desigualdad vamos a ver que el lado izquierdo menos el lado derecho es un número positivo 
  izq - dere
  # Y se ve que es un nº positivo