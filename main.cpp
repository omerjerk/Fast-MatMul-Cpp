#include <iostream>
#include <chrono>

#include "matmul.hpp"

#define TEST_ITER 1000

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
    version_1(a, b, c);
    auto t2 = Clock::now();

    std::cout << "Time: "
              << chrono::duration<int64_t, std::nano>(t2 - t1).count()/TEST_ITER
              << " nanoseconds" << std::endl;
}