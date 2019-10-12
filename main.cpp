#include <iostream>
#include <chrono>

#include "matmul.hpp"

#define TEST_ITER 10000

using namespace std;

typedef chrono::high_resolution_clock Clock;

int main() {
    int a[32][32], b[32][32], c[32][32];

    for (int i = 0; i < 32; ++i) {
        for (int j = 0; j < 32; ++j) {
            a[i][j] = 1;
            b[i][j] = 1;
        }
    }

    auto t1 = Clock::now();
    for (int i = 0; i < TEST_ITER; ++i) {
        version_naive(a, b, c);
    }
    auto t2 = Clock::now();

    std::cout << "Naive time: "
              << chrono::duration<int64_t, std::nano>(t2 - t1).count()/TEST_ITER
              << " nanoseconds" << std::endl;

    __m256i vec_multi_res = _mm256_setzero_si256(); //Initialize vector to zero
    __m256i vec_mat1 = _mm256_setzero_si256(); //Initialize vector to zero
    __m256i vec_mat2 = _mm256_setzero_si256(); //Initialize vector to zero

    t1 = Clock::now();
    for (int i = 0; i < TEST_ITER; ++i) {
        version_1(vec_multi_res, vec_mat1, vec_mat2, a, b, c);
    }
    t2 = Clock::now();

    std::cout << "Version1 time: "
              << chrono::duration<int64_t, std::nano>(t2 - t1).count()/TEST_ITER
              << " nanoseconds" << std::endl;

}