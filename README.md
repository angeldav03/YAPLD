# YAPLD
## Yet Another Programming Language Dragrace

### Synopsis:
Writing and compiling with the best performing orptions the same function or routine with
different programming languages and, where possible, compilers and using the internal utilities to time the exectuion of it.

The result will then be listed in a table probably down below... we'll see.

# 1. Recursive Fibonacci

| Num | Language | Time (s) | Comments |
|:--- | :---:    | :----:   |     ----:|
|0.   | C:       | 1.653 s  |          |
|1.   | C++:     | 1.660 s  | (and pybind11 as well... well, still C++) |
|2.   | Rust:    | 1.704 s  | (Zig ReleaseFast as well) |
|3.   | Zig:     | 2.324 s  | (Zig ReleaseSmall 88kB) |
|4.   | Java:    | 2.609 s  |          |
|5.   | GO:      | 2.968 s  |          |
|6.   | Julia:   | 3.256 s  |          |
|7.   | C#       | 4.671 s  |          |
|8.   | Numba:   | 5.639 s  |          |
|9.   | JS:      | 8.325 s  | (Chromium 8.3 s; Firefox 15.11 s) |
|A.   | Cython:  | 33.25 s  |          |
|B.   |Haskel:   |36.20 s   |          |
|C.   |Python:   |180.8 s   |          |