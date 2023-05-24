function V= solveU(R,b)
  n=rows(R);
  V=zeros(n,1);
  V(n)=b(n)/R(n,n);
  for i=n-1:-1:1
    V(i)=(b(i)-R(i,i:end)*V(i:end))/R(i,i);
  endfor
