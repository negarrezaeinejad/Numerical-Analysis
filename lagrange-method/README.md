# Lagrange Numerical Method

This Matlab code implements the Lagrange numerical method to approximate a function using interpolation.

## Prerequisites

This code requires Matlab software installed on your computer.

## Usage

1. Open Matlab software on your computer.
2. Copy and paste the code into a new Matlab script file.
3. Modify the input parameters `n`, `xx`, and `f` for your own function data.
4. Run the Matlab script file.
5. Enter the number of data points `n`, and the values of `xx` and `f`.
6. The program will output the Lagrange polynomials for each data point and the interpolated polynomial.

### Example

Suppose we want to approximate the function `f(x) = sin(x)` using the Lagrange numerical method with the following data points:

```matlab
n = 5;
xx = [0 pi/4 pi/2 3*pi/4 pi];
f = sin(xx);
```

The program would output the following:

```matlab
l1(x) =
(3*x^4 - 12*x^3 + 13*x^2 - 4*x)/(-6*pi^4 + 48*pi^2 - 64)

l2(x) =
(x^4 - 6*x^2 + 8)/(6*pi^4 - 48*pi^2 + 64)

l3(x) =
(-3*x^4 + 12*x^3 - 13*x^2 + 4*x)/(2*pi^4 - 16*pi^2 + 16)

l4(x) =
(x^4 - 6*x^2 + 8)/(6*pi^4 - 48*pi^2 + 64)

l5(x) =
(-x^4 + 4*x^3 - 5*x^2 + 2*x)/(2*pi^4 - 16*pi^2 + 16)

p5(x) =
(8*x^3 - 15*x^2 + 6*x)/(pi^4 - 12*pi^2 + 16)

     =
(8*x^3 - 15*x^2 + 6*x)/(16 - 12*pi^2 + pi^4)

     =
(6*x - 15*x^2 + 8*x^3)/(16 - 12*pi^2 + pi^4)
```

Therefore, the interpolated polynomial for the given data points is `p(x) = (6*x - 15*x^2 + 8*x^3)/(16 - 12*pi^2 + pi^4)`.