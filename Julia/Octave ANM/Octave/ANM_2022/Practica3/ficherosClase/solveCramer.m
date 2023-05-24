función s=solveCramer(A,b)
  N=tamaño(A);
  si (N(1)~=N(2))
    error('Matriz A no cuadrada');
  elseif (N(1)~=longitud(b))
    error('dimensiones incompatibles');
  fin
  s=ceros(1,N(1));
  denominador=determinante(A);
  si (abs(denom)< 1e-12)
    error("Matriz singular");
  fin
  para j=1:N(1)
    B=A;
    para i=1:N(1)
      B(i,j)=b(i);
    fin
    %
    % Más eficiente hacer B(:,j)=b;
    %
    s(j)=determinante(B)/denom;
  fin
fin