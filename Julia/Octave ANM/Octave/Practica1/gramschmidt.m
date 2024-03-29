%Paula Gazituaga Garc�a 29524103S
function [Q,R] = gramschmidt(A)
      [m,n] = size(A);
       Q = A; R = zeros(n);
       for k = 1:n
          R(1:k-1,k) = Q(:,1:k-1)'*A(:,k);
          Q(:,k) = A(:,k) - Q(:,1:k-1)*R(1:k-1,k);
          R(k,k) = norm(Q(:,k));
          Q(:,k) = Q(:,k)/R(k,k);
      end
end