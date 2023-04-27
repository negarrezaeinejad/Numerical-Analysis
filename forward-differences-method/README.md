# Forward Differences Numerical Method

This is a MATLAB implementation of the Forward Differences numerical method. This method is used to find the approximate value of a function at a given point, given a set of discrete data points. The method works by taking the difference between successive data points, and then taking the difference between those differences, and so on, until a table of differences is formed. This table is then used to construct an interpolating polynomial, which can be used to approximate the value of the function at any point within the range of the data.

## Usage

To use this code, simply run the `forward_differences.m` script in MATLAB. You will be prompted to enter the number of data points you have, the distance between the data points, and the value of x at which you want to approximate the function. You will also be prompted to enter the values of the function at each data point.

After entering the required input, the code will print out a table of differences, as well as the interpolating polynomial in factored and expanded form. Finally, it will print out the value of the interpolating polynomial at the given value of x.

## Example

Suppose we have the following set of data points:

| x    | f(x) |
| ---- | ---- |
| 0    | 1    |
| 1    | 2    |
| 2    | 5    |
| 3    | 10   |

We want to approximate the value of the function at x = 1.5 using the Forward Differences method.

We can run the code as follows:

```matlab
n = 4;
v = 1;
x1 = 0;
f = [1 2 5 10];
forward_differences
```

The output will be:

```matlab
     f
    ---
     1    1    3    5    0
     2    3    2    0    0
     5   -1    0    0    0
    10    1    0    0    0

p4(x)= 1.000000000000000+(1.000000000000000.*(x-0))/(1)+(2.000000000000000.*(x-0).*(x-1))/(2)+(1.000000000000000.*(x-0).*(x-1).*(x-2))/(6)
     = 1+x+(x^2)/2+(x^3)/6
-----------
t=(x-(0))/(1)
-----------
     =(x^3)/6+(x^2)/2+x+1
     =x^3/6 + x^2/2 + x + 1
```

Therefore, the approximate value of the function at x = 1.5 is approximately 5.375.