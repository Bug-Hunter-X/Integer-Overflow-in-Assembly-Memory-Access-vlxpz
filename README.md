# Integer Overflow in Assembly Memory Access

This repository demonstrates a potential integer overflow bug in assembly code when calculating memory addresses.

The `bug.asm` file contains the erroneous code, which uses the following instruction:

`mov eax, [ebx+ecx*4]`

This instruction is vulnerable to integer overflow if the value of `ecx` is sufficiently large, leading to an incorrect memory address being accessed.  This can result in crashes or unpredictable program behavior.

The `bugSolution.asm` file provides a corrected version of the code that mitigates the risk of overflow.  It uses additional checks and potentially different data types to ensure the address calculation is always within safe bounds.

This example highlights the importance of carefully considering potential integer overflows when working with assembly code, especially when performing arithmetic operations to calculate memory addresses.