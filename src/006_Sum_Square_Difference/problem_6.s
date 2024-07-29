.global main

main:
    # Prepare stack
    addi    sp, sp, -32
    sd      ra, 24(sp)
    sd      s0, 16(sp)
    addi    s0, sp, 32

    # Initialise variables
    li      t1, 0                       # Loop counter
    li      t2, 100                     # Loop max
    li      s2, 0                       # Sum of numbers
    li      s3, 0                       # Sum of t4s

.loop_top:
    addi    t1, t1, 1                   # Increment loop counter
    add     s2, s2, t1                  # Add to sum of numbers
    mul     t4, t1, t1                  # Square loop counter
    add     s3, s3, t4                  # Add to sum of squares
    blt     t1, t2, .loop_top           # Loop if below loop max

    mul     s2, s2, s2                  # Square sum of numbers
    sub     a1, s2, s3                  # Prepare answer to print

    # Mild cheating by just using printf
.printf:
    auipc   a0, %pcrel_hi(.L.str.ans)
    addi    a0, a0, %pcrel_lo(.printf)
    call    printf

    li      a0, 0                       # Return 0

    # Clean up stack
    ld      ra, 24(sp)
    ld      s0, 16(sp)
    addi    sp, sp, 32
    ret

.L.str.ans:
        .asciz  "Answer: %ld\n"

