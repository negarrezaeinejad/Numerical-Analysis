function ibdifferences(f,xn,v)
% this function built for forward Differences method.
% usage:
%       Enter your f=[fi] of your table as row vector.
%       Enter your xn of your table as scaler.
%       Enter the distance of the xi.
%       >>ifdifferences(f,xn,v)
%       find the polynomial of table function:
%       x |-1 0 1
%       -----------
%       f | 1 3 1
%       in matlab we would have this:
%       >>f=[1 3 1];
%       >>ibdifferences(f,1,1)
%           f
%          ---
%           1     2    -4     0
%           3    -2     0     0
%           1     0     0     0
%       p3(x)=1 - 2*t*(t + 1) - 2*t
%            =- 2*t^2 - 4*t + 1
%       -----------
%       t=(x-(1))/(1)
%       -----------
%            =5 - 2*(x - 1)^2 - 4*x
%            =3 - 2*x^2
%       >>
format long
syms x t
n=length(f);
nn=n;
d=zeros(n);
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
p1=d(n,1);
s=1;
for i=1:n
    s=s*(t+(i-1));
    p1=p1+d(nn-i,i+1)*s/factorial(i);
    if i==n-1
        nn=nn+1;
    end
end
fprintf('p%g(x)=',n);
disp(p1);
p2=simplify(p1);
fprintf('     =');
disp(p2);
p3=subs(p2,(x-(xn))/v);
disp('-----------');
fprintf('t=(x-(%g))/(%g)\n',xn,v);
disp('-----------');
fprintf('     =');
disp(p3);
p4=expand(p3);
fprintf('     =');
disp(p4);

end
