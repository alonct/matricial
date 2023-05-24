clc
clear all
close all
addpath('./Biblioteca')

# Ejercicio 7
A1 = [1, 2, 3;
      3, 2, 1;
      4, 2, 1]
A2 = [0.75, 0, 0.25;
      0, 1, 0;
      0.25, 0, 0.75]
A3 = [0.375, 0, -0.125;
      0, 0.5, 0;
      -0.125, 0, 0.375]
A4 = [-0.25, 0, -0.75;
      0, 1, 0;
      -0.75, 0, -0.25]
n = 10000
A1 ^ n  # A1 ^ n no tiene l�mite (diverge hacia m�s infinito)
A2 ^ n  # Parece tener como l�mite A = [0.5, 0, 0.5; 0, 1, 0; 0.5, 0, 0.5]
A3 ^ n  # Parece tener como l�mite A = zeros(3, 3)
A4 ^ n  # Parece tener como l�mite A = [0.5, 0, 0.5; 0, 1, 0; 0.5, 0, 0.5]