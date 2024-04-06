
# SPDX-FileCopyrightText: Copyright 2024 Darryl L. Miles
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.binary import BinaryValue
from cocotb.triggers import ClockCycles


uo_out_hi8 = 0
uo_out_lo8 = 0
ui_in_lo8 = 0
ui_in_hi8 = 0


def report(dut, ui_in, uio_in, hilo: bool) -> None:
    uio_out = dut.uio_out.value
    uo_out = dut.uo_out.value

    if hilo:
        uo_out_hi8 = uo_out
        ui_in_hi8 = ui_in
    else:
        uo_out_lo8 = uo_out
        ui_in_lo8 = ui_in

    s_eover = 'EOVER' if(uio_out.is_resolvable and uio_out & 0x10) else ''
    s_ediv0 = 'EDIV0' if(uio_out.is_resolvable and uio_out & 0x20) else ''

    if uio_in & 0x40:
        opsigned = True
        s_ounsign = 'SIGNED'
    else:
        opsigned = False
        s_ounsign = 'UNSIGN'

    if uio_in & 0x80:
        s_omuldiv = 'DIV'
        dend = ui_in & 0xf
        dsor = (ui_in >> 4) & 0xf
        if hilo:	# FIXME maye we can just use q=lo8, r=hi8 here
            q = uo_out_lo8
            r = int(uo_out & 0xf)
        else:
            q = int(uo_out & 0xf)
            r = uo_out_hi8
        if opsigned:
            dend = dend if(dend < 128) else dend - 256
            dsor = dsor if(dsor < 128) else dsor - 256
            q = q if(q < 128) else q - 256
            r = r if(r < 128) else r - 256
        dut._log.info(f"in={str(ui_in)} {str(uio_in)}  out={str(uo_out)} {str(uio_out)}   {s_omuldiv} {s_ounsign} {dend:5d} / {dsor:5d} = {q:4d} r {r:4d} {s_ediv0} {s_eover}")
    else:
        s_omuldiv = 'MUL'
        if hilo:	# FIXME maybe we can just use q=lo8, r=hi8 here
            a = ui_in_lo8
            b = ui_in & 0xff
        else:
            a = ui_in & 0xff
            b = ui_in_hi8
        p = int(((uo_out_hi8 & 0xff) << 8) | (uo_out_lo8 & 0xff))
        if opsigned:
            a = a if(a < 128) else a - 256
            b = b if(b < 128) else b - 256
            p = p if(p < 32768) else p - 65536
        dut._log.info(f"in={str(ui_in)} {str(uio_in)}  out={str(uo_out)} {str(uio_out)}   {s_omuldiv} {s_ounsign} {a:5d} x {b:5d} = {p:6d}")


@cocotb.test()
async def test_muldiv8(dut):
    dut._log.info("Start")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    await ClockCycles(dut.clk, 2)       # show X

    # ena=0 state
    dut.ena.value = 0
    dut.rst_n.value = 0
    dut.clk.value = 0
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    await ClockCycles(dut.clk, 2)       # show muted inputs ena=0

    dut._log.info("ena (active)")
    dut.ena.value = 1                   # ena=1
    await ClockCycles(dut.clk, 2)

    dut._log.info("reset (inactive)")
    dut.rst_n.value = 1                 # come out of reset
    await ClockCycles(dut.clk, 2)

    # MULU MULS DIVU DIVS
    for uio_in_mode in [0x00, 0x40, 0x80, 0xc0]:
        for xy16 in range(0xffff+1):
            uio_in |= uio_in_mode
            dut.uio_in.value = uio_in

            for xy16 in range(0xffff+1):
                for hilo in [False, True]:
                    if hilo:	# hi
                        uio_in |= 0x01
                        ui_in = (xy16 >> 8) & 0xff
                    else:
                        uio_in &= ~0x01
                        ui_in = xy16 & 0xff

                    dut.uio_in.value = uio_in
                    dut.ui_in.value = ui_in

                    await ClockCycles(dut.clk, 1) # pipeline
                    report(dut, BinaryValue(ui_in, bigEndian=False, n_bits=8), BinaryValue(uio_in, bigEndian=False, n_bits=8))
