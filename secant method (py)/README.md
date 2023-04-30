# Secant Numerical Method

This code implements the secant method for finding the roots of a given function. The secant method is an iterative root-finding algorithm that uses a succession of roots of secant lines to better approximate a root of a function.

## Parameters

The function takes four parameters:

- `f`: the function to find the root of
- `a`: the left endpoint of the interval
- `b`: the right endpoint of the interval
- `N`: the maximum number of iterations

## Returns

The function returns an approximation of the root of `f` in the interval `[a,b]`, computed using the secant method. If the method fails to converge, an empty string is returned.

If the method finds an exact solution, the function prints "The exact solution of f(x)=0 is :." and returns the exact solution.

## Example Usage

```python
import numpy as np

def secant(f, a, b, N):
    ...
    # implementation of the function
    ...

# Example 1
Ex1 = lambda x: pow(x,3) - pow(x,2) - 1
print('Checking if the polynomial changes sign in the chosen interval :', Ex1(1),end=' , ')
print(Ex1(2))
approximated_solution = secant(Ex1,1,2,20)
print(approximated_solution)

# Example 2
Ex2 = lambda x: pow(x,2)-x-1
print('Checking if the polynomial changes sign in the chosen interval :', Ex2(2),end=' , ')
print(Ex2(3))
approximated_solution = secant(Ex2,2,3,20)
print(approximated_solution)

# Example 3
Ex3 = lambda x: np.sin((x**2)/2)
print('Checking if the polynomial changes sign in the chosen interval :', Ex3(2),end=' , ')
print(Ex3(3))
approximated_solution = secant(Ex3,2,3,20)
print(approximated_solution)

# Example 4
Ex4 = lambda x: np.sin(x)*2+x-2
print('Checking if the polynomial changes sign in the chosen interval :', Ex4(0.5),end=' , ')
print(Ex4(1))
approximated_solution = secant(Ex4,0.5,1,20)
print(approximated_solution)
```

## Example Output

```python
EXAMPLE ONE 
Checking if the polynomial changes sign in the chosen interval : -1 , 4
Approximated solution of f(x)=0 is : 1.4655712318767683
SuperGolden ratio exact value : 1.4655712318767684
Error :  9.75837773993847e-16

EXAMPLE TWO 
Checking if the polynomial changes sign in the chosen interval : 3 , -1
Approximated solution of f(x)=0 is : 1.6180339887498908

EXAMPLE THREE 
Checking if the polynomial changes sign in the chosen interval : 0.9240424222333469 , -0.9364566872907966
Approximated solution of f(x)=0 is : 2.305364372256387

EXAMPLE FOUR 
Checking if the polynomial changes sign in the chosen interval : 0.07742538210908086 , -0.1585290151921035
Approximated solution of f(x)=0 is : 0.06803419045491262
```