format long
clc
clear
syms x t
n = input('how many data do you have:\n');
f=1:n;
v=input('Enter the distance of the xi:');
x1=input('Enter the x1:');
d=zeros(n);
a=1:n;
disp('Enter your fi:');
for i=1:n
    fprintf('f%g=',i);
    f(i)=input('');
end
a(1) = f(1);
for k = 1 : n - 1
   d(k, 1) = (f(k+1) - f(k));
end
for j = 2 : n - 1
   for k = 1 : n - j
      d(k, j) = (d(k+1, j - 1) - d(k, j - 1));
   end
end
d=[f' d];
disp('     f');
disp('    ---')
disp(d);
p1=d(1,1);
s=1;
for i=1:n
    s=s*(t-(i-1));
    p1=p1+d(1,i+1)*s/factorial(i);
end
fprintf('p%g(x)=',n);
disp(p1);
p2=simplify(p1);
fprintf('     =');
disp(p2);
p3=subs(p2,(x-(x1))/v);
disp('-----------');
fprintf('t=(x-(%g))/(%g)\n',x1,v);
disp('-----------');
fprintf('     =');
disp(p3);
p4=expand(p3);
fprintf('     =');
disp(p4);

