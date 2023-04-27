# Fixed-Point Numerical Method

This code implements the fixed point numerical method to find the root of a given function. The method is based on the iterative generation of a sequence of numbers, which converges to the root of the function.

## Usage

1. Run the MATLAB program in your preferred environment.
2. When prompted, enter the number of times you would like the method to repeat.
3. Enter the fixed point value.
4. Enter the function's phi value.
5. The program will output a table containing the iterations and their respective values.

## Example

```matlab
How many repeat would you like:
3
Enter the fixed point:
0.5
enter the \phi of function:
2*x^2 - 5
           n                   x
           1      0.500000000000000000000000000000
           2      1.250000000000000000000000000000
           3      2.734375000000000000000000000000
```

In this example, we have specified that we would like the method to repeat three times, with an initial fixed point value of 0.5 and a phi function of 2*x^2 - 5. The program outputs a table containing the iterations and their respective values.