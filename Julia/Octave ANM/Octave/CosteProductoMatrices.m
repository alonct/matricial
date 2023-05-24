% Coste producto de matrices

clc
clear all
close all

% Numero de puntos de la secuencia de Fibonacci
long = 18;

n = [2,3,ones(1,long-2)];

for i = 3:long
  n(i) = n(i-1) + n(i-2); # n es el vector con numeros de la serie de Fibonacci
end

time = zeros(1,long);
for k=1:long  % Bucle para las muestras
    d = n(k);
    a = rand(d,d);
    b = rand(d,d);
    # La funci�n rand() se utiliza para generar numeros pseudoaleatorios. Se pueden generar scalares o matrices de n�meros
    # pseudoaleatorios. Si llamamos a la funci�n sin argumentos nos devolver� un numeros pseudoaleatorios uniformemente 
    # distribuidos entre 0 y 1.
    # Si pasamos un n�mero entero n como par�metro, la funci�n nos devolver� una matriz cuadrada de dimensi�n n de numeros
    # pseudoaleatorios comprendidos entre 0 y 1. Si le pasamos dos n�meros enteros m y n la matriz resultante tendr� m filas
    # y n columnas.
    tic;
    x = a*b;
    time(k) = toc;
    disp(['k= ',num2str(k),' Talla ',num2str(d)]);  # Convert a number (or array) to a string (or a character array).
end   
  figure(1);
  
  subplot(2,1,1)  
  # Set up a plot grid with rows by cols subwindows and set the current axes for plotting (gca) to the location given by index.
  plot(n,time,'-+');
  legend('T(n)','Location','Best');
  title(' Tiempos de multiplicacion');
  
  subplot(2,1,2)
  plot(log(n),log(time),'-+',log(n),2.7*log(n)-20,'.');
  legend('T(n)','Location','Best');
  title(' Tiempos de multiplicacion O(n**2.7) (escala log)');