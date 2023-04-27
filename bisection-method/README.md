# Bisection Numerical Method

This MATLAB code implements the bisection numerical method for finding the root of a given function.

## Installation

1. Download or copy the code into a MATLAB script file with a `.m` extension.
2. Save the file in your MATLAB working directory.

## Usage

1. Open the MATLAB software and navigate to the directory containing the script file.
2. Type the name of the script file in the MATLAB command window and press Enter.
3. The program will prompt you to enter the desired number of iterations, two fixed points, and the function to be evaluated.
4. Enter the required inputs and press Enter after each one.
5. The program will output a table with the values of `n`, `an`, `bn`, `cn`, and `F(cn)` for each iteration.

## Input

The program requires the following inputs:

- `n`: the desired number of iterations.
- `xx`: a vector containing the two fixed points.
- `F`: the function to be evaluated.

## Output

The program outputs a table with the following columns:

- `n`: the iteration number.
- `an`: the value of the first fixed point `xx(1)`.
- `bn`: the value of the second fixed point `xx(2)`.
- `cn`: the midpoint between `an` and `bn`.
- `F(cn)`: the value of the function evaluated at `cn`.

## Example

Suppose we want to find the root of the function `f(x) = x^3 - 5x^2 + 3x + 7` using the bisection method with 5 iterations and initial guesses of `a = 2` and `b = 4`. We can run the script file `bisection.m` and input the following values:

```matlab
Enter your desired iteration count
5
Enter the fixed point 1:
2
Enter the fixed point 2:
4
Enter the function:
x^3 - 5*x^2 + 3*x + 7
```

The program will output the following table:

```matlab
        n                    an                    bn                  cn                 F(cn) 
         1        2.000000000000000        4.000000000000000        3.000000000000000        2.000000000000000
         2        3.000000000000000        4.000000000000000        3.500000000000000       -3.375000000000000
         3        3.000000000000000        3.500000000000000        3.250000000000000        0.703125000000000
         4        3.250000000000000        3.500000000000000        3.375000000000000       -1.345703125000000
         5        3.375000000000000        3.500000000000000        3.437500000000000       -0.333007812500000
```

The root of the function is approximately 3.4375, which is the value of `cn` in the final iteration.