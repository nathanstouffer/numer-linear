%
%  A "for loop" for Steffensen's method for f(x)=0
%
%   x_{n+1} = x_n + g(x_n)/h(x_n) where h(x) = (g(x + g(x)) - g(x))/g(x)
%
%  1) g.m defines the numerator function
%  2) h.m defines the denominator function
%  3) xexact is the exact root
%  4) m is the number of iterates
%  
%  The output matrix is X with n-th row X(n,:)
%  The columns of X are
%
%          X(n,:) = [ n , x(n) , E_n ]
%
%  where E_n is the absolute error.
%
clear x
clear X
format long
xexact=2;
x(1)=1.5;
X(1,:)=[1,x(1),abs(x(1)-xexact)];
m=9;
for n=1:m
    x(n+1)=x(n)-g(x(n))./h(x(n));
    X(n+1,:)=[n+1,x(n+1),abs(x(n+1)-xexact)];
end;
X