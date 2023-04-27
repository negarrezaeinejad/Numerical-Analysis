function fnewton(F,x,n)
%this function built for Newton method.
%usage:
%       Describe your function as symbolic function.
%       first arg is the function or you can write as a string but
%       in both ways you should write syms x / y / z...
%       second arg must be a point close to root.
%       the last arg must be the period you want.
%   example:
%           find the root of x^3+4*x^2-10=0 in the interval [1,2].
%       >>syms x
%       >>f=x^3+4*x^2-10;
%       >>fnewton(f,1.5,5)
%           n                   x
%   1.000000000000000   1.373333333333333
%   2.000000000000000   1.365262014874627
%   3.000000000000000   1.365230013916147
%   4.000000000000000   1.365230013414097
%   5.000000000000000   1.365230013414097
%       >>
format long
d= 1:n ;
f=diff(F);
for i=1:n
    x=x-(subs(F,x)/(subs(f,x)));
    d(i)=x;
end
i= 1:n;
y=[i' d'];
disp('           n                   x');
disp(y);
end
