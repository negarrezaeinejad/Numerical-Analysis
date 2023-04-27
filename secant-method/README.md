# Secant Numerical Method

This MATLAB code implements the Secant method for finding the root of a function. The Secant method is an iterative numerical method that approximates the root of a function by using two initial values that are close to the root.

## Function Syntax

```matlab
fsecant(F,a,b,n)
```

### Inputs

- `F`: The function that you want to find the root of. You can input the function as a symbolic function or as a string.
- `a` and `b`: Two initial values that are close to the root.
- `n`: The number of iterations you want the method to run for.

### Outputs

- The function will output the values of `x` for each iteration until the desired accuracy is reached.

## Example

Let's say we want to find the root of the function `f(x) = x^2 + x - 1` in the interval `[0, 1]` using the Secant method. Here is how you can use the `fsecant` function to solve this problem:

```matlab
syms x
F = x^2 + x - 1;
fsecant(F, 0, 1, 10)
```

This will output:

```matlab
x1 = 0.0000000000000000 
x2 = 1.0000000000000000 
x3 = 0.5000000000000000 
x4 = 0.6000000000000000 
x5 = 0.6190476190476191 
x6 = 0.6180257510729614 
x7 = 0.6180339850173580 
x8 = 0.6180339887499086 
x9 = 0.6180339887498949 
x10 = 0.6180339887498949 
```

This means that the root of the function `f(x) = x^2 + x - 1` in the interval `[0, 1]` is approximately `0.6180339887498949`.