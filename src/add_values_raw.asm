section .text
global add_values

add_values:
    ; Function prologue
    push rbp                ; Save the base pointer
    mov rbp, rsp            ; Set up the stack frame

    ; Load the arguments (src and src2) from the stack to the 1st and 2nd general purpose registers
    ; mov rdi, [rbp + 16]
    ; mov rsi, [rbp + 24]
    ; removed, as arguments are moved to the stack in windows, not linux (first 6 arguments are passed directly to GPR)

    ; Load 128 bits (16 bytes) from src into XMM0 (128 bit SIMD registers)
    movdqu xmm0, [rdi]      ; Move unaligned data from [src] into XMM0
    movdqu xmm1, [rsi]

    paddb xmm0, xmm1

    ; Store the result back into src
    movdqu [rdi], xmm0      ; Move the result from XMM0 back to [src]

    ; Function epilogue
    pop rbp                 ; Restore the base pointer
    ret                     ; Return to the caller
