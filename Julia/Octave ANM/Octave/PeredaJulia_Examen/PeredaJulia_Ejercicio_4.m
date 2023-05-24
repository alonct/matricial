clc
clear all
close all

# Julia Pereda Vivo - 48699634D

# Empezamos definiendo A y b
n = 10;
D = 6*eye(n);
L = [zeros(1,n-1);-2*eye(n-1)];
L = [L,zeros(n,1)];
U = [-2*eye(n-1);zeros(1,n-1)];
U = [zeros(n,1),U];
A = L + D + U;
b = ones(10,1);

# a) Radio espectral de las matrices de iteración de Jacobi y Gauss-Seidel
#   JACOBI
    T_J = D^(-1) * (-(L+U));
    max(abs(eig(T_J)))  # Este es el radio espectral de T_J
    
#   GAUSS-SEIDEL
    T_G = (L+D)^(-1) * (-U);
    max(abs(eig(T_G)))  # Este es el radio espectral de T_G
    
# b) Gráfica con semilogy donde se compare el decaimiento de los residuos
    # Calculamos los residuos con funciones que hicimos en las clases de prácticas
    [xJ, iterJ, rJ] = verJacobi(A,b,10^(-4),10,b);
    [xG, iterG, rG] = verGaussSeidel(A,b,10^(-4),10,b);
    semilogy(1,rJ, 'x', 1, rG, 'd') # Lo representamos
    
# c)
    [x1, iter1, rSOR1] = verSOR(A,b,1.3,10^(-4),10,b)
    [x1, iter2, rSOR2] = verSOR(A,b,1.5,10^(-4),10,b)
    [x1, iter2, rSOR3] = verSOR(A,b,1.7,10^(-4),10,b)
    figure(2)
    semilogy(1,rSOR1, 'x', 1, rSOR2, 'd', 1, rSOR3)