#include <stdio.h>

extern unsigned char ram[]; // RAM declared in
extern void sum_me(void); // Assembly function
int main()
{sum_me(); // Run assembly code
    printf("Sum result:\n");
    printf("%02d ", ram[0x50]);
    printf("\n");
    printf("%02b ", ram[0x50]);
    printf("\n");
    printf("%02X ", ram[0x50]);
    printf("\n");
    return 0;
}


