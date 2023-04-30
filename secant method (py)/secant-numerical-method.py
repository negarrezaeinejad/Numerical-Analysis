'''
   Parameters
   ----------
   f : function
   a,b : numbers (of interval)
   N : positive integer

   Returns
   -------
   m_n : number
           m_n = a_n - f(a_n)*(b_n - a_n)/(f(b_n) - f(a_n))

'''
import numpy as np
def secant(f,a,b,N):

    if f(a)*f(b) >= 0:
        print("Secant method fails.")
        return ''
    a_n = a
    b_n = b
    for n in range(1,N+1):
        m_n = a_n - f(a_n)*(b_n - a_n)/(f(b_n) - f(a_n))
        f_m_n = f(m_n)
        if f(a_n)*f_m_n < 0:
            a_n = a_n
            b_n = m_n
        elif f(b_n)*f_m_n < 0:
            a_n = m_n
            b_n = b_n
        elif f_m_n == 0:
            print("The exact solution of f(x)=0 is :.",end=' ')
            return m_n
        else:
            print("Secant method fails.")
            return ''
    print("Approximated solution of f(x)=0 is :",end=' ')
    return a_n - f(a_n)*(b_n - a_n)/(f(b_n) - f(a_n))

'''            
                                                EXAMPLE 1
'''
print('EXAMPLE ONE ')
Ex1 = lambda x: pow(x,3) - pow(x,2) - 1
print('Checking if the polynomial changes sign in the chosen interval :', Ex1(1),end=' , ')
print(Ex1(2))
approximated_solution = secant(Ex1,1,2,20)
print(approximated_solution)
supergolden = (1 + ((29 + 3*93**0.5)/2)**(1/3) + ((29 - 3*93**0.5)/2)**(1/3))/3
print('SuperGolden ratio exact value :', supergolden)
error = abs(supergolden - approximated_solution)
print('Error : ' ,error)
print()




'''
                                             EXAMPLE 2
'''
print('EXAMPLE TWO ')
Ex2=lambda x:pow(x,2)-x-1
print('Checking if the polynomial changes sign in the chosen interval :', Ex2(2),end=' , ')
print(Ex1(3))
approximated_solution = secant(Ex2,2,3,20)
print(approximated_solution)
print()



'''
                                             EXAMPLE 3
'''
print('EXAMPLE THREE ')
Ex3=lambda x: np.sin((x**2)/2)
print('Checking if the polynomial changes sign in the chosen interval :', Ex3(2),end=' , ')
print(Ex3(3))
approximated_solution = secant(Ex3,2,3,20)
print(approximated_solution)
print()



'''
                                             EXAMPLE 4
'''
print('EXAMPLE FOUR ')
Ex4=lambda x: np.sin(x)*2+x-2
print('Checking if the polynomial changes sign in the chosen interval :', Ex4(0.5),end=' , ')
print(Ex4(1))
approximated_solution = secant(Ex4,0.5,1,20)
print(approximated_solution)
