#Ejercicio 1P2. Incluye el resto:

clc
clear all
close all
addpath('./ficherosClase')

format short

function ret = f(x)
 for i=1:length(x)  
  ret(i) = 8*e^(-0.5*x(i));
 endfor
endfunction

u = (1:30)'

y = f(u)'

pause 

display("Sabiendo eso, procedemos a obtener la funcion f en su forma ae^(bx) de acuerdo a la tabla: ")

A = [ones(30,1),u]
b = y

pause

display("Resolvemos usando QR y SVD: ")

[x1,x2,x3] = MinL2Comparacion(A, b)

display("a y b con Choleski:")
a1 = e^(x1(1))
b1 = x1(2)
display("a y b con QR:")
a2 = e^(x2(1))
b2 = x2(2)
display("a y b con SVD:")
a3 = e^(x3(1))
b3 = x3(2)

function ret = g(x,a,b)
 for i=1:length(x)  
  ret(i) = a*e^(b*x(i));
 endfor
endfunction


figure(1)
plot(u,g(u,a1,b1),'*')

figure(2)
plot(u,g(u,a2,b2),'*')

figure(3)
plot(u,g(u,a3,b3),'*')

#--------------------------------------------------------------------------------------------------------------------------------------------
pause 
close all

display("Prueba de sensibilidad: ")

err = rand(30,1);
y = (1:30)' + 10^(-6)*err
b = f(y)'

A = [ones(30,1),u]

display("Resolvemos usando QR y SVD: ")

[x1,x2,x3] = MinL2Comparacion(A, b)

display("a y b con Choleski:")
a1 = e^(x1(1))
b1 = x1(2)
display("a y b con QR:")
a2 = e^(x2(1))
b2 = x2(2)
display("a y b con SVD:")
a3 = e^(x3(1))
b3 = x3(2)







