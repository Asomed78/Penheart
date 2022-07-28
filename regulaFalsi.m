function [xst,fxst]= regulaFalsi(f,a,b,tol)
if f(a) == 0
    xst= a; fxst=f(xst);
elseif f(b) == 0
    xst= b; fxst=f(xst);
elseif f(a)*f(b)>0
    error("error,msq")
else
    while (b-a)>=tol
        m=(a*f(b)-b*f(a))/(f(b)-f(a));
    if f(m)==0
        xst=m;
    elseif if f(a)*f(b)<0;
             m=(a*f(b)-b*f(a))/(f(b)-f(a))
nmax= 10
tol=1.e-5
fprintf(' %5.4f  %5.4f\n')

        b=m;
    else
        a=m;
    end
    end
end