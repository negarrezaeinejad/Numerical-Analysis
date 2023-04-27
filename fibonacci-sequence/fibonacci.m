function fibonacci(n)
%This function give us the Fibonacci sequence until n 
    for j=1:n
      p=floor((j+1)/2);
      a=0;
         for i=1:p
               a=a+nchoosek(j-i,i-1);
         end
      fprintf('a%g = %f \n',j,a);
    end
end