%
%  A "for loop" implementing the Secant method for finding f(x)=0
%
%  1) the function f defines f(x)
%  2) xexact is not known, so the error is computed as the difference of terms in the sequence
%  3) tolerance is the error we require to stop iterating the sequence
%  
%  The output matrix is R with n-th row R(n,:)
%  The columns of R are
%
%          R(n,:) = [ n , x(n) , E_n ]
%
%  where E_n is difference between consecutive terms in the sequence.
%
clear x;
clear R;
format long;
x(1)=1;                     % initial guesses for the roots
x(2)=0.5;
tolerance=1e-15;            % maximum error to stop iterating
n=2;                        % set current iteration value
E(n)=abs(x(n)-x(n-1));      % compute initial "error" (difference in consecutive sequence values)
R(1,:)=[n,x(n),E(n)];
while E(n) > tolerance
    x(n+1)=x(n) - f(x(n))*(x(n)-x(n-1))/(f(x(n))-f(x(n-1)));
    E(n+1)=abs(x(n+1)-x(n));
    R(n,:)=[n+1,x(n+1),E(n+1)];
    n=n+1;                  % update number of iterations
end;
R

function val = f(x)
    val = exp(x) - log(x+4);
end