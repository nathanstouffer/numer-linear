function z=f(x)
z=x.^3+x-1;
%
% Note that 
%
% (A)  z=x.^3+x+1
% (B)  z=x^3+x+1
%
% are different. (B) applies only when
% x is a number (scalar). If x is a vector
% then (A) applies f to all elements of x.
% Same "dot" notations applies to multiplication
% and division as in
%
%  z=x.*sqrt(x+1)
%  z=x./(1+x)
%
%

