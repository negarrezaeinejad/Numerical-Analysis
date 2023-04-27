# Backward Differences Numerical Method

This Matlab function `ibdifferences` is designed to calculate the polynomial of a table function using the backward differences numerical method.

## Usage

To use this function, follow these steps:

1. Define your table function `f` as a row vector.
2. Define your value of `xn` as a scalar, which is the value of `x` at which you want to evaluate the polynomial.
3. Define the distance between `xi` values as `v`.
4. Call the function as follows: `ibdifferences(f, xn, v)`

## Example

Here is an example of using this function with the following table function:

```matlab
x |-1 0 1
-----------
f | 1 3 1
```

The code for this example would be:

```matlab
>> f = [1 3 1];
>> ibdifferences(f, 1, 1)
```

This will output:

```matlab
     f
    ---
     1     2    -4     0
     3    -2     0     0
     1     0     0     0
p3(x)=1 - 2*t*(t + 1) - 2*t
     -----------
     t=(x-(1))/(1)
     -----------
     =5 - 2*(x - 1)^2 - 4*x
     =3 - 2*x^2
```

This shows the values of the divided differences, the polynomial obtained from the divided differences, and the simplified polynomial after substituting `(x-(1))/1` for `t`. In this case, the final polynomial is `p(x) = 3 - 2x^2`.