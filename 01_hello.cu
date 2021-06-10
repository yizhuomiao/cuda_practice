// @file main.cu

#include <stdio.h>

__global__ void hello_world(){
    unsigned int idx = blockIdx.x * blockDim.x + threadIdx.x;
    printf("[ %d ] Hello world from GPU\n", idx);
}
int main() {
	printf("Hello world from CPU\n");

    hello_world<<< 1, 10 >>>();
    cudaDeviceSynchronize();
    return 0;
}
