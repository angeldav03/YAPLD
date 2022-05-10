from numba.core.decorators import jit_module
import fibon
from time import time
# from time import sleep

def fibon_rcp(n):
    if n == 0: return 0
    if n == 1: return 1
    else:
        return fibon_rcp(n - 1) + fibon_rcp(n - 2)

num = int(input("Enter a value to test: "))

strt = time()
a = fibon.fibon_rc(num)
end = time()

strt2 = time()
# sleep(2); b = a
b = fibon_rcp(num)
end2 = time()


from numba import jit

@jit(nopython=True)
def fibon_nb(n):
    if n == 0: return 0
    if n == 1: return 1
    else:
        return fibon_nb(n - 1) + fibon_nb(n - 2)

strt3 = time()
c = fibon_nb(num)
end3 = time()

print(f"Results: \n {a} \n {b} \n {(a == b == c)} \n")
print(f"Cython: {end - strt} s")
print(f"Python: {end2 - strt2} s")
print(f"Numba: {end3 - strt3} s")
print(f"Speed Ratio: {((end2 - strt2) / (end - strt))} times faster")
print(f"Speed Ratio: Numba is {((end3 - strt3) / (end - strt))} times faster")