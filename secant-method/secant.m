function fsecant(F,a,b,n)
%this function built for Secant method.
%usage:
%       Describe your function as symbolic function.
%       first arg is the function or you can write as a string but
%       in both ways you should write syms x / y / z...
%       second and thirdth arg must be any x in the domin near to root.
%       the last arg must be the period you want.
%   example:
%           find the root of x^2+x-1=0 in the interval [0,1].
%       >>syms x
%       >>f=x^2+x-1;
%       >>fsecant(f,0,1,10)
%       x1 = 0.0000000000000000 
%       x2 = 1.0000000000000000 
%       x3 = 0.5000000000000000 
%       x4 = 0.6000000000000000 
%       x5 = 0.6190476190476191 
%       x6 = 0.6180257510729614 
%       x7 = 0.6180339850173580 
%       x8 = 0.6180339887499086 
%       x9 = 0.6180339887498949 
%       x10 = 0.6180339887498949 
%       >>
format long
d= 1:n ;
d(1)=a;
d(2)=b;
for i=1:(n-2)
  d(i+2)=(d(i)*subs(F,d(i+1))-d(i+1)*subs(F,d(i)))/(subs(F,d(i+1))-subs(F,d(i)));
end
for k=1:n
    fprintf('x%g = %4.16f \n',k,d(k));
end
end
