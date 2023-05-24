clc
clear all
close all


deg=1:5: 360;
circ = zeros(2, size(deg,2));
circ(1, :) = cos(deg *pi / 180);
circ(2, :) = sin(deg * pi / 180);
plot(circ(1,:),circ(2,:))
A=[1,1;-1,-2];
[U, S, V]=svd(A);
S(1,1)=2;
S(2,2)=0.1;  #Reasignamos valores singulares para reconstruir A
A=U*S*V';
Acirc = A*circ;
Uline = [ U(:,1)*S(1,1) [ 0 0 ]' U(:,2)*S(2,2) ];
figure;
plot(circ(1, :), circ(2, :), 'o',Acirc(1, :), Acirc(2, :), '+',Uline(1, :), Uline(2, :), '-r');
legend("Disco 1", "A*D", "Lineas U");
axis equal;

pause
clc
close all

##circ = zeros(2, 360);
##deg=1: 1: 360;
##circ(1, :) = cos(deg *pi / 180);
##circ(2, :) = sin(deg * pi / 180);
##plot(circ(1,:),circ(2,:))
##A=[1,1;-1,-2];
##[U, S, V]=svd(A);
##hold on;
##axis equal;
##plot(circ(1, :), circ(2, :), 'o')
##Acirc = A*circ;	
##plot(Acirc(1, :), Acirc(2, :), '+')	
##Uline = [ U(:,1)*S(1,1)	[ 0 0 ]'	U(:,2)*S(2,2) ];
##plot(Uline(1, :), Uline(2, :), '-r')
##hold off;