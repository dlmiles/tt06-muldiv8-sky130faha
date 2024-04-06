<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## Background

Combinational multiply / divider unit (8bit+8bit input)

This is an updated version of the original project that was submitted and
manufactured in TT04 https://github.com/dlmiles/tt04-muldiv4.  The previous
project was hand crafted in Logisim-Evolution then exported as verilog and
integrated into a TT04 project.

This version is the same design, extended to 8-bit wide inputs, but instead
of hand crafting the logic gates in a GUI we convert functional blocks into
SpinalHDL language constructs.  Part of the purpose of this design is to
understand the area and timing changes introduced by adding more bits.

The goal of the next iteration of this design maybe to introduce a FMA
(Fused Multiply Add/Accumulate) function and ALU function to explore if
there is some useful composition of these functions (that might be useful
in an 8bit CPU/MCU design, or scale to something bigger).  The next
iteration on from this could explore how to draw the transistors directly
(instead of using standard cell library) for such an arrangement, this may
result in non-rectangular cells that interlock to improve both area density
and timing performance.  Or it might go up in smoke... who knows.

# How It Works

Due to the limited total IOs available at the external TT interface it is
necessary to clock the project and setup UI_IN[0] to load each of the 2
8-bit input registers.

The data is latched at the NEGEDGE and the value is forwarded with a MUX
bypass pattern to the combinational MUL/DIV operation with the answer
becoming immediately available (after propagation and ripple settling
time) at the outputs.

So one half of the answer is immediately available to read at the next
POSEDGE.  The other half of the answer can be read by toggling UI_IN[0]
and providing the next clock, while at the same time the next input
can be loaded.  This scheme facilitates pipelining so two 8bit inputs
can be loaded and the 16bit result can be read over 2 clock cycles.


// FIXME provide wavedrom diagram (MULU, MULS, DIVU, DIVS)

// FIXME provide blockdiagram of functional units
//    D
//   MUX
//   X Y registers (loaded from multiplexed D)
//    OP -> res flags
//   P P registers
//  DEMUX
//    R


Multiplier (signed/unsigned)
Method uses Ripple Carry Array as 'high speed multiplier'
Setup operation mode bits MULDIV=0 and OPSIGNED(unsigned=0/signed=1)
Setup A (multiplier 8-bit) * B (multiplicand 8-bit)
Expect result P (product 16-bit)


Divider (signed/unsigned)
Method uses Full Adder with Mux as 'combinational restoring array divider algorithm'.
Setup operation mode bits MULDIV=1 and OPSIGNED(unsigned=0/signed=1)
Setup Dend (dividend 4-bit) / Dsor (divisor 4-bit)
Expect result Q (quotient 4-bit) with R (remainder 4-bit)

Divider has error bit indicators that take precedence over any result.
If any error bit is set then the output Q and R should be disregarded.
When in multiplier mode error bits are muted to 0.
No input values can cause an overflow error so the bit is always reset.

## How to test

Please check back with the project github main page and the published
docs/ directory.  There is expected to be some instructions provided
around the time the TT05 chips a received (Q4 2024).

At the time of writing receiving a physical chip (from a previous TT
edition) back has not occured, so there is no experience on the best
way to test this project, so I defer the task of writing this section
to a later time.

There should be sufficient instructions here start you own journey.

## External hardware

It is expect the RP2040 and a Python REPL should be sufficient test this
project.
