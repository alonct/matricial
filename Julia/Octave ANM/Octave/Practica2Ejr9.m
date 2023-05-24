clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 9 - Una matriz cuadrada A de dimensión n se dice que es una matriz
# banda cuando existen enteros p y q tales que
# aij = 0 si i + p ? j o j + q ? i.
# El ancho de banda de este tipo se define como
# w = p + q ? 1.
# Las matrices banda que más suelen aparecer en la práctica tienen la forma
# p = q = 2 y p = q = 4. Las matrices de ancho de banda 3 con p = q = 2 se llaman
# matrices tridiagonales.
# Escribe una algoritmo que proporcione la factorización de Choleski A = GG'
# adaptado a esta situación (A SPD). Este algoritmo se conoce como el algoritmo
# de Thomas, introducido por Llewellyn Thomas en 1949.