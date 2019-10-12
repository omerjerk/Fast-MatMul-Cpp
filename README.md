# Fast-MatMul-Cpp
Very fast generic matrix multiplication using AVX instructions

## Results:
### 1. Without any compiler optimizations
| Implementation type | Time (ns) |
|---------------------|-----------|
| Naive               | 79903     |
| Version 1           | 26710     |

### 2. With level 3 compiler optimization (-O3)
| Implementation type | Time (ns) |
|---------------------|-----------|
| Naive               | 433       |
| Version 1           | 3338      |