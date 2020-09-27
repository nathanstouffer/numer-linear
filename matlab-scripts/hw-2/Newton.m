%
%  A "for loop" implementing Newton's method for finding f(x)=0
%
%  1) f.m defines f(x)
%  2) df.m defines f'(x)
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
xexact=1;
x(1)=4;
X(1,:)=[1,x(1),abs(x(1)-xexact)];
m=9;
for n=1:m
    x(n+1)=x(n)-2.*f(x(n))./df(x(n));
    X(n+1,:)=[n+1,x(n+1),abs(x(n+1)-xexact)];
end;
X





