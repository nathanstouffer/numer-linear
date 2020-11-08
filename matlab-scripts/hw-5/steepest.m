clear all;
%
%
% Steepest descent method:
%
%            Ax = b
%
%  A nonsymmetric case that works
%
%A=[0.5,0,-0.25;-0.25,0.25,0.75; 0,0,0.75];
%b=[3;-3;3];
%xbar=[8;-16;4];  % exact solution
%
%
%
%  A symmetric positive definite case
%  has e-vals: 2 2+sqrt(2),2-sqrt(2)
%    

M=50;
a=2;
am=-1;
ap=-1;
A=diag(a*ones(1,M))+diag(ap*ones(1,M-1),1)+diag(am*ones(1,M-1),-1);
xbar=ones(M,1); % exact solution
b=A*xbar;
xn=zeros(M,1); % initial guess
%
format long
% 
N=3000;
for n=1:N
    rn=A*xn-b;
    an=(rn'*rn)./(rn'*(A*rn));
    xnp=xn-an*rn;
    en=xn-xbar;
    R(n,:)=[n,xn',norm(en,2)];
    xn=xnp;
end
%
%
len=length(R(1,:));
plot(R(:,len));