clc;clear; close all;
function [x1,x2] = reguFalsi(f,x1,x2,nmax,tol)
f= @(x)8-4.5*(x-sin(x));
x1= input( 'enter the value of x1:');
x2= input( 'enter the value of x2:');
if f(x1)*f(x2)>0
    disp('root not found')
end
if f(x1)==0
    disp('x1 is one of the roots')
end
if f(x2)==0
    disp('x2 is one of the roots')
end
if f(x1)*f(x2)<0
    b=(x1*f(x2)-x2*f(x1))\(f(x2)-f(x1))
nmax= 10
tol=1.e-5
fprintf(' %5.4f  %5.4f\n')
end