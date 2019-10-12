#include <iostream>

#include <immintrin.h>

using namespace std;

template<size_t N>
inline void version_naive(int mat1[N][N], int mat2[N][N], int result[N][N]) {
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            result[i][j] = 0;
            for (int k = 0; k < N; ++k) {
                result[i][j] += mat1[i][j];
            }
        }
    }
}

template<size_t N>
inline void version_1(__m256i vec_multi_res, __m256i vec_mat1, __m256i vec_mat2, int mat1[N][N], int mat2[N][N], int result[N][N]) {
    int i, j, k;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; ++j) {
            //Stores one element in mat1 and use it in all computations needed before proceeding
            //Stores as vector to increase computations per cycle
            vec_mat1 = _mm256_set1_epi32(mat1[i][j]);

            for (k = 0; k < N; k += 8) {
                vec_mat2 = _mm256_loadu_si256((__m256i*)&mat2[j][k]); //Stores row of second matrix (eight in each iteration)
                vec_multi_res = _mm256_loadu_si256((__m256i*)&result[i][k]); //Loads the result matrix row as a vector
                vec_multi_res = _mm256_add_epi32(vec_multi_res ,_mm256_mullo_epi32(vec_mat1, vec_mat2));//Multiplies the vectors and adds to th the result vector

                _mm256_storeu_si256((__m256i*)&result[i][k], vec_multi_res); //Stores the result vector into the result array
            }
        }
    }
}