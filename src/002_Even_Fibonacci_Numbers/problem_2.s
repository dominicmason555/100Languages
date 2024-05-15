        .global main

loop:
        add     w0, w0, #1
        subs    x1, x1, #1
        bne     loop
        ret

main:
        stp     x29, x30, [sp, #-16]!   // Prepare stack
        mov     x29, sp
                                        // Solve the problem, put it in w1
        mov     w0, #3                  // Load Input
        mov     x1, #40000                  // Load Input
        bl      loop
        mov     w1, w0

        adrp    x0, .L.str.ans          // Load format string and call printf
        add     x0, x0, :lo12:.L.str.ans
        bl      printf

        mov     w0, wzr                 // Zero w0 to return 0 from main
        ldp     x29, x30, [sp], #16     // Clean stack
        ret                             // Return 0

.L.str.num:
        .asciz  "%d\n"
.L.str.ans:
        .asciz  "Answer: %d\n"
