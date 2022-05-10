import time
import timeit

def fibon_r(n: int) -> int:
    if n == 0: return 0;
    if n == 1: return 1;
    else:
        return fibon_r(n - 1) + fibon_r(n - 2)


inp = input("Inser a number: ")
val = int(inp)
start = time.time()
res = fibon_r(val)
end = time.time()
print(f" Result: {res} \n Time taken: {end - start}")

