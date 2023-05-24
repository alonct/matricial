clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 6 - Para varios valores de n calcular el rango de A = rand(n, 1) * rand(1, n)

n = randi(6, 1)
##B = rand(n, 1)
##C = rand(1, n)
##A = B * C
##rank(A)
# Tenemos que el rango de A siempre es 1

# a) Sean u, v dos vectores de Rn\{0}. ¿Cuál es el rango de A = vu'?
    u = rand(n, 1)
    v = rand(n, 1)
    W = v*u'
    rank(W) # Cumple que la fila i-ésima es v_i * (u_1 ... u_n)
    
# b) Sea A ? R^(nxn) de rango 1. Comprobar que existen dos vectores u, v ? Rn tales que A = vu'
    # rang(A) = 1 => todas las filas son LD => F_i = v_i * (u_1 ... u_n) => basta con tomar
    # v = (v_1, ... , v_n)' y u = (u_1 ... u_n) que cumplen que A = vu'
