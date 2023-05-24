function L = choleski(A)
  [m,n] = size(A);
  if(m ~= n)
    error('Matriz no cuadrada');
  end
  Aux = zeros(n,n);
  
  # Calcular los elementos de la 1ª columna
  Aux(1,1) = A(1,1)^(1/2);
  if abs(Aux(1,1)) < 10^(-5)
    error('No hay factorización')
  endif
  for i=2:n
    Aux(i,1) = A(i,1)/Aux(1,1);
  endfor
  
  # Calcular el resto de entradas
  for k=2:n
    Aux(k,k) = A(k,k) - Aux(k,1:k-1)*Aux(k,1:k-1)';
    if abs(Aux(k,k)) < 10^(-5)
      error('No hay factorización');
    endif
    Aux(k,k) = sqrt(Aux(k,k));
    for r = k+1:n
      Aux(r,k) = (A(r,k) - Aux(r,1:k-1)*Aux(1:k-1,k))/Aux(k,k);
    endfor
  endfor
  
  L = tril(Aux);
endfunction