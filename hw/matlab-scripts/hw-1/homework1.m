
%
%   Compute E_n = |f(x)-Pn(x)| for some x and n.
%
%   Create a matrix with columns:
%
%          n   Pn(x)  E_n 
%
%   Here we compare 
%
%         f(x) = ln(1 + x)
%
%   to its truncated Taylor series Pn(x).
%
%          x=2/e - 1
%          N=number of nonzero terms in Pn(x)
%
format long;
clear X;
clear n;
x=2/exp(1) - 1;
Pn=1;
for n=1:10
    Pn=Pn + (-1)^(n-1) .* (x^(n)) ./ n;
    En=abs(Pn - log(2));
    X(n,:)=[n,Pn,En];
end
X
%
%  To plot the "n" column versus the abosute error En
%
%        plot(X(:,1),X(:,3))
%



%
