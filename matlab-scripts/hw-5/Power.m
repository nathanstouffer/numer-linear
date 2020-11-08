clear all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Power Method : Define problem here
%
%       A = matrix
%      x0 = initial (dominant) eigenvector guess
%           define as a column vector.
% 
%
%A=[-1/2,5/2;5/2,-1/2];
%x0=[-1;0];
%
%A=[6 5 -5 7;2 6 -2 7 ;2 5 -1 7;1 2 3 4];
%x0=[1;-1;1;1];
%   
%
%  
%
%             r = current estimate of dominant eigenvalue
%             x = current estimate of unit eigenvector 
%             N = number of iterates
%     lambda(k) = k-th approximate value of dom. e-val
%  residual(k)  = 2-norm of Ax-rx at k-th iterate
%        R(k,:) = k-th approximate e-vector, lambda(k), 
%                 residual(k),absolute error of for dom. eval
%
%
format long

A=[16,2,4;1,40,-3;0,3,5];
x0=[1;1;1]; 
evals=eig(A);
edom=evals(1);

N=15;
R(1,:)=[x0',0,0,0];

x=x0;
for k=2:N
  y=A*x; 
  r=phi(y)/phi(x);
  x=y/norm(y);
  lambda(k)=r;
  residual(k)=norm(A*x-r*x,2);
  R(k,:)=[x',lambda(k),residual(k),abs(r-edom)];
end;
%
disp('  ')
disp('  ')
disp('   eigenvector - lambda - residual - absolute error')
disp('  ')
R