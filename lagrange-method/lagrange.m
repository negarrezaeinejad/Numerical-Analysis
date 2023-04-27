format long
clc
clear
syms x
n = input('how many data do you have:\n');
xx=1:n;
f=1:n;
disp('Enter your data:');
for i=1:n
    fprintf('x%g=',i);
    xx(i)=input('');
    fprintf('f%g=',i);
    f(i)=input('');
end
p1=0;
for j=1:n
    l=1;
    for i=1:n
            if (i~=j)
                l=l*(x-xx(i))/(xx(j)-xx(i));
            end
    end
    fprintf('l%g(x)=',j);
    disp(l);
    p1=f(j)*l+p1;
end
p2=simplify(p1);
fprintf('p%g(x)=',n);
disp(p1);
fprintf('     =');
disp(p2);
p3=expand(p2);
fprintf('     =');
disp(p3);
