%
%
%  Within matlab the command
%
%  Iterate(A,b,N,Method,x0,w)
%
%  Will implement either Jacobi, Gauss-Seidel, Richardson or SOR
%  iterative techniques to solve the problem
%
%           A x = b
%
%  The INPUTS are:
%
%           A = nonsingular matrix 
%           b =  any vector (i.e. b=[1;2;3])
%           N = number of iterations requested
%      Method = a string containing the method name:
%                    
%                 Method='jacobi'
%                 Method='gauss'
%                 Method='sor'
%                 Method='richardson'
%
%          x0 = initial guess for iteration (column vector)
%           w = relaxation parameter if Method='sor'
%
%
%  The OUTPUT is:
%
%If A is n by n then x is a matrix
%  whose i-th row is the i-th iterate of x0.
%
function [x,NORM_K,eig_K]=Iterate(A,b,N,Method,x0,w)
%
%
n=length(b);
%
switch Method
  case('jacobi')
     Q=diag(diag(A));
     disp('Jacobi Iteration');
  case('gauss')
     Q=tril(A);
     disp('Gauss Seidel Iteration');
  case('sor')
     Q=tril(A,-1)+diag(diag(A))/w;
     disp('SOR(w) iteration');
  case('richardson')
     Q=eye(n,n)
     disp('Richardson Iteration')
  otherwise
     Q=eye(n,n);
     disp('fixed point')
end
%
%   Set up iteration matrix K and compute
%   its eigenvalues and norms.
%
K=eye(n,n)-inv(Q)*A;
bQ=inv(Q)*b;
%
eig_K=eig(K);
NORM_K=[norm(K,1),norm(K,2),norm(K,'inf')];
%
%   Run N iterates using x0 as initial guess
%
x=zeros(N,n);
x(1,:)=x0';
for i=2:N
  y=K*x(i-1,:)'+bQ;
  x(i,:)=y';
  end
%
%