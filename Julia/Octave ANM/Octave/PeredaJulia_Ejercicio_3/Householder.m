##Algoritmo de descoposicion QR por Householder

function [Q,R] = Householder(A)
  R = A; 
  [m,n]=size(A); 
  Q = eye(m);
  t=min(m,n)-(m<=n); #nº de etapas Householder.

  for k = 1:t
     r = R(k:m,k);
     e = zeros(m-k+1,1);
     e(1) = norm(r);
     v = r - sign(r(1))*e; #vector para simetrí­a de HouseHolder.
     normv2=v'*v;
     if abs(normv2) < 100*eps  # Aceptamos un error de a lo sumo 2.2204e-14, para buena ortogonalidad
      continue
     end
     H = eye(m);
     H(k:m,k:m) = eye(m-k+1)-2/normv2*(v*v');  #Matriz H_(k+1)
     Q = Q*H'; #Matriz Q_(k+1)
     R = H*R; #Matriz R_(k+1)
  end
  R = triu(R);
endfunction