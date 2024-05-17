        .global main

fact_start:
        mov     x2, x0                  // Keep x0 and x1 free
        mov     x3, #1                  // First term in x3
        mov     x4, #2                  // Second term in x4
        mov     x5, #2                  // Sum in x5

fact_1:
        add     x3, x3, x4              // Add terms, store in x3
        tst     x3, #1                  // Test if lowest bit is high (odd)
        beq     fact_1_end              // If odd, skip to 4 million test
        add     x5, x5, x3              // Else, add term to sum

fact_1_end:
        subs    x6, x3, x2              // Subtract 4 million
        bpl     fact_end

fact_2:
        add     x4, x4, x3              // Add terms, store in x4
        tst     x4, #1                  // Test if lowest bit is high (odd)
        beq     fact_2_end              // If odd, skip to 4 million test
        add     x5, x5, x4              // Else, add term to sum

fact_2_end:
        subs    x6, x4, x2              // Subtract 4 million
        bpl     fact_end
        b       fact_1

fact_end:
        mov     x0, x5                  // Return sum
        ret

main:
        stp     x29, x30, [sp, #-16]!   // Prepare stack
        mov     x29, sp

        //mov     x0, #0x900              // Lower 16 bits of 4 million
        //movk    x0, #0x3D, lsl #16      // Upper 16 bits of 4 million
        mov     x0, #46000
        bl      fact_start              // Call factorial

        mov     x1, x0                  // Move result to be printed
        adrp    x0, .L.str.ans          // Load format string and call printf
        add     x0, x0, :lo12:.L.str.ans
        bl      printf

        mov     x0, xzr                 // Zero x0 to return 0 from main
        ldp     x29, x30, [sp], #16     // Clean stack
        ret                             // Return 0

.L.str.ans:
        .asciz  "Answer: %ld\n"

