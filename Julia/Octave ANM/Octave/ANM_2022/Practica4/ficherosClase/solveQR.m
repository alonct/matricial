## Copyright (C) 2022 Gines Gomariz
##
##Programa que dada una matriz A, la descompone en su forma QR, para 
##resolver un sistema de ecuaciones. Devuelve las matrices QR y el vector 
## x solucion. Recibe pues las matrices Q, R y devuelve el vector x

## Created: 2022-03-17

function x = solveQR (Q, R, b)

#Al ser A= QR, es: QRx = b  luego Rx = Q'x (Q ortonormal), y ya lo tenemos:

bsol = Q'*b;

x = solveU(R,bsol);

endfunction
