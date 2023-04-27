# Newton Numerical Method

This is a MATLAB code for the Newton numerical method. The function `fnewton` implements the Newton method to find a root of a given function. The user should input a symbolic function, a point close to the root, and the number of iterations to be performed.

## Usage

- The first argument should be the function. It can be written as a string, but it's recommended to write it as a symbolic function using `syms x`.
- The second argument should be a point close to the root.
- The third argument should be the number of iterations to be performed.

## Example

Suppose we want to find the root of the function `f(x) = x^3 + 4*x^2 - 10` using the Newton method. We can use the `fnewton` function as follows:

```matlab
syms x
f = x^3 + 4*x^2 - 10;
fnewton(f, 1.5, 5)
```

This will perform 5 iterations of the Newton method with `x0=1.5`, and display a table with the iteration number and the approximated root.

The output should be:

```matlab
           n                   x
     1.000000000000000   1.373333333333333
     2.000000000000000   1.365262014874627
     3.000000000000000   1.365230013916147
     4.000000000000000   1.365230013414097
     5.000000000000000   1.365230013414097
```