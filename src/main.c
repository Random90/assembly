#include <stdint.h>
#include <stdio.h>

void ff_add_values_sse2(uint8_t *src, const uint8_t *src2); // Declare the assembly function

int main() {
    uint8_t src[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    uint8_t src2[16] = {16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1};

    ff_add_values_sse2(src, src2);

    printf("Result: ");
    for (int i = 0; i < 16; i++) {
        printf("%d ", src[i]);
    }
    printf("\n");

    return 0;
}
