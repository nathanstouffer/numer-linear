%
%  A "for loop" for Newton's method for f(x)=0
%
%  1) f.m defines f(x)
%  2) df.m defines f'(x)
%  3) xexact is the exact root
%  4) m is the number of iterates
%  
%  The output matrix is R with n-th row R(n,:)
%  The columns of R are
%
%          R(n,:) = [ n , x(n) , E_n ]
%
%  where E_n is the absolute error.
%
clear x
clear X
xexact=log(2);
x(1)=1;
R(1,:)=[1,x(1),abs(x(1)-xexact)];
m=10;
for n=1:m
    x(n+1)=x(n)-f(x(n))./df(x(n));
    R(n+1,:)=[n+1,x(n+1),abs(x(n+1)-xexact)];
end;
format long
R





