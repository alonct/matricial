addpath('./biblioteca')

n = 3;

a = eye(n,n);
u = a(:,1) % columna i de a

u = rand(n,1)
v = rand(n,1)

w = v - dot(v,u)/dot(u,u) .* u

A = rand(n,n)
% A' es la traspuesta

B = 0.5 * (A + A')
C = 0.5 * (A - A')

x = rand(n, 1)

Cdot = dot(C*x, x)
Bdot = dot(B*x, x)
Adot = dot(A*x, x)
