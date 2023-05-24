# Factoriza una matriz con el método de Gauss
# Datos de entrada:
#   A -> matriz a factorizar
# Salida:
#   L -> triangular inferior
#   U -> triangular superior
#   P -> matriz permutacion de filas
#   tales que P*A = L*U y A = P'*L*U


function [L,U,P] = LUPGauss(A)
  [m,n] = size(A);
  if m ~= n
    error('dimensiones incompatibles');
  end
 
  fila=[1:n]; % vector para apuntar a las filas permutadas
  
  for k = 1:n-1
   % 1º- Eleccion del pivote:
    %     max aplicado a la columna k entre las filas k y n, devuelve
    %     el valor maximo y la fila de la matriz en la que esta
    [maxColumn,c] = max(abs(A(k:n,k)));
    p = k + c - 1; % c esta entre 1 y n-k+1, con p apuntamos entre k y n.
   % 2º- Intercambio de filas en A
    A([k,p],:) = A([p,k],:);
    % Intercambio de filas en vector puntero
    fila([k,p]) = fila([p,k]);
   % 3º- Eliminacion
    if abs(A(k,k)) < 100*eps
      warning('Matriz singular');
    end
    % Calculo simultaneo de todos los multiplicadores, estos se guardan
    % en la misma matriz bajo la diagonal
%    i=k+1:n; % filas
    A(k+1:n,k) = A(k+1:n,k)/A(k,k);
    % Eliminacion simultanea en todas las filas entre las columnas k+1 y n
%    j=k+1:n; % columnas
    A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k)*A(k,k+1:n);
  end
  L=tril(A,-1)+eye(n); % Se extrae la matriz triangular bajo la diagonal y
                       % se le suma la matriz identidad (1 en diagonal)
  U=triu(A); % Se extrae la matriz triangular superior.
  P = eye(n); % Matriz identidad
  P = P(fila,:); % Se reordenan las columnas de P para tener la matriz deseada
end 