//
// SKY130 process implementation cell/module mapping
//
// SPDX-FileCopyrightText: Copyright 2024 Darryl Miles
// SPDX-License-Identifier: Apache2.0
//
// This file exist to map the behavioural cell name 'sky130_fd_sc_hd__fa'
//   into a specific cell in the PDK such as 'sky130_fd_sc_hd__fa_1'
//
`default_nettype none

module sky130_fd_sc_hd__fa #(
    parameter integer DRIVE_LEVEL = 1
) (
    COUT,
    SUM ,
    A   ,
    B   ,
    CIN
);

    // Module ports
    output COUT;
    output SUM ;
    input  A   ;
    input  B   ;
    input  CIN ;

    generate
        if (DRIVE_LEVEL == 1) begin
            sky130_fd_sc_hd__fa_1 fa_1 (
`ifdef USE_POWER_PINS
                .VPWR    (1'b1),
                .VGND    (1'b0),
                .VPB     (1'b1),
                .VNB     (1'b0),
`endif
                .COUT    (COUT),
                .SUM     (SUM),
                .A       (A),
                .B       (B),
                .CIN     (CIN)
            );
        end else if (DRIVE_LEVEL == 2) begin
            sky130_fd_sc_hd__fa_2 fa_2 (
`ifdef USE_POWER_PINS
                .VPWR    (1'b1),
                .VGND    (1'b0),
                .VPB     (1'b1),
                .VNB     (1'b0),
`endif
                .COUT    (COUT),
                .SUM     (SUM),
                .A       (A),
                .B       (B),
                .CIN     (CIN)
            );
        end else if (DRIVE_LEVEL == 4) begin
            sky130_fd_sc_hd__fa_4 fa_4 (
`ifdef USE_POWER_PINS
                .VPWR    (1'b1),
                .VGND    (1'b0),
                .VPB     (1'b1),
                .VNB     (1'b0),
`endif
                .COUT    (COUT),
                .SUM     (SUM),
                .A       (A),
                .B       (B),
                .CIN     (CIN)
            );
        end else begin
            // Check sky130 cell library for your requirement and add case
            $error("DRIVE_LEVEL=%d is not implemented for sky130_fd_sc_hd__fa", DRIVE_LEVEL);
        end
    endgenerate

endmodule
