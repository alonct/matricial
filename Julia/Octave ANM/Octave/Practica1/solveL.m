function V= solveL(L,b)
  n=rows(L);
  V=zeros(n,1);
  V(1)=b(1)/L(1,1);
  for i=2:n
      V(i)=(b(i,:)-L(i,1:i-1)*V(1:i-1,:))/L(i,i);
  endfor
