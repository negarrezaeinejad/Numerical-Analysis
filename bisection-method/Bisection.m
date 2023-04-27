format long
clc
clear
syms x
n=input('Enter your desired iteration count\n');
d= 1:n ;
a= 1:n ;
b= 1:n ;
c= 1:n ;
fcn2= 1:n ;
xx= 1:2;
for i1=1:2
    fprintf('Enter the fixed point %g:\n',i1);
    xx(i1)=input('');
end
F=input('Enter the function:\n');
for i2=1:n
    fan=subs(F,xx(1));
    a(i2)= xx(1);
    fbn=subs(F,xx(2));
    b(i2)= xx(2);
    if (fan*fbn<0)
        cn=mean(xx);
        c(i2)=cn;
        fcn=subs(F,cn);
        fcn2(i2)=fcn;  
         if (sign(fcn)==sign(fan))
               xx(1)=cn;
               a(i2+1)=cn;
         elseif (sign(fcn)==sign(fbn))
               xx(2)=cn;
               b(i2+1)=cn;
         end    
    end
    if (i2==n-1)
        break
    end
end
p='        n                    an                    bn                  cn                 F(cn) ';
disp(p);
q=[d' a' b' c' fcn2'];
disp(q);
