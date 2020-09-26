%  
%    Here is some introductory syntax. Try these comands out
%    to see what they do. Either 1) copy them (with punctuation)
%    to Command Window with the >> prompt or 2) type "Introduction"
%    in the Command Window to execute all of the commands in
%    sequence.
%
%    Note: lowercase x is different than uppercase X
%
%
%    Computing with scalar variables
%
x=7;
y=12;
z=x^2
z=pi*x/y
z=x*y
%
%
%   Computing with vectors
%
x=1:10
y=1:2:19
z=x.^2
z=x.*y
z=x./y
z=1./y
z=x.^(1./y)
z=sin(x)
%
%
%    declaring row and column vectors
%
x=[1,-2,13]
x=[1;5;6]
y=x.^3
%
%
%    special vector declarations: zero vectors,
%    vector of all 1's, random vectors.
%
x=zeros(6,1)
x=zeros(1,6)
y=ones(5,1)-7
y=7*ones(5,1)
y=rand(5,1)
%
%   Transpose and dot product
%
x=[1;2;3];
y=[-1;2;4];
x
x'
dotprod=x'*y
%
%
%   vectors defined by for loops. 
%   First undefine or clear "x".
%
clear x
x(1)=1
for i=2:8
    x(i)=x(i-1)+i
end
%
%
%   Summing numbers defined by formulae or vectors:
%  
n=1:8;
x=[2;3;4;5];
%
sum(n)
sum(n.^2)
%
sum(x)
sum(x.^(-1))
%
%    Redo with higher precision
%
format long
sum(x.^(-1))
%
%    Switch back to lower precision
%
format short
%
%
%
%    matrix basics: defining, multiplying, etc
%
%
A=[1,2,3;4,5,6;7,8,9]
B=[3:5;4:6;2,3,8]
x=[1,-1,0]
A*x'
A*B
%
%
clear A
for i=1:4
    for j=1:4
        A(i,j)=i*j;
    end
end
A
%
%   replacing a row/column/element of a matrix
%   Here":" is a wildcard meaning all indices.
%
A(2,:)=[0,1,1,1]
A(:,4)=[1;0;0;0]
A(4,3)=100
%
%   Later we'll use things like
%
det(A)
det(B)
inv(B)
inv(B)*B
eye(4)
eig(B)
%
%
%
%    Simple plots
%
a=0;
b=2*pi;
dx=(b-a)/100;
x=a:dx:b;
figure(1)
plot(x,sin(x))
%
%
%   Multiple plots
%
y1=sin(x);
y2=0*x;
figure(2)
plot(x,y1,x,y2)
