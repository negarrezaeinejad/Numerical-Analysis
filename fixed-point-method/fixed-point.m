format long
clc
clear
syms x
n=input('How many repeat would you like:\n');
d= 1:n ;
xx=input('Enter the fixed point:\n');
phi=input('enter the \phi of function:\n');
for i=1:n
    xx=subs(phi,xx);
    d(i)=xx;
end
i= 1:n;
y=[i' d'];
disp('           n                   x');
disp(y);