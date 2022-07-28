function x = backSub(A,b)
n=length(b);
x=zeros(n,1);
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    S=0;
    for j=i+1:n
        S=S+A(i,j)*x(j);
    end
    x(i)=(b(i)-S)/A(i,i);
end
