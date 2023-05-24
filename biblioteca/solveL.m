# Devuelve la solución del sistema L*x=B o un mensaje de error
# Datos de entrada:
#   L -> matriz coeficientes
#   B 
# Salida:
#   x -> soluciones


function x = solveL(L,B)
  [m,n] = size(L);
  if m~=n   %Vemos si m es distinto de n
    error('Matriz no cuadrada.');
  endif
  
  [p,c] = size(B);
  if p~=n   %Numero de columnas de L debe ser igual al numero de filas de B
    error('Dimensiones incompatibles de L y B.');
  endif
  
  x = zeros(n,c);
  x(1,:) = B(1,:)/L(1,1);
  for k = 2:n
    x(k,:) = (B(k,:) - L(k,1:k-1)*x(1:k-1,:))/L(k,k);
  end
end