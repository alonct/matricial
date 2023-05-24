#EJERCICIO 7

clc
clear all
close all

addpath("./ficherosClase")

display("Dadas estas matrices, calcula A^(n), para n=1...k.. ¿Cual parece su limite?")


  
  A1 = [1,2,3;3,2,1;4,2,1]
  A2 = [0.75,0,0.25;0,1,0;0.25,0,0.75]
  A3 = [0.375,0,-0.125;0,0.5,0;-0.125,0,0.375]
  A4 = [-0.25,0,-0.75;0,1,0;-0.75,0,-0.25]
  A1i = A1;
  A2i = A2;
  A3i = A3;
  A4i = A4;
  
for i=2:20
 
 fprintf("Para n = %d ",i)
 display("")
 
  A1i = A1i*A1
  A2i = A2i*A2
  A3i = A3i*A3
  A4i = A4i*A4
  
endfor 

pause 
clc

display("Calculamos cada Ain. Si se observa, A1 tienden todas sus coordenadas a infinito, puesto que al multiplicar las columnas y filas al ser todos los terminos positivos y mayores que cero, sera una suma de terminos mayores que 0 en cada componente y si la n tiende a infinito, la matriz tendra sus coordenadas de un tamaño muy grande conforme tiende a infinito.")
display("")
display("En cuanto a A2, parece tender a 1/2 en las esquinas, 1 en el centro y 0 en el resto. Los ceros y el uno es claro que se mantiene al ser el producto para estas componentes siempre constante en cada potencia. En cuanto a lo sucedido en las esquinas, como en cada producto, cada componente de la esquina se aproxima con muy poco error a 1/2, quedaria que sus sumas se acaban acercando a 1/2")
display("")
display("En cuanto a A3, cada una de sus coordenadas riende a 0, Los ceros y el 1/2 de la entrada del centro es clara. En cuanto a las esquinas, en cada producto poco a poco van reduciendo en tamaño por ser productos de valores por debajo de 1/2.")
display("" )
display("A4 no parece tender a ningun valor debido al signo de sus componentes de los vertices. Sin embargo, sy valor parece tender en valor absoluto a la misma matriz que A.")

