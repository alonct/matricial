clear all;
circ = zeros(2, 360);
deg=1: 1: 360;
circ(1, :) = cos(deg *pi / 180);
circ(2, :) = sin(deg * pi / 180);
figure();
plot(circ(1,:),circ(2,:))
A=[1,3;-1,2];
[U, S, V]=svd(A);
%Modificar voluntariamente
% los valores singulares y construir una 
% nueva A=U*S*V'
S(1,1)=1.5;
S(2,2)=0.1;
A=U*S*V'
hold on;
axis equal;
plot(circ(1, :), circ(2, :), 'o')
Acirc = A*circ;	
plot(Acirc(1, :), Acirc(2, :), '+')	
%Uline = [ U(:,1)*S(1,1)	[ 0 0 ]'	U(:,2)*S(2,2) ];
Uline = [ U(:,1)*S(1,1)	[0 0]'	U(:,2)*S(2,2) ];
plot(Uline(1, :), Uline(2, :), '-r')
hold off;
S
