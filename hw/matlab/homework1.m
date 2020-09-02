
%
%   Compute E_n = |f(x)-Pn(x)| for some x and n.
%
%   Create a matrix with columns:
%
%          n   Pn(x)  E_n 
%
%   Here we compare 
%
%         f(x) = sin(x)
%
%   to its truncated Taylor series Pn(x).
%
%          x=3/4*pi
%          N=number of nonzero terms in Pn(x)
%
clear X;
clear n;
x=3/4*pi;
for n=1:6
Pn=0;
for k=1:n
    Pn=Pn+(-1)^(k-1)*x.^(2*k-1)./factorial(2*k-1);
    En=abs(sin(x)-Pn);
end
X(n,:)=[n,Pn,En];
end
%
%  To plot the "n" column versus the abosute error En
%
%        plot(X(:,1),X(:,3))
%



%
