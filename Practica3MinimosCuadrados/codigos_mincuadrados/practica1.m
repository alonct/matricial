
n=7;
A = hilb(25);

A = A(:,1 : n);
%
% Solucion debe de ser el vector de unos
%
x=ones(n,1);
b=A*x;
disp('Comprobamos que es solucion');
norm(A*x-b)
pause(1);
% Resolvemos usando Choleski
Apb=A'*b;
B=chol(A'*A);
y1=B'\Apb;
x1=B\y1;
fprintf('solucion con Choleski\n');
norm(A*x1-b)

% Resolvemos usando QR
[nA,p]=size(A);
[Q,R]=qr(A);
c=Q'*b;
x2=R(1:p,1:p)\c(1:p);
% 
disp('solucion con QR');
norm(A*x2-b)
disp('Norma entre solucion Choleski vs QR');
norm(x1-x2)
figure(1)
plot(1:n,x1,'*',1:n,x2,'+')
legend("datos","aprox",'Location', 'best');
title(['Minimos cuadrados usando Choleski y QR con n = ', num2str(n)])