import cython

def fibon_rc(unsigned long long n):
    if n == 0: return 0
    if n == 1: return 1
    else:
        return fibon_rc(n - 1) + fibon_rc(n - 2)

