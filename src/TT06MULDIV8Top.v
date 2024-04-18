// Generator : SpinalHDL dev    git head : efcba5fcd17d0cfe48fa0981e8dec6e70234b294
// Component : TT06MULDIV8Top

`ifdef TIMESCALE
`timescale 1ns/1ps
`endif

module TT06MULDIV8Top (
  input               ena /* verilator public */ ,
  output reg [7:0]    uo_out /* verilator public */ ,
  input      [7:0]    ui_in /* verilator public */ ,
  output reg [7:0]    uio_out /* verilator public */ ,
  input      [7:0]    uio_in /* verilator public */ ,
  output reg [7:0]    uio_oe /* verilator public */ ,
  input               simulation_z /* verilator public */ ,
  input               rst_n,
  input               clk
);

  wire                a0_0_D;
  wire                a0_0_RESET_B;
  wire                a0_1_D;
  wire                a0_1_RESET_B;
  wire                a0_2_D;
  wire                a0_2_RESET_B;
  wire                a0_3_D;
  wire                a0_3_RESET_B;
  wire                a0_4_D;
  wire                a0_4_RESET_B;
  wire                a0_5_D;
  wire                a0_5_RESET_B;
  wire                a0_6_D;
  wire                a0_6_RESET_B;
  wire                a0_7_D;
  wire                a0_7_RESET_B;
  wire                a1_0_D;
  wire                a1_0_RESET_B;
  wire                a1_1_D;
  wire                a1_1_RESET_B;
  wire                a1_2_D;
  wire                a1_2_RESET_B;
  wire                a1_3_D;
  wire                a1_3_RESET_B;
  wire                a1_4_D;
  wire                a1_4_RESET_B;
  wire                a1_5_D;
  wire                a1_5_RESET_B;
  wire                a1_6_D;
  wire                a1_6_RESET_B;
  wire                a1_7_D;
  wire                a1_7_RESET_B;
  wire                mul8_io_en;
  wire       [7:0]    mul8_io_a;
  wire       [7:0]    mul8_io_b;
  wire       [7:0]    div8_io_dend;
  wire       [7:0]    div8_io_dsor;
  wire                negedgeReg_1_area_io_q;
  wire                a0_0_Q;
  wire                a0_1_Q;
  wire                a0_2_Q;
  wire                a0_3_Q;
  wire                a0_4_Q;
  wire                a0_5_Q;
  wire                a0_6_Q;
  wire                a0_7_Q;
  wire                a1_0_Q;
  wire                a1_1_Q;
  wire                a1_2_Q;
  wire                a1_3_Q;
  wire                a1_4_Q;
  wire                a1_5_Q;
  wire                a1_6_Q;
  wire                a1_7_Q;
  wire       [15:0]   mul8_io_p;
  wire       [7:0]    div8_io_q;
  wire       [7:0]    div8_io_r;
  wire                div8_io_edivoverflow;
  wire                div8_io_edivzero;
  wire       [0:0]    addr;
  wire                opsigned;
  wire                muldivMode;
  reg                 div2reg;
  wire                a0open;
  wire                a1open;
  reg        [15:0]   regR;
  wire       [1:0]    switch_Misc_l226;
  reg        [7:0]    imm8;
  wire       [15:0]   res;
  wire                when_MULDIV8Top_l750;
  reg        [7:0]    regRbyte;
  reg        [3:0]    _zz_uio_oe;
  reg        [1:0]    _zz_uio_oe_1;
  function [3:0] zz__zz_uio_oe(input dummy);
    begin
      zz__zz_uio_oe[0] = 1'b0;
      zz__zz_uio_oe[1] = 1'b0;
      zz__zz_uio_oe[2] = 1'b0;
      zz__zz_uio_oe[3] = 1'b0;
    end
  endfunction
  wire [3:0] _zz_1;
  function [1:0] zz__zz_uio_oe_1(input dummy);
    begin
      zz__zz_uio_oe_1[0] = 1'b0;
      zz__zz_uio_oe_1[1] = 1'b0;
    end
  endfunction
  wire [1:0] _zz_2;

  NegedgeReg negedgeReg_1 (
    .area_io_en (1'b1                  ), //i
    .area_io_d  (div2reg               ), //i
    .area_io_q  (negedgeReg_1_area_io_q), //o
    .rst_n      (rst_n                 ), //i
    .clk        (clk                   )  //i
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a0_0 (
    .D       (a0_0_D      ), //i
    .GATE    (a0open      ), //i
    .RESET_B (a0_0_RESET_B), //i
    .Q       (a0_0_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a0_1 (
    .D       (a0_1_D      ), //i
    .GATE    (a0open      ), //i
    .RESET_B (a0_1_RESET_B), //i
    .Q       (a0_1_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a0_2 (
    .D       (a0_2_D      ), //i
    .GATE    (a0open      ), //i
    .RESET_B (a0_2_RESET_B), //i
    .Q       (a0_2_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a0_3 (
    .D       (a0_3_D      ), //i
    .GATE    (a0open      ), //i
    .RESET_B (a0_3_RESET_B), //i
    .Q       (a0_3_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a0_4 (
    .D       (a0_4_D      ), //i
    .GATE    (a0open      ), //i
    .RESET_B (a0_4_RESET_B), //i
    .Q       (a0_4_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a0_5 (
    .D       (a0_5_D      ), //i
    .GATE    (a0open      ), //i
    .RESET_B (a0_5_RESET_B), //i
    .Q       (a0_5_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a0_6 (
    .D       (a0_6_D      ), //i
    .GATE    (a0open      ), //i
    .RESET_B (a0_6_RESET_B), //i
    .Q       (a0_6_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a0_7 (
    .D       (a0_7_D      ), //i
    .GATE    (a0open      ), //i
    .RESET_B (a0_7_RESET_B), //i
    .Q       (a0_7_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a1_0 (
    .D       (a1_0_D      ), //i
    .GATE    (a1open      ), //i
    .RESET_B (a1_0_RESET_B), //i
    .Q       (a1_0_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a1_1 (
    .D       (a1_1_D      ), //i
    .GATE    (a1open      ), //i
    .RESET_B (a1_1_RESET_B), //i
    .Q       (a1_1_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a1_2 (
    .D       (a1_2_D      ), //i
    .GATE    (a1open      ), //i
    .RESET_B (a1_2_RESET_B), //i
    .Q       (a1_2_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a1_3 (
    .D       (a1_3_D      ), //i
    .GATE    (a1open      ), //i
    .RESET_B (a1_3_RESET_B), //i
    .Q       (a1_3_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a1_4 (
    .D       (a1_4_D      ), //i
    .GATE    (a1open      ), //i
    .RESET_B (a1_4_RESET_B), //i
    .Q       (a1_4_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a1_5 (
    .D       (a1_5_D      ), //i
    .GATE    (a1open      ), //i
    .RESET_B (a1_5_RESET_B), //i
    .Q       (a1_5_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a1_6 (
    .D       (a1_6_D      ), //i
    .GATE    (a1open      ), //i
    .RESET_B (a1_6_RESET_B), //i
    .Q       (a1_6_Q      )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__dlrtp a1_7 (
    .D       (a1_7_D      ), //i
    .GATE    (a1open      ), //i
    .RESET_B (a1_7_RESET_B), //i
    .Q       (a1_7_Q      )  //o
  );
  Mul mul8 (
    .io_en       (mul8_io_en     ), //i
    .io_opsigned (opsigned       ), //i
    .io_a        (mul8_io_a[7:0] ), //i
    .io_b        (mul8_io_b[7:0] ), //i
    .io_p        (mul8_io_p[15:0])  //o
  );
  Div div8 (
    .io_en           (muldivMode          ), //i
    .io_opsigned     (opsigned            ), //i
    .io_dend         (div8_io_dend[7:0]   ), //i
    .io_dsor         (div8_io_dsor[7:0]   ), //i
    .io_q            (div8_io_q[7:0]      ), //o
    .io_r            (div8_io_r[7:0]      ), //o
    .io_edivoverflow (div8_io_edivoverflow), //o
    .io_edivzero     (div8_io_edivzero    )  //o
  );
  always @(*) begin
    uo_out = 8'bxxxxxxxx;
    uo_out = (uio_in[3] ? regRbyte : imm8);
  end

  always @(*) begin
    uio_out = 8'bxxxxxxxx;
    uio_out[3 : 0] = 4'b0000;
    uio_out[4] = div8_io_edivoverflow;
    uio_out[5] = div8_io_edivzero;
    uio_out[7 : 6] = 2'b00;
  end

  always @(*) begin
    uio_oe = 8'h0a;
    uio_oe[3 : 0] = _zz_uio_oe;
    uio_oe[4] = 1'b1;
    uio_oe[5] = 1'b1;
    uio_oe[7 : 6] = _zz_uio_oe_1;
  end

  assign addr = uio_in[0 : 0];
  assign opsigned = uio_in[6];
  assign muldivMode = uio_in[7];
  assign a0open = ((! div2reg) && negedgeReg_1_area_io_q);
  assign a1open = (div2reg && (! negedgeReg_1_area_io_q));
  assign a0_0_RESET_B = (! (! rst_n));
  assign a0_0_D = ui_in[0];
  assign a0_1_RESET_B = (! (! rst_n));
  assign a0_1_D = ui_in[1];
  assign a0_2_RESET_B = (! (! rst_n));
  assign a0_2_D = ui_in[2];
  assign a0_3_RESET_B = (! (! rst_n));
  assign a0_3_D = ui_in[3];
  assign a0_4_RESET_B = (! (! rst_n));
  assign a0_4_D = ui_in[4];
  assign a0_5_RESET_B = (! (! rst_n));
  assign a0_5_D = ui_in[5];
  assign a0_6_RESET_B = (! (! rst_n));
  assign a0_6_D = ui_in[6];
  assign a0_7_RESET_B = (! (! rst_n));
  assign a0_7_D = ui_in[7];
  assign a1_0_RESET_B = (! (! rst_n));
  assign a1_0_D = ui_in[0];
  assign a1_1_RESET_B = (! (! rst_n));
  assign a1_1_D = ui_in[1];
  assign a1_2_RESET_B = (! (! rst_n));
  assign a1_2_D = ui_in[2];
  assign a1_3_RESET_B = (! (! rst_n));
  assign a1_3_D = ui_in[3];
  assign a1_4_RESET_B = (! (! rst_n));
  assign a1_4_D = ui_in[4];
  assign a1_5_RESET_B = (! (! rst_n));
  assign a1_5_D = ui_in[5];
  assign a1_6_RESET_B = (! (! rst_n));
  assign a1_6_D = ui_in[6];
  assign a1_7_RESET_B = (! (! rst_n));
  assign a1_7_D = ui_in[7];
  assign mul8_io_en = (! muldivMode);
  assign mul8_io_a = {a0_7_Q,{a0_6_Q,{a0_5_Q,{a0_4_Q,{a0_3_Q,{a0_2_Q,{a0_1_Q,a0_0_Q}}}}}}};
  assign mul8_io_b = {a1_7_Q,{a1_6_Q,{a1_5_Q,{a1_4_Q,{a1_3_Q,{a1_2_Q,{a1_1_Q,a1_0_Q}}}}}}};
  assign div8_io_dsor = {a0_7_Q,{a0_6_Q,{a0_5_Q,{a0_4_Q,{a0_3_Q,{a0_2_Q,{a0_1_Q,a0_0_Q}}}}}}};
  assign div8_io_dend = {a1_7_Q,{a1_6_Q,{a1_5_Q,{a1_4_Q,{a1_3_Q,{a1_2_Q,{a1_1_Q,a1_0_Q}}}}}}};
  assign switch_Misc_l226 = {muldivMode,addr};
  always @(*) begin
    case(switch_Misc_l226)
      2'b00 : begin
        imm8 = mul8_io_p[7 : 0];
      end
      2'b01 : begin
        imm8 = mul8_io_p[15 : 8];
      end
      2'b10 : begin
        imm8 = div8_io_r[7 : 0];
      end
      default : begin
        imm8 = div8_io_q[7 : 0];
      end
    endcase
  end

  assign res = (muldivMode ? {div8_io_q,div8_io_r} : mul8_io_p);
  assign when_MULDIV8Top_l750 = (addr == 1'b1);
  always @(*) begin
    case(addr)
      1'b1 : begin
        regRbyte = regR[15 : 8];
      end
      default : begin
        regRbyte = regR[7 : 0];
      end
    endcase
  end

  assign _zz_1 = zz__zz_uio_oe(1'b0);
  always @(*) _zz_uio_oe = _zz_1;
  assign _zz_2 = zz__zz_uio_oe_1(1'b0);
  always @(*) _zz_uio_oe_1 = _zz_2;
  always @(posedge clk) begin
    if(!rst_n) begin
      div2reg <= 1'b0;
    end else begin
      div2reg <= (! div2reg);
    end
  end

  always @(posedge clk) begin
    if(when_MULDIV8Top_l750) begin
      regR <= res;
    end
  end


endmodule

module Div (
  input               io_en,
  input               io_opsigned,
  input      [7:0]    io_dend,
  input      [7:0]    io_dsor,
  output reg [7:0]    io_q,
  output reg [7:0]    io_r,
  output              io_edivoverflow,
  output              io_edivzero
);

  wire                HAD_DVD_TWOS_0_A;
  wire                HAD_DVD_TWOS_0_B;
  wire                HAD_DVD_TWOS_1_A;
  wire                HAD_DVD_TWOS_2_A;
  wire                HAD_DVD_TWOS_3_A;
  wire                HAD_DVD_TWOS_4_A;
  wire                HAD_DVD_TWOS_5_A;
  wire                HAD_DVD_TWOS_6_A;
  wire                HAD_DVD_TWOS_7_A;
  wire                HAR0_SIGN_A;
  wire                HAR1_SIGN_A;
  wire                HAR2_SIGN_A;
  wire                HAR3_SIGN_A;
  wire                HAR4_SIGN_A;
  wire                HAR5_SIGN_A;
  wire                HAR6_SIGN_A;
  wire                HAR7_SIGN_A;
  wire                HAQ0_SIGN_A;
  wire                HAQ1_SIGN_A;
  wire                HAQ2_SIGN_A;
  wire                HAQ3_SIGN_A;
  wire                HAQ4_SIGN_A;
  wire                HAQ5_SIGN_A;
  wire                HAQ6_SIGN_A;
  wire                HAQ7_SIGN_A;
  wire                HAD_DVD_TWOS_0_COUT;
  wire                HAD_DVD_TWOS_0_SUM;
  wire                HAD_DVD_TWOS_1_COUT;
  wire                HAD_DVD_TWOS_1_SUM;
  wire                HAD_DVD_TWOS_2_COUT;
  wire                HAD_DVD_TWOS_2_SUM;
  wire                HAD_DVD_TWOS_3_COUT;
  wire                HAD_DVD_TWOS_3_SUM;
  wire                HAD_DVD_TWOS_4_COUT;
  wire                HAD_DVD_TWOS_4_SUM;
  wire                HAD_DVD_TWOS_5_COUT;
  wire                HAD_DVD_TWOS_5_SUM;
  wire                HAD_DVD_TWOS_6_COUT;
  wire                HAD_DVD_TWOS_6_SUM;
  wire                HAD_DVD_TWOS_7_COUT;
  wire                HAD_DVD_TWOS_7_SUM;
  wire                DU_Q0D0d8_EXT_io_s;
  wire                DU_Q0D0d8_EXT_io_c;
  wire                DU_Q0D0d9_EXT_io_s;
  wire                DU_Q0D0d9_EXT_io_c;
  wire                DU_Q0D0d10_EXT_io_s;
  wire                DU_Q0D0d10_EXT_io_c;
  wire                DU_Q0D0d11_EXT_io_s;
  wire                DU_Q0D0d11_EXT_io_c;
  wire                DU_Q0D0d12_EXT_io_s;
  wire                DU_Q0D0d12_EXT_io_c;
  wire                DU_Q0D0d0_io_s;
  wire                DU_Q0D0d0_io_c;
  wire                DU_Q0D0d1_io_s;
  wire                DU_Q0D0d1_io_c;
  wire                DU_Q0D0d2_io_s;
  wire                DU_Q0D0d2_io_c;
  wire                DU_Q0D0d3_io_s;
  wire                DU_Q0D0d3_io_c;
  wire                DU_Q0D0d4_io_s;
  wire                DU_Q0D0d4_io_c;
  wire                DU_Q0D0d5_io_s;
  wire                DU_Q0D0d5_io_c;
  wire                DU_Q0D0d6_io_s;
  wire                DU_Q0D0d6_io_c;
  wire                DU_Q0D0d7_io_s;
  wire                DU_Q0D0d7_io_c;
  wire                DU_Q1D1d8_EXT_io_s;
  wire                DU_Q1D1d8_EXT_io_c;
  wire                DU_Q1D1d9_EXT_io_s;
  wire                DU_Q1D1d9_EXT_io_c;
  wire                DU_Q1D1d10_EXT_io_s;
  wire                DU_Q1D1d10_EXT_io_c;
  wire                DU_Q1D1d11_EXT_io_s;
  wire                DU_Q1D1d11_EXT_io_c;
  wire                DU_Q1D1d12_EXT_io_s;
  wire                DU_Q1D1d12_EXT_io_c;
  wire                DU_Q1D1d0_io_s;
  wire                DU_Q1D1d0_io_c;
  wire                DU_Q1D1d1_io_s;
  wire                DU_Q1D1d1_io_c;
  wire                DU_Q1D1d2_io_s;
  wire                DU_Q1D1d2_io_c;
  wire                DU_Q1D1d3_io_s;
  wire                DU_Q1D1d3_io_c;
  wire                DU_Q1D1d4_io_s;
  wire                DU_Q1D1d4_io_c;
  wire                DU_Q1D1d5_io_s;
  wire                DU_Q1D1d5_io_c;
  wire                DU_Q1D1d6_io_s;
  wire                DU_Q1D1d6_io_c;
  wire                DU_Q1D1d7_io_s;
  wire                DU_Q1D1d7_io_c;
  wire                DU_Q2D2d8_EXT_io_s;
  wire                DU_Q2D2d8_EXT_io_c;
  wire                DU_Q2D2d9_EXT_io_s;
  wire                DU_Q2D2d9_EXT_io_c;
  wire                DU_Q2D2d10_EXT_io_s;
  wire                DU_Q2D2d10_EXT_io_c;
  wire                DU_Q2D2d11_EXT_io_s;
  wire                DU_Q2D2d11_EXT_io_c;
  wire                DU_Q2D2d0_io_s;
  wire                DU_Q2D2d0_io_c;
  wire                DU_Q2D2d1_io_s;
  wire                DU_Q2D2d1_io_c;
  wire                DU_Q2D2d2_io_s;
  wire                DU_Q2D2d2_io_c;
  wire                DU_Q2D2d3_io_s;
  wire                DU_Q2D2d3_io_c;
  wire                DU_Q2D2d4_io_s;
  wire                DU_Q2D2d4_io_c;
  wire                DU_Q2D2d5_io_s;
  wire                DU_Q2D2d5_io_c;
  wire                DU_Q2D2d6_io_s;
  wire                DU_Q2D2d6_io_c;
  wire                DU_Q2D2d7_io_s;
  wire                DU_Q2D2d7_io_c;
  wire                DU_Q3D3d8_EXT_io_s;
  wire                DU_Q3D3d8_EXT_io_c;
  wire                DU_Q3D3d9_EXT_io_s;
  wire                DU_Q3D3d9_EXT_io_c;
  wire                DU_Q3D3d10_EXT_io_s;
  wire                DU_Q3D3d10_EXT_io_c;
  wire                DU_Q3D3d0_io_s;
  wire                DU_Q3D3d0_io_c;
  wire                DU_Q3D3d1_io_s;
  wire                DU_Q3D3d1_io_c;
  wire                DU_Q3D3d2_io_s;
  wire                DU_Q3D3d2_io_c;
  wire                DU_Q3D3d3_io_s;
  wire                DU_Q3D3d3_io_c;
  wire                DU_Q3D3d4_io_s;
  wire                DU_Q3D3d4_io_c;
  wire                DU_Q3D3d5_io_s;
  wire                DU_Q3D3d5_io_c;
  wire                DU_Q3D3d6_io_s;
  wire                DU_Q3D3d6_io_c;
  wire                DU_Q3D3d7_io_s;
  wire                DU_Q3D3d7_io_c;
  wire                DU_Q4D4d8_EXT_io_s;
  wire                DU_Q4D4d8_EXT_io_c;
  wire                DU_Q4D4d9_EXT_io_s;
  wire                DU_Q4D4d9_EXT_io_c;
  wire                DU_Q4D4d0_io_s;
  wire                DU_Q4D4d0_io_c;
  wire                DU_Q4D4d1_io_s;
  wire                DU_Q4D4d1_io_c;
  wire                DU_Q4D4d2_io_s;
  wire                DU_Q4D4d2_io_c;
  wire                DU_Q4D4d3_io_s;
  wire                DU_Q4D4d3_io_c;
  wire                DU_Q4D4d4_io_s;
  wire                DU_Q4D4d4_io_c;
  wire                DU_Q4D4d5_io_s;
  wire                DU_Q4D4d5_io_c;
  wire                DU_Q4D4d6_io_s;
  wire                DU_Q4D4d6_io_c;
  wire                DU_Q4D4d7_io_s;
  wire                DU_Q4D4d7_io_c;
  wire                DU_Q5D5d8_EXT_io_s;
  wire                DU_Q5D5d8_EXT_io_c;
  wire                DU_Q5D5d0_io_s;
  wire                DU_Q5D5d0_io_c;
  wire                DU_Q5D5d1_io_s;
  wire                DU_Q5D5d1_io_c;
  wire                DU_Q5D5d2_io_s;
  wire                DU_Q5D5d2_io_c;
  wire                DU_Q5D5d3_io_s;
  wire                DU_Q5D5d3_io_c;
  wire                DU_Q5D5d4_io_s;
  wire                DU_Q5D5d4_io_c;
  wire                DU_Q5D5d5_io_s;
  wire                DU_Q5D5d5_io_c;
  wire                DU_Q5D5d6_io_s;
  wire                DU_Q5D5d6_io_c;
  wire                DU_Q5D5d7_io_s;
  wire                DU_Q5D5d7_io_c;
  wire                DU_Q6D6d0_io_s;
  wire                DU_Q6D6d0_io_c;
  wire                DU_Q6D6d1_io_s;
  wire                DU_Q6D6d1_io_c;
  wire                DU_Q6D6d2_io_s;
  wire                DU_Q6D6d2_io_c;
  wire                DU_Q6D6d3_io_s;
  wire                DU_Q6D6d3_io_c;
  wire                DU_Q6D6d4_io_s;
  wire                DU_Q6D6d4_io_c;
  wire                DU_Q6D6d5_io_s;
  wire                DU_Q6D6d5_io_c;
  wire                DU_Q6D6d6_io_s;
  wire                DU_Q6D6d6_io_c;
  wire                DU_Q6D6d7_io_s;
  wire                DU_Q6D6d7_io_c;
  wire                DU_Q7D7d0_io_s;
  wire                DU_Q7D7d0_io_c;
  wire                DU_Q7D7d1_io_s;
  wire                DU_Q7D7d1_io_c;
  wire                DU_Q7D7d2_io_s;
  wire                DU_Q7D7d2_io_c;
  wire                DU_Q7D7d3_io_s;
  wire                DU_Q7D7d3_io_c;
  wire                DU_Q7D7d4_io_s;
  wire                DU_Q7D7d4_io_c;
  wire                DU_Q7D7d5_io_s;
  wire                DU_Q7D7d5_io_c;
  wire                DU_Q7D7d6_io_s;
  wire                DU_Q7D7d6_io_c;
  wire                DU_Q7D7d7_io_s;
  wire                DU_Q7D7d7_io_c;
  wire                HAR0_SIGN_COUT;
  wire                HAR0_SIGN_SUM;
  wire                HAR1_SIGN_COUT;
  wire                HAR1_SIGN_SUM;
  wire                HAR2_SIGN_COUT;
  wire                HAR2_SIGN_SUM;
  wire                HAR3_SIGN_COUT;
  wire                HAR3_SIGN_SUM;
  wire                HAR4_SIGN_COUT;
  wire                HAR4_SIGN_SUM;
  wire                HAR5_SIGN_COUT;
  wire                HAR5_SIGN_SUM;
  wire                HAR6_SIGN_COUT;
  wire                HAR6_SIGN_SUM;
  wire                HAR7_SIGN_COUT;
  wire                HAR7_SIGN_SUM;
  wire                HAQ0_SIGN_COUT;
  wire                HAQ0_SIGN_SUM;
  wire                HAQ1_SIGN_COUT;
  wire                HAQ1_SIGN_SUM;
  wire                HAQ2_SIGN_COUT;
  wire                HAQ2_SIGN_SUM;
  wire                HAQ3_SIGN_COUT;
  wire                HAQ3_SIGN_SUM;
  wire                HAQ4_SIGN_COUT;
  wire                HAQ4_SIGN_SUM;
  wire                HAQ5_SIGN_COUT;
  wire                HAQ5_SIGN_SUM;
  wire                HAQ6_SIGN_COUT;
  wire                HAQ6_SIGN_SUM;
  wire                HAQ7_SIGN_COUT;
  wire                HAQ7_SIGN_SUM;
  wire       [0:0]    _zz_B;
  wire                isZero;
  wire                dvdTwosEn;
  wire                dvrTwosEn;
  wire                dvrTwosEnInverted;
  wire                qSign;
  wire                hadDvdTwosS_0;
  wire                hadDvdTwosS_1;
  wire                hadDvdTwosS_2;
  wire                hadDvdTwosS_3;
  wire                hadDvdTwosS_4;
  wire                hadDvdTwosS_5;
  wire                hadDvdTwosS_6;
  wire                hadDvdTwosS_7;
  wire                xorDvr_0;
  wire                xorDvr_1;
  wire                xorDvr_2;
  wire                xorDvr_3;
  wire                xorDvr_4;
  wire                xorDvr_5;
  wire                xorDvr_6;
  wire                xorDvr_7;

  assign _zz_B = dvdTwosEn;
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAD_DVD_TWOS_0 (
    .A    (HAD_DVD_TWOS_0_A   ), //i
    .B    (HAD_DVD_TWOS_0_B   ), //i
    .COUT (HAD_DVD_TWOS_0_COUT), //o
    .SUM  (HAD_DVD_TWOS_0_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAD_DVD_TWOS_1 (
    .A    (HAD_DVD_TWOS_1_A   ), //i
    .B    (HAD_DVD_TWOS_0_COUT), //i
    .COUT (HAD_DVD_TWOS_1_COUT), //o
    .SUM  (HAD_DVD_TWOS_1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAD_DVD_TWOS_2 (
    .A    (HAD_DVD_TWOS_2_A   ), //i
    .B    (HAD_DVD_TWOS_1_COUT), //i
    .COUT (HAD_DVD_TWOS_2_COUT), //o
    .SUM  (HAD_DVD_TWOS_2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAD_DVD_TWOS_3 (
    .A    (HAD_DVD_TWOS_3_A   ), //i
    .B    (HAD_DVD_TWOS_2_COUT), //i
    .COUT (HAD_DVD_TWOS_3_COUT), //o
    .SUM  (HAD_DVD_TWOS_3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAD_DVD_TWOS_4 (
    .A    (HAD_DVD_TWOS_4_A   ), //i
    .B    (HAD_DVD_TWOS_3_COUT), //i
    .COUT (HAD_DVD_TWOS_4_COUT), //o
    .SUM  (HAD_DVD_TWOS_4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAD_DVD_TWOS_5 (
    .A    (HAD_DVD_TWOS_5_A   ), //i
    .B    (HAD_DVD_TWOS_4_COUT), //i
    .COUT (HAD_DVD_TWOS_5_COUT), //o
    .SUM  (HAD_DVD_TWOS_5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAD_DVD_TWOS_6 (
    .A    (HAD_DVD_TWOS_6_A   ), //i
    .B    (HAD_DVD_TWOS_5_COUT), //i
    .COUT (HAD_DVD_TWOS_6_COUT), //o
    .SUM  (HAD_DVD_TWOS_6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAD_DVD_TWOS_7 (
    .A    (HAD_DVD_TWOS_7_A   ), //i
    .B    (HAD_DVD_TWOS_6_COUT), //i
    .COUT (HAD_DVD_TWOS_7_COUT), //o
    .SUM  (HAD_DVD_TWOS_7_SUM )  //o
  );
  DIVUNITFA DU_Q0D0d8_EXT (
    .io_a   (DU_Q1D1d7_io_s     ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q0D0d7_io_c     ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d8_EXT_io_s ), //o
    .io_c   (DU_Q0D0d8_EXT_io_c )  //o
  );
  DIVUNITFA DU_Q0D0d9_EXT (
    .io_a   (DU_Q1D1d8_EXT_io_s ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q0D0d8_EXT_io_c ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d9_EXT_io_s ), //o
    .io_c   (DU_Q0D0d9_EXT_io_c )  //o
  );
  DIVUNITFA DU_Q0D0d10_EXT (
    .io_a   (DU_Q1D1d9_EXT_io_s ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q0D0d9_EXT_io_c ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d10_EXT_io_s), //o
    .io_c   (DU_Q0D0d10_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q0D0d11_EXT (
    .io_a   (DU_Q1D1d10_EXT_io_s), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q0D0d10_EXT_io_c), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d11_EXT_io_s), //o
    .io_c   (DU_Q0D0d11_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q0D0d12_EXT (
    .io_a   (DU_Q1D1d11_EXT_io_s), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q0D0d11_EXT_io_c), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d12_EXT_io_s), //o
    .io_c   (DU_Q0D0d12_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q0D0d0 (
    .io_a   (hadDvdTwosS_0      ), //i
    .io_b   (xorDvr_0           ), //i
    .io_y   (dvrTwosEnInverted  ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d0_io_s     ), //o
    .io_c   (DU_Q0D0d0_io_c     )  //o
  );
  DIVUNITFA DU_Q0D0d1 (
    .io_a   (DU_Q1D1d0_io_s     ), //i
    .io_b   (xorDvr_1           ), //i
    .io_y   (DU_Q0D0d0_io_c     ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d1_io_s     ), //o
    .io_c   (DU_Q0D0d1_io_c     )  //o
  );
  DIVUNITFA DU_Q0D0d2 (
    .io_a   (DU_Q1D1d1_io_s     ), //i
    .io_b   (xorDvr_2           ), //i
    .io_y   (DU_Q0D0d1_io_c     ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d2_io_s     ), //o
    .io_c   (DU_Q0D0d2_io_c     )  //o
  );
  DIVUNITFA DU_Q0D0d3 (
    .io_a   (DU_Q1D1d2_io_s     ), //i
    .io_b   (xorDvr_3           ), //i
    .io_y   (DU_Q0D0d2_io_c     ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d3_io_s     ), //o
    .io_c   (DU_Q0D0d3_io_c     )  //o
  );
  DIVUNITFA DU_Q0D0d4 (
    .io_a   (DU_Q1D1d3_io_s     ), //i
    .io_b   (xorDvr_4           ), //i
    .io_y   (DU_Q0D0d3_io_c     ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d4_io_s     ), //o
    .io_c   (DU_Q0D0d4_io_c     )  //o
  );
  DIVUNITFA DU_Q0D0d5 (
    .io_a   (DU_Q1D1d4_io_s     ), //i
    .io_b   (xorDvr_5           ), //i
    .io_y   (DU_Q0D0d4_io_c     ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d5_io_s     ), //o
    .io_c   (DU_Q0D0d5_io_c     )  //o
  );
  DIVUNITFA DU_Q0D0d6 (
    .io_a   (DU_Q1D1d5_io_s     ), //i
    .io_b   (xorDvr_6           ), //i
    .io_y   (DU_Q0D0d5_io_c     ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d6_io_s     ), //o
    .io_c   (DU_Q0D0d6_io_c     )  //o
  );
  DIVUNITFA DU_Q0D0d7 (
    .io_a   (DU_Q1D1d6_io_s     ), //i
    .io_b   (xorDvr_7           ), //i
    .io_y   (DU_Q0D0d6_io_c     ), //i
    .io_sel (DU_Q0D0d12_EXT_io_c), //i
    .io_s   (DU_Q0D0d7_io_s     ), //o
    .io_c   (DU_Q0D0d7_io_c     )  //o
  );
  DIVUNITFA DU_Q1D1d8_EXT (
    .io_a   (DU_Q2D2d7_io_s     ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q1D1d7_io_c     ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d8_EXT_io_s ), //o
    .io_c   (DU_Q1D1d8_EXT_io_c )  //o
  );
  DIVUNITFA DU_Q1D1d9_EXT (
    .io_a   (DU_Q2D2d8_EXT_io_s ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q1D1d8_EXT_io_c ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d9_EXT_io_s ), //o
    .io_c   (DU_Q1D1d9_EXT_io_c )  //o
  );
  DIVUNITFA DU_Q1D1d10_EXT (
    .io_a   (DU_Q2D2d9_EXT_io_s ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q1D1d9_EXT_io_c ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d10_EXT_io_s), //o
    .io_c   (DU_Q1D1d10_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q1D1d11_EXT (
    .io_a   (DU_Q2D2d10_EXT_io_s), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q1D1d10_EXT_io_c), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d11_EXT_io_s), //o
    .io_c   (DU_Q1D1d11_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q1D1d12_EXT (
    .io_a   (DU_Q2D2d11_EXT_io_s), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q1D1d11_EXT_io_c), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d12_EXT_io_s), //o
    .io_c   (DU_Q1D1d12_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q1D1d0 (
    .io_a   (hadDvdTwosS_1      ), //i
    .io_b   (xorDvr_0           ), //i
    .io_y   (dvrTwosEnInverted  ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d0_io_s     ), //o
    .io_c   (DU_Q1D1d0_io_c     )  //o
  );
  DIVUNITFA DU_Q1D1d1 (
    .io_a   (DU_Q2D2d0_io_s     ), //i
    .io_b   (xorDvr_1           ), //i
    .io_y   (DU_Q1D1d0_io_c     ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d1_io_s     ), //o
    .io_c   (DU_Q1D1d1_io_c     )  //o
  );
  DIVUNITFA DU_Q1D1d2 (
    .io_a   (DU_Q2D2d1_io_s     ), //i
    .io_b   (xorDvr_2           ), //i
    .io_y   (DU_Q1D1d1_io_c     ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d2_io_s     ), //o
    .io_c   (DU_Q1D1d2_io_c     )  //o
  );
  DIVUNITFA DU_Q1D1d3 (
    .io_a   (DU_Q2D2d2_io_s     ), //i
    .io_b   (xorDvr_3           ), //i
    .io_y   (DU_Q1D1d2_io_c     ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d3_io_s     ), //o
    .io_c   (DU_Q1D1d3_io_c     )  //o
  );
  DIVUNITFA DU_Q1D1d4 (
    .io_a   (DU_Q2D2d3_io_s     ), //i
    .io_b   (xorDvr_4           ), //i
    .io_y   (DU_Q1D1d3_io_c     ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d4_io_s     ), //o
    .io_c   (DU_Q1D1d4_io_c     )  //o
  );
  DIVUNITFA DU_Q1D1d5 (
    .io_a   (DU_Q2D2d4_io_s     ), //i
    .io_b   (xorDvr_5           ), //i
    .io_y   (DU_Q1D1d4_io_c     ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d5_io_s     ), //o
    .io_c   (DU_Q1D1d5_io_c     )  //o
  );
  DIVUNITFA DU_Q1D1d6 (
    .io_a   (DU_Q2D2d5_io_s     ), //i
    .io_b   (xorDvr_6           ), //i
    .io_y   (DU_Q1D1d5_io_c     ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d6_io_s     ), //o
    .io_c   (DU_Q1D1d6_io_c     )  //o
  );
  DIVUNITFA DU_Q1D1d7 (
    .io_a   (DU_Q2D2d6_io_s     ), //i
    .io_b   (xorDvr_7           ), //i
    .io_y   (DU_Q1D1d6_io_c     ), //i
    .io_sel (DU_Q1D1d12_EXT_io_c), //i
    .io_s   (DU_Q1D1d7_io_s     ), //o
    .io_c   (DU_Q1D1d7_io_c     )  //o
  );
  DIVUNITFA DU_Q2D2d8_EXT (
    .io_a   (DU_Q3D3d7_io_s     ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q2D2d7_io_c     ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d8_EXT_io_s ), //o
    .io_c   (DU_Q2D2d8_EXT_io_c )  //o
  );
  DIVUNITFA DU_Q2D2d9_EXT (
    .io_a   (DU_Q3D3d8_EXT_io_s ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q2D2d8_EXT_io_c ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d9_EXT_io_s ), //o
    .io_c   (DU_Q2D2d9_EXT_io_c )  //o
  );
  DIVUNITFA DU_Q2D2d10_EXT (
    .io_a   (DU_Q3D3d9_EXT_io_s ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q2D2d9_EXT_io_c ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d10_EXT_io_s), //o
    .io_c   (DU_Q2D2d10_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q2D2d11_EXT (
    .io_a   (DU_Q3D3d10_EXT_io_s), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q2D2d10_EXT_io_c), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d11_EXT_io_s), //o
    .io_c   (DU_Q2D2d11_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q2D2d0 (
    .io_a   (hadDvdTwosS_2      ), //i
    .io_b   (xorDvr_0           ), //i
    .io_y   (dvrTwosEnInverted  ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d0_io_s     ), //o
    .io_c   (DU_Q2D2d0_io_c     )  //o
  );
  DIVUNITFA DU_Q2D2d1 (
    .io_a   (DU_Q3D3d0_io_s     ), //i
    .io_b   (xorDvr_1           ), //i
    .io_y   (DU_Q2D2d0_io_c     ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d1_io_s     ), //o
    .io_c   (DU_Q2D2d1_io_c     )  //o
  );
  DIVUNITFA DU_Q2D2d2 (
    .io_a   (DU_Q3D3d1_io_s     ), //i
    .io_b   (xorDvr_2           ), //i
    .io_y   (DU_Q2D2d1_io_c     ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d2_io_s     ), //o
    .io_c   (DU_Q2D2d2_io_c     )  //o
  );
  DIVUNITFA DU_Q2D2d3 (
    .io_a   (DU_Q3D3d2_io_s     ), //i
    .io_b   (xorDvr_3           ), //i
    .io_y   (DU_Q2D2d2_io_c     ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d3_io_s     ), //o
    .io_c   (DU_Q2D2d3_io_c     )  //o
  );
  DIVUNITFA DU_Q2D2d4 (
    .io_a   (DU_Q3D3d3_io_s     ), //i
    .io_b   (xorDvr_4           ), //i
    .io_y   (DU_Q2D2d3_io_c     ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d4_io_s     ), //o
    .io_c   (DU_Q2D2d4_io_c     )  //o
  );
  DIVUNITFA DU_Q2D2d5 (
    .io_a   (DU_Q3D3d4_io_s     ), //i
    .io_b   (xorDvr_5           ), //i
    .io_y   (DU_Q2D2d4_io_c     ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d5_io_s     ), //o
    .io_c   (DU_Q2D2d5_io_c     )  //o
  );
  DIVUNITFA DU_Q2D2d6 (
    .io_a   (DU_Q3D3d5_io_s     ), //i
    .io_b   (xorDvr_6           ), //i
    .io_y   (DU_Q2D2d5_io_c     ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d6_io_s     ), //o
    .io_c   (DU_Q2D2d6_io_c     )  //o
  );
  DIVUNITFA DU_Q2D2d7 (
    .io_a   (DU_Q3D3d6_io_s     ), //i
    .io_b   (xorDvr_7           ), //i
    .io_y   (DU_Q2D2d6_io_c     ), //i
    .io_sel (DU_Q2D2d11_EXT_io_c), //i
    .io_s   (DU_Q2D2d7_io_s     ), //o
    .io_c   (DU_Q2D2d7_io_c     )  //o
  );
  DIVUNITFA DU_Q3D3d8_EXT (
    .io_a   (DU_Q4D4d7_io_s     ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q3D3d7_io_c     ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d8_EXT_io_s ), //o
    .io_c   (DU_Q3D3d8_EXT_io_c )  //o
  );
  DIVUNITFA DU_Q3D3d9_EXT (
    .io_a   (DU_Q4D4d8_EXT_io_s ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q3D3d8_EXT_io_c ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d9_EXT_io_s ), //o
    .io_c   (DU_Q3D3d9_EXT_io_c )  //o
  );
  DIVUNITFA DU_Q3D3d10_EXT (
    .io_a   (DU_Q4D4d9_EXT_io_s ), //i
    .io_b   (1'b1               ), //i
    .io_y   (DU_Q3D3d9_EXT_io_c ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d10_EXT_io_s), //o
    .io_c   (DU_Q3D3d10_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q3D3d0 (
    .io_a   (hadDvdTwosS_3      ), //i
    .io_b   (xorDvr_0           ), //i
    .io_y   (dvrTwosEnInverted  ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d0_io_s     ), //o
    .io_c   (DU_Q3D3d0_io_c     )  //o
  );
  DIVUNITFA DU_Q3D3d1 (
    .io_a   (DU_Q4D4d0_io_s     ), //i
    .io_b   (xorDvr_1           ), //i
    .io_y   (DU_Q3D3d0_io_c     ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d1_io_s     ), //o
    .io_c   (DU_Q3D3d1_io_c     )  //o
  );
  DIVUNITFA DU_Q3D3d2 (
    .io_a   (DU_Q4D4d1_io_s     ), //i
    .io_b   (xorDvr_2           ), //i
    .io_y   (DU_Q3D3d1_io_c     ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d2_io_s     ), //o
    .io_c   (DU_Q3D3d2_io_c     )  //o
  );
  DIVUNITFA DU_Q3D3d3 (
    .io_a   (DU_Q4D4d2_io_s     ), //i
    .io_b   (xorDvr_3           ), //i
    .io_y   (DU_Q3D3d2_io_c     ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d3_io_s     ), //o
    .io_c   (DU_Q3D3d3_io_c     )  //o
  );
  DIVUNITFA DU_Q3D3d4 (
    .io_a   (DU_Q4D4d3_io_s     ), //i
    .io_b   (xorDvr_4           ), //i
    .io_y   (DU_Q3D3d3_io_c     ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d4_io_s     ), //o
    .io_c   (DU_Q3D3d4_io_c     )  //o
  );
  DIVUNITFA DU_Q3D3d5 (
    .io_a   (DU_Q4D4d4_io_s     ), //i
    .io_b   (xorDvr_5           ), //i
    .io_y   (DU_Q3D3d4_io_c     ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d5_io_s     ), //o
    .io_c   (DU_Q3D3d5_io_c     )  //o
  );
  DIVUNITFA DU_Q3D3d6 (
    .io_a   (DU_Q4D4d5_io_s     ), //i
    .io_b   (xorDvr_6           ), //i
    .io_y   (DU_Q3D3d5_io_c     ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d6_io_s     ), //o
    .io_c   (DU_Q3D3d6_io_c     )  //o
  );
  DIVUNITFA DU_Q3D3d7 (
    .io_a   (DU_Q4D4d6_io_s     ), //i
    .io_b   (xorDvr_7           ), //i
    .io_y   (DU_Q3D3d6_io_c     ), //i
    .io_sel (DU_Q3D3d10_EXT_io_c), //i
    .io_s   (DU_Q3D3d7_io_s     ), //o
    .io_c   (DU_Q3D3d7_io_c     )  //o
  );
  DIVUNITFA DU_Q4D4d8_EXT (
    .io_a   (DU_Q5D5d7_io_s    ), //i
    .io_b   (1'b1              ), //i
    .io_y   (DU_Q4D4d7_io_c    ), //i
    .io_sel (DU_Q4D4d9_EXT_io_c), //i
    .io_s   (DU_Q4D4d8_EXT_io_s), //o
    .io_c   (DU_Q4D4d8_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q4D4d9_EXT (
    .io_a   (DU_Q5D5d8_EXT_io_s), //i
    .io_b   (1'b1              ), //i
    .io_y   (DU_Q4D4d8_EXT_io_c), //i
    .io_sel (DU_Q4D4d9_EXT_io_c), //i
    .io_s   (DU_Q4D4d9_EXT_io_s), //o
    .io_c   (DU_Q4D4d9_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q4D4d0 (
    .io_a   (hadDvdTwosS_4     ), //i
    .io_b   (xorDvr_0          ), //i
    .io_y   (dvrTwosEnInverted ), //i
    .io_sel (DU_Q4D4d9_EXT_io_c), //i
    .io_s   (DU_Q4D4d0_io_s    ), //o
    .io_c   (DU_Q4D4d0_io_c    )  //o
  );
  DIVUNITFA DU_Q4D4d1 (
    .io_a   (DU_Q5D5d0_io_s    ), //i
    .io_b   (xorDvr_1          ), //i
    .io_y   (DU_Q4D4d0_io_c    ), //i
    .io_sel (DU_Q4D4d9_EXT_io_c), //i
    .io_s   (DU_Q4D4d1_io_s    ), //o
    .io_c   (DU_Q4D4d1_io_c    )  //o
  );
  DIVUNITFA DU_Q4D4d2 (
    .io_a   (DU_Q5D5d1_io_s    ), //i
    .io_b   (xorDvr_2          ), //i
    .io_y   (DU_Q4D4d1_io_c    ), //i
    .io_sel (DU_Q4D4d9_EXT_io_c), //i
    .io_s   (DU_Q4D4d2_io_s    ), //o
    .io_c   (DU_Q4D4d2_io_c    )  //o
  );
  DIVUNITFA DU_Q4D4d3 (
    .io_a   (DU_Q5D5d2_io_s    ), //i
    .io_b   (xorDvr_3          ), //i
    .io_y   (DU_Q4D4d2_io_c    ), //i
    .io_sel (DU_Q4D4d9_EXT_io_c), //i
    .io_s   (DU_Q4D4d3_io_s    ), //o
    .io_c   (DU_Q4D4d3_io_c    )  //o
  );
  DIVUNITFA DU_Q4D4d4 (
    .io_a   (DU_Q5D5d3_io_s    ), //i
    .io_b   (xorDvr_4          ), //i
    .io_y   (DU_Q4D4d3_io_c    ), //i
    .io_sel (DU_Q4D4d9_EXT_io_c), //i
    .io_s   (DU_Q4D4d4_io_s    ), //o
    .io_c   (DU_Q4D4d4_io_c    )  //o
  );
  DIVUNITFA DU_Q4D4d5 (
    .io_a   (DU_Q5D5d4_io_s    ), //i
    .io_b   (xorDvr_5          ), //i
    .io_y   (DU_Q4D4d4_io_c    ), //i
    .io_sel (DU_Q4D4d9_EXT_io_c), //i
    .io_s   (DU_Q4D4d5_io_s    ), //o
    .io_c   (DU_Q4D4d5_io_c    )  //o
  );
  DIVUNITFA DU_Q4D4d6 (
    .io_a   (DU_Q5D5d5_io_s    ), //i
    .io_b   (xorDvr_6          ), //i
    .io_y   (DU_Q4D4d5_io_c    ), //i
    .io_sel (DU_Q4D4d9_EXT_io_c), //i
    .io_s   (DU_Q4D4d6_io_s    ), //o
    .io_c   (DU_Q4D4d6_io_c    )  //o
  );
  DIVUNITFA DU_Q4D4d7 (
    .io_a   (DU_Q5D5d6_io_s    ), //i
    .io_b   (xorDvr_7          ), //i
    .io_y   (DU_Q4D4d6_io_c    ), //i
    .io_sel (DU_Q4D4d9_EXT_io_c), //i
    .io_s   (DU_Q4D4d7_io_s    ), //o
    .io_c   (DU_Q4D4d7_io_c    )  //o
  );
  DIVUNITFA DU_Q5D5d8_EXT (
    .io_a   (DU_Q6D6d7_io_s    ), //i
    .io_b   (1'b1              ), //i
    .io_y   (DU_Q5D5d7_io_c    ), //i
    .io_sel (DU_Q5D5d8_EXT_io_c), //i
    .io_s   (DU_Q5D5d8_EXT_io_s), //o
    .io_c   (DU_Q5D5d8_EXT_io_c)  //o
  );
  DIVUNITFA DU_Q5D5d0 (
    .io_a   (hadDvdTwosS_5     ), //i
    .io_b   (xorDvr_0          ), //i
    .io_y   (dvrTwosEnInverted ), //i
    .io_sel (DU_Q5D5d8_EXT_io_c), //i
    .io_s   (DU_Q5D5d0_io_s    ), //o
    .io_c   (DU_Q5D5d0_io_c    )  //o
  );
  DIVUNITFA DU_Q5D5d1 (
    .io_a   (DU_Q6D6d0_io_s    ), //i
    .io_b   (xorDvr_1          ), //i
    .io_y   (DU_Q5D5d0_io_c    ), //i
    .io_sel (DU_Q5D5d8_EXT_io_c), //i
    .io_s   (DU_Q5D5d1_io_s    ), //o
    .io_c   (DU_Q5D5d1_io_c    )  //o
  );
  DIVUNITFA DU_Q5D5d2 (
    .io_a   (DU_Q6D6d1_io_s    ), //i
    .io_b   (xorDvr_2          ), //i
    .io_y   (DU_Q5D5d1_io_c    ), //i
    .io_sel (DU_Q5D5d8_EXT_io_c), //i
    .io_s   (DU_Q5D5d2_io_s    ), //o
    .io_c   (DU_Q5D5d2_io_c    )  //o
  );
  DIVUNITFA DU_Q5D5d3 (
    .io_a   (DU_Q6D6d2_io_s    ), //i
    .io_b   (xorDvr_3          ), //i
    .io_y   (DU_Q5D5d2_io_c    ), //i
    .io_sel (DU_Q5D5d8_EXT_io_c), //i
    .io_s   (DU_Q5D5d3_io_s    ), //o
    .io_c   (DU_Q5D5d3_io_c    )  //o
  );
  DIVUNITFA DU_Q5D5d4 (
    .io_a   (DU_Q6D6d3_io_s    ), //i
    .io_b   (xorDvr_4          ), //i
    .io_y   (DU_Q5D5d3_io_c    ), //i
    .io_sel (DU_Q5D5d8_EXT_io_c), //i
    .io_s   (DU_Q5D5d4_io_s    ), //o
    .io_c   (DU_Q5D5d4_io_c    )  //o
  );
  DIVUNITFA DU_Q5D5d5 (
    .io_a   (DU_Q6D6d4_io_s    ), //i
    .io_b   (xorDvr_5          ), //i
    .io_y   (DU_Q5D5d4_io_c    ), //i
    .io_sel (DU_Q5D5d8_EXT_io_c), //i
    .io_s   (DU_Q5D5d5_io_s    ), //o
    .io_c   (DU_Q5D5d5_io_c    )  //o
  );
  DIVUNITFA DU_Q5D5d6 (
    .io_a   (DU_Q6D6d5_io_s    ), //i
    .io_b   (xorDvr_6          ), //i
    .io_y   (DU_Q5D5d5_io_c    ), //i
    .io_sel (DU_Q5D5d8_EXT_io_c), //i
    .io_s   (DU_Q5D5d6_io_s    ), //o
    .io_c   (DU_Q5D5d6_io_c    )  //o
  );
  DIVUNITFA DU_Q5D5d7 (
    .io_a   (DU_Q6D6d6_io_s    ), //i
    .io_b   (xorDvr_7          ), //i
    .io_y   (DU_Q5D5d6_io_c    ), //i
    .io_sel (DU_Q5D5d8_EXT_io_c), //i
    .io_s   (DU_Q5D5d7_io_s    ), //o
    .io_c   (DU_Q5D5d7_io_c    )  //o
  );
  DIVUNITFA DU_Q6D6d0 (
    .io_a   (hadDvdTwosS_6    ), //i
    .io_b   (xorDvr_0         ), //i
    .io_y   (dvrTwosEnInverted), //i
    .io_sel (DU_Q6D6d7_io_c   ), //i
    .io_s   (DU_Q6D6d0_io_s   ), //o
    .io_c   (DU_Q6D6d0_io_c   )  //o
  );
  DIVUNITFA DU_Q6D6d1 (
    .io_a   (DU_Q7D7d0_io_s), //i
    .io_b   (xorDvr_1      ), //i
    .io_y   (DU_Q6D6d0_io_c), //i
    .io_sel (DU_Q6D6d7_io_c), //i
    .io_s   (DU_Q6D6d1_io_s), //o
    .io_c   (DU_Q6D6d1_io_c)  //o
  );
  DIVUNITFA DU_Q6D6d2 (
    .io_a   (DU_Q7D7d1_io_s), //i
    .io_b   (xorDvr_2      ), //i
    .io_y   (DU_Q6D6d1_io_c), //i
    .io_sel (DU_Q6D6d7_io_c), //i
    .io_s   (DU_Q6D6d2_io_s), //o
    .io_c   (DU_Q6D6d2_io_c)  //o
  );
  DIVUNITFA DU_Q6D6d3 (
    .io_a   (DU_Q7D7d2_io_s), //i
    .io_b   (xorDvr_3      ), //i
    .io_y   (DU_Q6D6d2_io_c), //i
    .io_sel (DU_Q6D6d7_io_c), //i
    .io_s   (DU_Q6D6d3_io_s), //o
    .io_c   (DU_Q6D6d3_io_c)  //o
  );
  DIVUNITFA DU_Q6D6d4 (
    .io_a   (DU_Q7D7d3_io_s), //i
    .io_b   (xorDvr_4      ), //i
    .io_y   (DU_Q6D6d3_io_c), //i
    .io_sel (DU_Q6D6d7_io_c), //i
    .io_s   (DU_Q6D6d4_io_s), //o
    .io_c   (DU_Q6D6d4_io_c)  //o
  );
  DIVUNITFA DU_Q6D6d5 (
    .io_a   (DU_Q7D7d4_io_s), //i
    .io_b   (xorDvr_5      ), //i
    .io_y   (DU_Q6D6d4_io_c), //i
    .io_sel (DU_Q6D6d7_io_c), //i
    .io_s   (DU_Q6D6d5_io_s), //o
    .io_c   (DU_Q6D6d5_io_c)  //o
  );
  DIVUNITFA DU_Q6D6d6 (
    .io_a   (DU_Q7D7d5_io_s), //i
    .io_b   (xorDvr_6      ), //i
    .io_y   (DU_Q6D6d5_io_c), //i
    .io_sel (DU_Q6D6d7_io_c), //i
    .io_s   (DU_Q6D6d6_io_s), //o
    .io_c   (DU_Q6D6d6_io_c)  //o
  );
  DIVUNITFA DU_Q6D6d7 (
    .io_a   (DU_Q7D7d6_io_s), //i
    .io_b   (xorDvr_7      ), //i
    .io_y   (DU_Q6D6d6_io_c), //i
    .io_sel (DU_Q6D6d7_io_c), //i
    .io_s   (DU_Q6D6d7_io_s), //o
    .io_c   (DU_Q6D6d7_io_c)  //o
  );
  DIVUNITFA DU_Q7D7d0 (
    .io_a   (hadDvdTwosS_7    ), //i
    .io_b   (xorDvr_0         ), //i
    .io_y   (dvrTwosEnInverted), //i
    .io_sel (DU_Q7D7d7_io_c   ), //i
    .io_s   (DU_Q7D7d0_io_s   ), //o
    .io_c   (DU_Q7D7d0_io_c   )  //o
  );
  DIVUNITFA DU_Q7D7d1 (
    .io_a   (1'b0          ), //i
    .io_b   (xorDvr_1      ), //i
    .io_y   (DU_Q7D7d0_io_c), //i
    .io_sel (DU_Q7D7d7_io_c), //i
    .io_s   (DU_Q7D7d1_io_s), //o
    .io_c   (DU_Q7D7d1_io_c)  //o
  );
  DIVUNITFA DU_Q7D7d2 (
    .io_a   (1'b0          ), //i
    .io_b   (xorDvr_2      ), //i
    .io_y   (DU_Q7D7d1_io_c), //i
    .io_sel (DU_Q7D7d7_io_c), //i
    .io_s   (DU_Q7D7d2_io_s), //o
    .io_c   (DU_Q7D7d2_io_c)  //o
  );
  DIVUNITFA DU_Q7D7d3 (
    .io_a   (1'b0          ), //i
    .io_b   (xorDvr_3      ), //i
    .io_y   (DU_Q7D7d2_io_c), //i
    .io_sel (DU_Q7D7d7_io_c), //i
    .io_s   (DU_Q7D7d3_io_s), //o
    .io_c   (DU_Q7D7d3_io_c)  //o
  );
  DIVUNITFA DU_Q7D7d4 (
    .io_a   (1'b0          ), //i
    .io_b   (xorDvr_4      ), //i
    .io_y   (DU_Q7D7d3_io_c), //i
    .io_sel (DU_Q7D7d7_io_c), //i
    .io_s   (DU_Q7D7d4_io_s), //o
    .io_c   (DU_Q7D7d4_io_c)  //o
  );
  DIVUNITFA DU_Q7D7d5 (
    .io_a   (1'b0          ), //i
    .io_b   (xorDvr_5      ), //i
    .io_y   (DU_Q7D7d4_io_c), //i
    .io_sel (DU_Q7D7d7_io_c), //i
    .io_s   (DU_Q7D7d5_io_s), //o
    .io_c   (DU_Q7D7d5_io_c)  //o
  );
  DIVUNITFA DU_Q7D7d6 (
    .io_a   (1'b0          ), //i
    .io_b   (xorDvr_6      ), //i
    .io_y   (DU_Q7D7d5_io_c), //i
    .io_sel (DU_Q7D7d7_io_c), //i
    .io_s   (DU_Q7D7d6_io_s), //o
    .io_c   (DU_Q7D7d6_io_c)  //o
  );
  DIVUNITFA DU_Q7D7d7 (
    .io_a   (1'b0          ), //i
    .io_b   (xorDvr_7      ), //i
    .io_y   (DU_Q7D7d6_io_c), //i
    .io_sel (DU_Q7D7d7_io_c), //i
    .io_s   (DU_Q7D7d7_io_s), //o
    .io_c   (DU_Q7D7d7_io_c)  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAR0_SIGN (
    .A    (HAR0_SIGN_A   ), //i
    .B    (dvdTwosEn     ), //i
    .COUT (HAR0_SIGN_COUT), //o
    .SUM  (HAR0_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAR1_SIGN (
    .A    (HAR1_SIGN_A   ), //i
    .B    (HAR0_SIGN_COUT), //i
    .COUT (HAR1_SIGN_COUT), //o
    .SUM  (HAR1_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAR2_SIGN (
    .A    (HAR2_SIGN_A   ), //i
    .B    (HAR1_SIGN_COUT), //i
    .COUT (HAR2_SIGN_COUT), //o
    .SUM  (HAR2_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAR3_SIGN (
    .A    (HAR3_SIGN_A   ), //i
    .B    (HAR2_SIGN_COUT), //i
    .COUT (HAR3_SIGN_COUT), //o
    .SUM  (HAR3_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAR4_SIGN (
    .A    (HAR4_SIGN_A   ), //i
    .B    (HAR3_SIGN_COUT), //i
    .COUT (HAR4_SIGN_COUT), //o
    .SUM  (HAR4_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAR5_SIGN (
    .A    (HAR5_SIGN_A   ), //i
    .B    (HAR4_SIGN_COUT), //i
    .COUT (HAR5_SIGN_COUT), //o
    .SUM  (HAR5_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAR6_SIGN (
    .A    (HAR6_SIGN_A   ), //i
    .B    (HAR5_SIGN_COUT), //i
    .COUT (HAR6_SIGN_COUT), //o
    .SUM  (HAR6_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAR7_SIGN (
    .A    (HAR7_SIGN_A   ), //i
    .B    (HAR6_SIGN_COUT), //i
    .COUT (HAR7_SIGN_COUT), //o
    .SUM  (HAR7_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAQ0_SIGN (
    .A    (HAQ0_SIGN_A   ), //i
    .B    (qSign         ), //i
    .COUT (HAQ0_SIGN_COUT), //o
    .SUM  (HAQ0_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAQ1_SIGN (
    .A    (HAQ1_SIGN_A   ), //i
    .B    (HAQ0_SIGN_COUT), //i
    .COUT (HAQ1_SIGN_COUT), //o
    .SUM  (HAQ1_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAQ2_SIGN (
    .A    (HAQ2_SIGN_A   ), //i
    .B    (HAQ1_SIGN_COUT), //i
    .COUT (HAQ2_SIGN_COUT), //o
    .SUM  (HAQ2_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAQ3_SIGN (
    .A    (HAQ3_SIGN_A   ), //i
    .B    (HAQ2_SIGN_COUT), //i
    .COUT (HAQ3_SIGN_COUT), //o
    .SUM  (HAQ3_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAQ4_SIGN (
    .A    (HAQ4_SIGN_A   ), //i
    .B    (HAQ3_SIGN_COUT), //i
    .COUT (HAQ4_SIGN_COUT), //o
    .SUM  (HAQ4_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAQ5_SIGN (
    .A    (HAQ5_SIGN_A   ), //i
    .B    (HAQ4_SIGN_COUT), //i
    .COUT (HAQ5_SIGN_COUT), //o
    .SUM  (HAQ5_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAQ6_SIGN (
    .A    (HAQ6_SIGN_A   ), //i
    .B    (HAQ5_SIGN_COUT), //i
    .COUT (HAQ6_SIGN_COUT), //o
    .SUM  (HAQ6_SIGN_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HAQ7_SIGN (
    .A    (HAQ7_SIGN_A   ), //i
    .B    (HAQ6_SIGN_COUT), //i
    .COUT (HAQ7_SIGN_COUT), //o
    .SUM  (HAQ7_SIGN_SUM )  //o
  );
  assign isZero = (! (|io_dsor));
  assign dvdTwosEn = (io_opsigned && io_dend[7]);
  assign dvrTwosEn = (io_opsigned && io_dsor[7]);
  assign dvrTwosEnInverted = (! dvrTwosEn);
  assign qSign = (dvdTwosEn ^ dvrTwosEn);
  assign HAD_DVD_TWOS_0_A = (io_dend[0] ^ dvdTwosEn);
  assign HAD_DVD_TWOS_0_B = _zz_B[0];
  assign hadDvdTwosS_0 = HAD_DVD_TWOS_0_SUM;
  assign HAD_DVD_TWOS_1_A = (io_dend[1] ^ dvdTwosEn);
  assign hadDvdTwosS_1 = HAD_DVD_TWOS_1_SUM;
  assign HAD_DVD_TWOS_2_A = (io_dend[2] ^ dvdTwosEn);
  assign hadDvdTwosS_2 = HAD_DVD_TWOS_2_SUM;
  assign HAD_DVD_TWOS_3_A = (io_dend[3] ^ dvdTwosEn);
  assign hadDvdTwosS_3 = HAD_DVD_TWOS_3_SUM;
  assign HAD_DVD_TWOS_4_A = (io_dend[4] ^ dvdTwosEn);
  assign hadDvdTwosS_4 = HAD_DVD_TWOS_4_SUM;
  assign HAD_DVD_TWOS_5_A = (io_dend[5] ^ dvdTwosEn);
  assign hadDvdTwosS_5 = HAD_DVD_TWOS_5_SUM;
  assign HAD_DVD_TWOS_6_A = (io_dend[6] ^ dvdTwosEn);
  assign hadDvdTwosS_6 = HAD_DVD_TWOS_6_SUM;
  assign HAD_DVD_TWOS_7_A = (io_dend[7] ^ dvdTwosEn);
  assign hadDvdTwosS_7 = HAD_DVD_TWOS_7_SUM;
  assign xorDvr_0 = (io_dsor[0] ^ dvrTwosEnInverted);
  assign xorDvr_1 = (io_dsor[1] ^ dvrTwosEnInverted);
  assign xorDvr_2 = (io_dsor[2] ^ dvrTwosEnInverted);
  assign xorDvr_3 = (io_dsor[3] ^ dvrTwosEnInverted);
  assign xorDvr_4 = (io_dsor[4] ^ dvrTwosEnInverted);
  assign xorDvr_5 = (io_dsor[5] ^ dvrTwosEnInverted);
  assign xorDvr_6 = (io_dsor[6] ^ dvrTwosEnInverted);
  assign xorDvr_7 = (io_dsor[7] ^ dvrTwosEnInverted);
  assign HAR0_SIGN_A = (dvdTwosEn ^ DU_Q0D0d0_io_s);
  assign HAR1_SIGN_A = (dvdTwosEn ^ DU_Q0D0d1_io_s);
  assign HAR2_SIGN_A = (dvdTwosEn ^ DU_Q0D0d2_io_s);
  assign HAR3_SIGN_A = (dvdTwosEn ^ DU_Q0D0d3_io_s);
  assign HAR4_SIGN_A = (dvdTwosEn ^ DU_Q0D0d4_io_s);
  assign HAR5_SIGN_A = (dvdTwosEn ^ DU_Q0D0d5_io_s);
  assign HAR6_SIGN_A = (dvdTwosEn ^ DU_Q0D0d6_io_s);
  assign HAR7_SIGN_A = (dvdTwosEn ^ DU_Q0D0d7_io_s);
  assign HAQ0_SIGN_A = (qSign ^ DU_Q0D0d12_EXT_io_c);
  assign HAQ1_SIGN_A = (qSign ^ DU_Q1D1d12_EXT_io_c);
  assign HAQ2_SIGN_A = (qSign ^ DU_Q2D2d11_EXT_io_c);
  assign HAQ3_SIGN_A = (qSign ^ DU_Q3D3d10_EXT_io_c);
  assign HAQ4_SIGN_A = (qSign ^ DU_Q4D4d9_EXT_io_c);
  assign HAQ5_SIGN_A = (qSign ^ DU_Q5D5d8_EXT_io_c);
  assign HAQ6_SIGN_A = (qSign ^ DU_Q6D6d7_io_c);
  assign HAQ7_SIGN_A = (qSign ^ DU_Q7D7d7_io_c);
  always @(*) begin
    io_q[0] = HAQ0_SIGN_SUM;
    io_q[1] = HAQ1_SIGN_SUM;
    io_q[2] = HAQ2_SIGN_SUM;
    io_q[3] = HAQ3_SIGN_SUM;
    io_q[4] = HAQ4_SIGN_SUM;
    io_q[5] = HAQ5_SIGN_SUM;
    io_q[6] = HAQ6_SIGN_SUM;
    io_q[7] = HAQ7_SIGN_SUM;
  end

  always @(*) begin
    io_r[0] = HAR0_SIGN_SUM;
    io_r[1] = HAR1_SIGN_SUM;
    io_r[2] = HAR2_SIGN_SUM;
    io_r[3] = HAR3_SIGN_SUM;
    io_r[4] = HAR4_SIGN_SUM;
    io_r[5] = HAR5_SIGN_SUM;
    io_r[6] = HAR6_SIGN_SUM;
    io_r[7] = HAR7_SIGN_SUM;
  end

  assign io_edivzero = (io_en ? isZero : 1'b0);
  assign io_edivoverflow = (io_en ? DU_Q7D7d7_io_s : 1'b0);

endmodule

module Mul (
  input               io_en,
  input               io_opsigned,
  input      [7:0]    io_a,
  input      [7:0]    io_b,
  output reg [15:0]   io_p
);

  wire                HA_P1A0B1_COUT;
  wire                HA_P1A0B1_SUM;
  wire                FA_P2A1B1_COUT;
  wire                FA_P2A1B1_SUM;
  wire                HA_P2A0B2_COUT;
  wire                HA_P2A0B2_SUM;
  wire                FA_P3A2B1_COUT;
  wire                FA_P3A2B1_SUM;
  wire                FA_P3A1B2_COUT;
  wire                FA_P3A1B2_SUM;
  wire                HA_P3A0B3_COUT;
  wire                HA_P3A0B3_SUM;
  wire                FA_P4A3B1_COUT;
  wire                FA_P4A3B1_SUM;
  wire                FA_P4A2B2_COUT;
  wire                FA_P4A2B2_SUM;
  wire                FA_P4A1B3_COUT;
  wire                FA_P4A1B3_SUM;
  wire                HA_P4A0B4_COUT;
  wire                HA_P4A0B4_SUM;
  wire                FA_P5A4B1_COUT;
  wire                FA_P5A4B1_SUM;
  wire                FA_P5A3B2_COUT;
  wire                FA_P5A3B2_SUM;
  wire                FA_P5A2B3_COUT;
  wire                FA_P5A2B3_SUM;
  wire                FA_P5A1B4_COUT;
  wire                FA_P5A1B4_SUM;
  wire                HA_P5A0B5_COUT;
  wire                HA_P5A0B5_SUM;
  wire                FA_P6A5B1_COUT;
  wire                FA_P6A5B1_SUM;
  wire                FA_P6A4B2_COUT;
  wire                FA_P6A4B2_SUM;
  wire                FA_P6A3B3_COUT;
  wire                FA_P6A3B3_SUM;
  wire                FA_P6A2B4_COUT;
  wire                FA_P6A2B4_SUM;
  wire                FA_P6A1B5_COUT;
  wire                FA_P6A1B5_SUM;
  wire                HA_P6A0B6_COUT;
  wire                HA_P6A0B6_SUM;
  wire                FA_P7A6B1_COUT;
  wire                FA_P7A6B1_SUM;
  wire                FA_P7A5B2_COUT;
  wire                FA_P7A5B2_SUM;
  wire                FA_P7A4B3_COUT;
  wire                FA_P7A4B3_SUM;
  wire                FA_P7A3B4_COUT;
  wire                FA_P7A3B4_SUM;
  wire                FA_P7A2B5_COUT;
  wire                FA_P7A2B5_SUM;
  wire                FA_P7A1B6_COUT;
  wire                FA_P7A1B6_SUM;
  wire                FA_P7A0B7_COUT;
  wire                FA_P7A0B7_SUM;
  wire                FA_P8A7B1_COUT;
  wire                FA_P8A7B1_SUM;
  wire                FA_P8A6B2_COUT;
  wire                FA_P8A6B2_SUM;
  wire                FA_P8A5B3_COUT;
  wire                FA_P8A5B3_SUM;
  wire                FA_P8A4B4_COUT;
  wire                FA_P8A4B4_SUM;
  wire                FA_P8A3B5_COUT;
  wire                FA_P8A3B5_SUM;
  wire                FA_P8A2B6_COUT;
  wire                FA_P8A2B6_SUM;
  wire                FA_P8A1B7_COUT;
  wire                FA_P8A1B7_SUM;
  wire                FA_P9A7B1_COUT;
  wire                FA_P9A7B1_SUM;
  wire                FA_P9A7B2_COUT;
  wire                FA_P9A7B2_SUM;
  wire                FA_P9A6B3_COUT;
  wire                FA_P9A6B3_SUM;
  wire                FA_P9A5B4_COUT;
  wire                FA_P9A5B4_SUM;
  wire                FA_P9A4B5_COUT;
  wire                FA_P9A4B5_SUM;
  wire                FA_P9A3B6_COUT;
  wire                FA_P9A3B6_SUM;
  wire                FA_P9A2B7_COUT;
  wire                FA_P9A2B7_SUM;
  wire                FA_P10A7B1_COUT;
  wire                FA_P10A7B1_SUM;
  wire                FA_P10A7B2_COUT;
  wire                FA_P10A7B2_SUM;
  wire                FA_P10A7B3_COUT;
  wire                FA_P10A7B3_SUM;
  wire                FA_P10A6B4_COUT;
  wire                FA_P10A6B4_SUM;
  wire                FA_P10A5B5_COUT;
  wire                FA_P10A5B5_SUM;
  wire                FA_P10A4B6_COUT;
  wire                FA_P10A4B6_SUM;
  wire                FA_P10A3B7_COUT;
  wire                FA_P10A3B7_SUM;
  wire                FA_P11A7B1_COUT;
  wire                FA_P11A7B1_SUM;
  wire                FA_P11A7B2_COUT;
  wire                FA_P11A7B2_SUM;
  wire                FA_P11A7B3_COUT;
  wire                FA_P11A7B3_SUM;
  wire                FA_P11A7B4_COUT;
  wire                FA_P11A7B4_SUM;
  wire                FA_P11A6B5_COUT;
  wire                FA_P11A6B5_SUM;
  wire                FA_P11A5B6_COUT;
  wire                FA_P11A5B6_SUM;
  wire                FA_P11A4B7_COUT;
  wire                FA_P11A4B7_SUM;
  wire                FA_P12A7B1_COUT;
  wire                FA_P12A7B1_SUM;
  wire                FA_P12A7B2_COUT;
  wire                FA_P12A7B2_SUM;
  wire                FA_P12A7B3_COUT;
  wire                FA_P12A7B3_SUM;
  wire                FA_P12A7B4_COUT;
  wire                FA_P12A7B4_SUM;
  wire                FA_P12A7B5_COUT;
  wire                FA_P12A7B5_SUM;
  wire                FA_P12A6B6_COUT;
  wire                FA_P12A6B6_SUM;
  wire                FA_P12A5B7_COUT;
  wire                FA_P12A5B7_SUM;
  wire                FA_P13A7B1_COUT;
  wire                FA_P13A7B1_SUM;
  wire                FA_P13A7B2_COUT;
  wire                FA_P13A7B2_SUM;
  wire                FA_P13A7B3_COUT;
  wire                FA_P13A7B3_SUM;
  wire                FA_P13A7B4_COUT;
  wire                FA_P13A7B4_SUM;
  wire                FA_P13A7B5_COUT;
  wire                FA_P13A7B5_SUM;
  wire                FA_P13A7B6_COUT;
  wire                FA_P13A7B6_SUM;
  wire                FA_P13A6B7_COUT;
  wire                FA_P13A6B7_SUM;
  wire                FA_P14A7B1_COUT;
  wire                FA_P14A7B1_SUM;
  wire                FA_P14A7B2_COUT;
  wire                FA_P14A7B2_SUM;
  wire                FA_P14A7B3_COUT;
  wire                FA_P14A7B3_SUM;
  wire                FA_P14A7B4_COUT;
  wire                FA_P14A7B4_SUM;
  wire                FA_P14A7B5_COUT;
  wire                FA_P14A7B5_SUM;
  wire                FA_P14A7B6_COUT;
  wire                FA_P14A7B6_SUM;
  wire                FA_P14A7B7_COUT;
  wire                FA_P14A7B7_SUM;
  wire                FA_P15A7B1_COUT;
  wire                FA_P15A7B1_SUM;
  wire                FA_P15A7B2_COUT;
  wire                FA_P15A7B2_SUM;
  wire                FA_P15A7B3_COUT;
  wire                FA_P15A7B3_SUM;
  wire                FA_P15A7B4_COUT;
  wire                FA_P15A7B4_SUM;
  wire                FA_P15A7B5_COUT;
  wire                FA_P15A7B5_SUM;
  wire                FA_P15A7B6_COUT;
  wire                FA_P15A7B6_SUM;
  wire                FA_P15A7B7_COUT;
  wire                FA_P15A7B7_SUM;
  wire                A0xB0_0;
  wire                A1xB0_1;
  wire                A2xB0_2;
  wire                A3xB0_3;
  wire                A4xB0_4;
  wire                A5xB0_5;
  wire                A6xB0_6;
  wire                A7xB0_7;
  wire                A0xB1_8;
  wire                A1xB1_9;
  wire                A2xB1_10;
  wire                A3xB1_11;
  wire                A4xB1_12;
  wire                A5xB1_13;
  wire                A6xB1_14;
  wire                A7xB1_15;
  wire                A0xB2_16;
  wire                A1xB2_17;
  wire                A2xB2_18;
  wire                A3xB2_19;
  wire                A4xB2_20;
  wire                A5xB2_21;
  wire                A6xB2_22;
  wire                A7xB2_23;
  wire                A0xB3_24;
  wire                A1xB3_25;
  wire                A2xB3_26;
  wire                A3xB3_27;
  wire                A4xB3_28;
  wire                A5xB3_29;
  wire                A6xB3_30;
  wire                A7xB3_31;
  wire                A0xB4_32;
  wire                A1xB4_33;
  wire                A2xB4_34;
  wire                A3xB4_35;
  wire                A4xB4_36;
  wire                A5xB4_37;
  wire                A6xB4_38;
  wire                A7xB4_39;
  wire                A0xB5_40;
  wire                A1xB5_41;
  wire                A2xB5_42;
  wire                A3xB5_43;
  wire                A4xB5_44;
  wire                A5xB5_45;
  wire                A6xB5_46;
  wire                A7xB5_47;
  wire                A0xB6_48;
  wire                A1xB6_49;
  wire                A2xB6_50;
  wire                A3xB6_51;
  wire                A4xB6_52;
  wire                A5xB6_53;
  wire                A6xB6_54;
  wire                A7xB6_55;
  wire                A0xB7_56;
  wire                A1xB7_57;
  wire                A2xB7_58;
  wire                A3xB7_59;
  wire                A4xB7_60;
  wire                A5xB7_61;
  wire                A6xB7_62;
  wire                A7xB7_63;
  wire                twosEn;
  wire                P7_INV;
  wire                P8_INV;
  wire                P9_INV;
  wire                P10_INV;
  wire                P11_INV;
  wire                P12_INV;
  wire                P13_INV;
  wire                P14_INV;
  wire                P7_EXTEN_EN;
  wire                P8_EXTEN_EN;
  wire                P9_EXTEN_EN;
  wire                P10_EXTEN_EN;
  wire                P11_EXTEN_EN;
  wire                P12_EXTEN_EN;
  wire                P13_EXTEN_EN;
  wire                P14_EXTEN_EN;

  (* keep , syn_keep *) sky130_fd_sc_hd__ha HA_P1A0B1 (
    .A    (A1xB0_1       ), //i
    .B    (A0xB1_8       ), //i
    .COUT (HA_P1A0B1_COUT), //o
    .SUM  (HA_P1A0B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P2A1B1 (
    .A    (A2xB0_2       ), //i
    .B    (A1xB1_9       ), //i
    .CIN  (HA_P1A0B1_COUT), //i
    .COUT (FA_P2A1B1_COUT), //o
    .SUM  (FA_P2A1B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HA_P2A0B2 (
    .A    (FA_P2A1B1_SUM ), //i
    .B    (A0xB2_16      ), //i
    .COUT (HA_P2A0B2_COUT), //o
    .SUM  (HA_P2A0B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P3A2B1 (
    .A    (A3xB0_3       ), //i
    .B    (A2xB1_10      ), //i
    .CIN  (FA_P2A1B1_COUT), //i
    .COUT (FA_P3A2B1_COUT), //o
    .SUM  (FA_P3A2B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P3A1B2 (
    .A    (FA_P3A2B1_SUM ), //i
    .B    (A1xB2_17      ), //i
    .CIN  (HA_P2A0B2_COUT), //i
    .COUT (FA_P3A1B2_COUT), //o
    .SUM  (FA_P3A1B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HA_P3A0B3 (
    .A    (FA_P3A1B2_SUM ), //i
    .B    (A0xB3_24      ), //i
    .COUT (HA_P3A0B3_COUT), //o
    .SUM  (HA_P3A0B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P4A3B1 (
    .A    (A4xB0_4       ), //i
    .B    (A3xB1_11      ), //i
    .CIN  (FA_P3A2B1_COUT), //i
    .COUT (FA_P4A3B1_COUT), //o
    .SUM  (FA_P4A3B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P4A2B2 (
    .A    (FA_P4A3B1_SUM ), //i
    .B    (A2xB2_18      ), //i
    .CIN  (FA_P3A1B2_COUT), //i
    .COUT (FA_P4A2B2_COUT), //o
    .SUM  (FA_P4A2B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P4A1B3 (
    .A    (FA_P4A2B2_SUM ), //i
    .B    (A1xB3_25      ), //i
    .CIN  (HA_P3A0B3_COUT), //i
    .COUT (FA_P4A1B3_COUT), //o
    .SUM  (FA_P4A1B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HA_P4A0B4 (
    .A    (FA_P4A1B3_SUM ), //i
    .B    (A0xB4_32      ), //i
    .COUT (HA_P4A0B4_COUT), //o
    .SUM  (HA_P4A0B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P5A4B1 (
    .A    (A5xB0_5       ), //i
    .B    (A4xB1_12      ), //i
    .CIN  (FA_P4A3B1_COUT), //i
    .COUT (FA_P5A4B1_COUT), //o
    .SUM  (FA_P5A4B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P5A3B2 (
    .A    (FA_P5A4B1_SUM ), //i
    .B    (A3xB2_19      ), //i
    .CIN  (FA_P4A2B2_COUT), //i
    .COUT (FA_P5A3B2_COUT), //o
    .SUM  (FA_P5A3B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P5A2B3 (
    .A    (FA_P5A3B2_SUM ), //i
    .B    (A2xB3_26      ), //i
    .CIN  (FA_P4A1B3_COUT), //i
    .COUT (FA_P5A2B3_COUT), //o
    .SUM  (FA_P5A2B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P5A1B4 (
    .A    (FA_P5A2B3_SUM ), //i
    .B    (A1xB4_33      ), //i
    .CIN  (HA_P4A0B4_COUT), //i
    .COUT (FA_P5A1B4_COUT), //o
    .SUM  (FA_P5A1B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HA_P5A0B5 (
    .A    (FA_P5A1B4_SUM ), //i
    .B    (A0xB5_40      ), //i
    .COUT (HA_P5A0B5_COUT), //o
    .SUM  (HA_P5A0B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P6A5B1 (
    .A    (A6xB0_6       ), //i
    .B    (A5xB1_13      ), //i
    .CIN  (FA_P5A4B1_COUT), //i
    .COUT (FA_P6A5B1_COUT), //o
    .SUM  (FA_P6A5B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P6A4B2 (
    .A    (FA_P6A5B1_SUM ), //i
    .B    (A4xB2_20      ), //i
    .CIN  (FA_P5A3B2_COUT), //i
    .COUT (FA_P6A4B2_COUT), //o
    .SUM  (FA_P6A4B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P6A3B3 (
    .A    (FA_P6A4B2_SUM ), //i
    .B    (A3xB3_27      ), //i
    .CIN  (FA_P5A2B3_COUT), //i
    .COUT (FA_P6A3B3_COUT), //o
    .SUM  (FA_P6A3B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P6A2B4 (
    .A    (FA_P6A3B3_SUM ), //i
    .B    (A2xB4_34      ), //i
    .CIN  (FA_P5A1B4_COUT), //i
    .COUT (FA_P6A2B4_COUT), //o
    .SUM  (FA_P6A2B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P6A1B5 (
    .A    (FA_P6A2B4_SUM ), //i
    .B    (A1xB5_41      ), //i
    .CIN  (HA_P5A0B5_COUT), //i
    .COUT (FA_P6A1B5_COUT), //o
    .SUM  (FA_P6A1B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__ha HA_P6A0B6 (
    .A    (FA_P6A1B5_SUM ), //i
    .B    (A0xB6_48      ), //i
    .COUT (HA_P6A0B6_COUT), //o
    .SUM  (HA_P6A0B6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P7A6B1 (
    .A    (A7xB0_7       ), //i
    .B    (A6xB1_14      ), //i
    .CIN  (FA_P6A5B1_COUT), //i
    .COUT (FA_P7A6B1_COUT), //o
    .SUM  (FA_P7A6B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P7A5B2 (
    .A    (FA_P7A6B1_SUM ), //i
    .B    (A5xB2_21      ), //i
    .CIN  (FA_P6A4B2_COUT), //i
    .COUT (FA_P7A5B2_COUT), //o
    .SUM  (FA_P7A5B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P7A4B3 (
    .A    (FA_P7A5B2_SUM ), //i
    .B    (A4xB3_28      ), //i
    .CIN  (FA_P6A3B3_COUT), //i
    .COUT (FA_P7A4B3_COUT), //o
    .SUM  (FA_P7A4B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P7A3B4 (
    .A    (FA_P7A4B3_SUM ), //i
    .B    (A3xB4_35      ), //i
    .CIN  (FA_P6A2B4_COUT), //i
    .COUT (FA_P7A3B4_COUT), //o
    .SUM  (FA_P7A3B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P7A2B5 (
    .A    (FA_P7A3B4_SUM ), //i
    .B    (A2xB5_42      ), //i
    .CIN  (FA_P6A1B5_COUT), //i
    .COUT (FA_P7A2B5_COUT), //o
    .SUM  (FA_P7A2B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P7A1B6 (
    .A    (FA_P7A2B5_SUM ), //i
    .B    (A1xB6_49      ), //i
    .CIN  (HA_P6A0B6_COUT), //i
    .COUT (FA_P7A1B6_COUT), //o
    .SUM  (FA_P7A1B6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P7A0B7 (
    .A    (FA_P7A1B6_SUM ), //i
    .B    (P7_INV        ), //i
    .CIN  (twosEn        ), //i
    .COUT (FA_P7A0B7_COUT), //o
    .SUM  (FA_P7A0B7_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P8A7B1 (
    .A    (P7_EXTEN_EN   ), //i
    .B    (A7xB1_15      ), //i
    .CIN  (FA_P7A6B1_COUT), //i
    .COUT (FA_P8A7B1_COUT), //o
    .SUM  (FA_P8A7B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P8A6B2 (
    .A    (FA_P8A7B1_SUM ), //i
    .B    (A6xB2_22      ), //i
    .CIN  (FA_P7A5B2_COUT), //i
    .COUT (FA_P8A6B2_COUT), //o
    .SUM  (FA_P8A6B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P8A5B3 (
    .A    (FA_P8A6B2_SUM ), //i
    .B    (A5xB3_29      ), //i
    .CIN  (FA_P7A4B3_COUT), //i
    .COUT (FA_P8A5B3_COUT), //o
    .SUM  (FA_P8A5B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P8A4B4 (
    .A    (FA_P8A5B3_SUM ), //i
    .B    (A4xB4_36      ), //i
    .CIN  (FA_P7A3B4_COUT), //i
    .COUT (FA_P8A4B4_COUT), //o
    .SUM  (FA_P8A4B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P8A3B5 (
    .A    (FA_P8A4B4_SUM ), //i
    .B    (A3xB5_43      ), //i
    .CIN  (FA_P7A2B5_COUT), //i
    .COUT (FA_P8A3B5_COUT), //o
    .SUM  (FA_P8A3B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P8A2B6 (
    .A    (FA_P8A3B5_SUM ), //i
    .B    (A2xB6_50      ), //i
    .CIN  (FA_P7A1B6_COUT), //i
    .COUT (FA_P8A2B6_COUT), //o
    .SUM  (FA_P8A2B6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P8A1B7 (
    .A    (FA_P8A2B6_SUM ), //i
    .B    (P8_INV        ), //i
    .CIN  (FA_P7A0B7_COUT), //i
    .COUT (FA_P8A1B7_COUT), //o
    .SUM  (FA_P8A1B7_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P9A7B1 (
    .A    (P7_EXTEN_EN   ), //i
    .B    (P8_EXTEN_EN   ), //i
    .CIN  (FA_P8A7B1_COUT), //i
    .COUT (FA_P9A7B1_COUT), //o
    .SUM  (FA_P9A7B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P9A7B2 (
    .A    (FA_P9A7B1_SUM ), //i
    .B    (A7xB2_23      ), //i
    .CIN  (FA_P8A6B2_COUT), //i
    .COUT (FA_P9A7B2_COUT), //o
    .SUM  (FA_P9A7B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P9A6B3 (
    .A    (FA_P9A7B2_SUM ), //i
    .B    (A6xB3_30      ), //i
    .CIN  (FA_P8A5B3_COUT), //i
    .COUT (FA_P9A6B3_COUT), //o
    .SUM  (FA_P9A6B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P9A5B4 (
    .A    (FA_P9A6B3_SUM ), //i
    .B    (A5xB4_37      ), //i
    .CIN  (FA_P8A4B4_COUT), //i
    .COUT (FA_P9A5B4_COUT), //o
    .SUM  (FA_P9A5B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P9A4B5 (
    .A    (FA_P9A5B4_SUM ), //i
    .B    (A4xB5_44      ), //i
    .CIN  (FA_P8A3B5_COUT), //i
    .COUT (FA_P9A4B5_COUT), //o
    .SUM  (FA_P9A4B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P9A3B6 (
    .A    (FA_P9A4B5_SUM ), //i
    .B    (A3xB6_51      ), //i
    .CIN  (FA_P8A2B6_COUT), //i
    .COUT (FA_P9A3B6_COUT), //o
    .SUM  (FA_P9A3B6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P9A2B7 (
    .A    (FA_P9A3B6_SUM ), //i
    .B    (P9_INV        ), //i
    .CIN  (FA_P8A1B7_COUT), //i
    .COUT (FA_P9A2B7_COUT), //o
    .SUM  (FA_P9A2B7_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P10A7B1 (
    .A    (P7_EXTEN_EN    ), //i
    .B    (P8_EXTEN_EN    ), //i
    .CIN  (FA_P9A7B1_COUT ), //i
    .COUT (FA_P10A7B1_COUT), //o
    .SUM  (FA_P10A7B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P10A7B2 (
    .A    (FA_P10A7B1_SUM ), //i
    .B    (P9_EXTEN_EN    ), //i
    .CIN  (FA_P9A7B2_COUT ), //i
    .COUT (FA_P10A7B2_COUT), //o
    .SUM  (FA_P10A7B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P10A7B3 (
    .A    (FA_P10A7B2_SUM ), //i
    .B    (A7xB3_31       ), //i
    .CIN  (FA_P9A6B3_COUT ), //i
    .COUT (FA_P10A7B3_COUT), //o
    .SUM  (FA_P10A7B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P10A6B4 (
    .A    (FA_P10A7B3_SUM ), //i
    .B    (A6xB4_38       ), //i
    .CIN  (FA_P9A5B4_COUT ), //i
    .COUT (FA_P10A6B4_COUT), //o
    .SUM  (FA_P10A6B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P10A5B5 (
    .A    (FA_P10A6B4_SUM ), //i
    .B    (A5xB5_45       ), //i
    .CIN  (FA_P9A4B5_COUT ), //i
    .COUT (FA_P10A5B5_COUT), //o
    .SUM  (FA_P10A5B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P10A4B6 (
    .A    (FA_P10A5B5_SUM ), //i
    .B    (A4xB6_52       ), //i
    .CIN  (FA_P9A3B6_COUT ), //i
    .COUT (FA_P10A4B6_COUT), //o
    .SUM  (FA_P10A4B6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P10A3B7 (
    .A    (FA_P10A4B6_SUM ), //i
    .B    (P10_INV        ), //i
    .CIN  (FA_P9A2B7_COUT ), //i
    .COUT (FA_P10A3B7_COUT), //o
    .SUM  (FA_P10A3B7_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P11A7B1 (
    .A    (P7_EXTEN_EN    ), //i
    .B    (P8_EXTEN_EN    ), //i
    .CIN  (FA_P10A7B1_COUT), //i
    .COUT (FA_P11A7B1_COUT), //o
    .SUM  (FA_P11A7B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P11A7B2 (
    .A    (FA_P11A7B1_SUM ), //i
    .B    (P9_EXTEN_EN    ), //i
    .CIN  (FA_P10A7B2_COUT), //i
    .COUT (FA_P11A7B2_COUT), //o
    .SUM  (FA_P11A7B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P11A7B3 (
    .A    (FA_P11A7B2_SUM ), //i
    .B    (P10_EXTEN_EN   ), //i
    .CIN  (FA_P10A7B3_COUT), //i
    .COUT (FA_P11A7B3_COUT), //o
    .SUM  (FA_P11A7B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P11A7B4 (
    .A    (FA_P11A7B3_SUM ), //i
    .B    (A7xB4_39       ), //i
    .CIN  (FA_P10A6B4_COUT), //i
    .COUT (FA_P11A7B4_COUT), //o
    .SUM  (FA_P11A7B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P11A6B5 (
    .A    (FA_P11A7B4_SUM ), //i
    .B    (A6xB5_46       ), //i
    .CIN  (FA_P10A5B5_COUT), //i
    .COUT (FA_P11A6B5_COUT), //o
    .SUM  (FA_P11A6B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P11A5B6 (
    .A    (FA_P11A6B5_SUM ), //i
    .B    (A5xB6_53       ), //i
    .CIN  (FA_P10A4B6_COUT), //i
    .COUT (FA_P11A5B6_COUT), //o
    .SUM  (FA_P11A5B6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P11A4B7 (
    .A    (FA_P11A5B6_SUM ), //i
    .B    (P11_INV        ), //i
    .CIN  (FA_P10A3B7_COUT), //i
    .COUT (FA_P11A4B7_COUT), //o
    .SUM  (FA_P11A4B7_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P12A7B1 (
    .A    (P7_EXTEN_EN    ), //i
    .B    (P8_EXTEN_EN    ), //i
    .CIN  (FA_P11A7B1_COUT), //i
    .COUT (FA_P12A7B1_COUT), //o
    .SUM  (FA_P12A7B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P12A7B2 (
    .A    (FA_P12A7B1_SUM ), //i
    .B    (P9_EXTEN_EN    ), //i
    .CIN  (FA_P11A7B2_COUT), //i
    .COUT (FA_P12A7B2_COUT), //o
    .SUM  (FA_P12A7B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P12A7B3 (
    .A    (FA_P12A7B2_SUM ), //i
    .B    (P10_EXTEN_EN   ), //i
    .CIN  (FA_P11A7B3_COUT), //i
    .COUT (FA_P12A7B3_COUT), //o
    .SUM  (FA_P12A7B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P12A7B4 (
    .A    (FA_P12A7B3_SUM ), //i
    .B    (P11_EXTEN_EN   ), //i
    .CIN  (FA_P11A7B4_COUT), //i
    .COUT (FA_P12A7B4_COUT), //o
    .SUM  (FA_P12A7B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P12A7B5 (
    .A    (FA_P12A7B4_SUM ), //i
    .B    (A7xB5_47       ), //i
    .CIN  (FA_P11A6B5_COUT), //i
    .COUT (FA_P12A7B5_COUT), //o
    .SUM  (FA_P12A7B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P12A6B6 (
    .A    (FA_P12A7B5_SUM ), //i
    .B    (A6xB6_54       ), //i
    .CIN  (FA_P11A5B6_COUT), //i
    .COUT (FA_P12A6B6_COUT), //o
    .SUM  (FA_P12A6B6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P12A5B7 (
    .A    (FA_P12A6B6_SUM ), //i
    .B    (P12_INV        ), //i
    .CIN  (FA_P11A4B7_COUT), //i
    .COUT (FA_P12A5B7_COUT), //o
    .SUM  (FA_P12A5B7_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P13A7B1 (
    .A    (P7_EXTEN_EN    ), //i
    .B    (P8_EXTEN_EN    ), //i
    .CIN  (FA_P12A7B1_COUT), //i
    .COUT (FA_P13A7B1_COUT), //o
    .SUM  (FA_P13A7B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P13A7B2 (
    .A    (FA_P13A7B1_SUM ), //i
    .B    (P9_EXTEN_EN    ), //i
    .CIN  (FA_P12A7B2_COUT), //i
    .COUT (FA_P13A7B2_COUT), //o
    .SUM  (FA_P13A7B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P13A7B3 (
    .A    (FA_P13A7B2_SUM ), //i
    .B    (P10_EXTEN_EN   ), //i
    .CIN  (FA_P12A7B3_COUT), //i
    .COUT (FA_P13A7B3_COUT), //o
    .SUM  (FA_P13A7B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P13A7B4 (
    .A    (FA_P13A7B3_SUM ), //i
    .B    (P11_EXTEN_EN   ), //i
    .CIN  (FA_P12A7B4_COUT), //i
    .COUT (FA_P13A7B4_COUT), //o
    .SUM  (FA_P13A7B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P13A7B5 (
    .A    (FA_P13A7B4_SUM ), //i
    .B    (P12_EXTEN_EN   ), //i
    .CIN  (FA_P12A7B5_COUT), //i
    .COUT (FA_P13A7B5_COUT), //o
    .SUM  (FA_P13A7B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P13A7B6 (
    .A    (FA_P13A7B5_SUM ), //i
    .B    (A7xB6_55       ), //i
    .CIN  (FA_P12A6B6_COUT), //i
    .COUT (FA_P13A7B6_COUT), //o
    .SUM  (FA_P13A7B6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P13A6B7 (
    .A    (FA_P13A7B6_SUM ), //i
    .B    (P13_INV        ), //i
    .CIN  (FA_P12A5B7_COUT), //i
    .COUT (FA_P13A6B7_COUT), //o
    .SUM  (FA_P13A6B7_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P14A7B1 (
    .A    (P7_EXTEN_EN    ), //i
    .B    (P8_EXTEN_EN    ), //i
    .CIN  (FA_P13A7B1_COUT), //i
    .COUT (FA_P14A7B1_COUT), //o
    .SUM  (FA_P14A7B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P14A7B2 (
    .A    (FA_P14A7B1_SUM ), //i
    .B    (P9_EXTEN_EN    ), //i
    .CIN  (FA_P13A7B2_COUT), //i
    .COUT (FA_P14A7B2_COUT), //o
    .SUM  (FA_P14A7B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P14A7B3 (
    .A    (FA_P14A7B2_SUM ), //i
    .B    (P10_EXTEN_EN   ), //i
    .CIN  (FA_P13A7B3_COUT), //i
    .COUT (FA_P14A7B3_COUT), //o
    .SUM  (FA_P14A7B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P14A7B4 (
    .A    (FA_P14A7B3_SUM ), //i
    .B    (P11_EXTEN_EN   ), //i
    .CIN  (FA_P13A7B4_COUT), //i
    .COUT (FA_P14A7B4_COUT), //o
    .SUM  (FA_P14A7B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P14A7B5 (
    .A    (FA_P14A7B4_SUM ), //i
    .B    (P12_EXTEN_EN   ), //i
    .CIN  (FA_P13A7B5_COUT), //i
    .COUT (FA_P14A7B5_COUT), //o
    .SUM  (FA_P14A7B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P14A7B6 (
    .A    (FA_P14A7B5_SUM ), //i
    .B    (P13_EXTEN_EN   ), //i
    .CIN  (FA_P13A7B6_COUT), //i
    .COUT (FA_P14A7B6_COUT), //o
    .SUM  (FA_P14A7B6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P14A7B7 (
    .A    (FA_P14A7B6_SUM ), //i
    .B    (P14_INV        ), //i
    .CIN  (FA_P13A6B7_COUT), //i
    .COUT (FA_P14A7B7_COUT), //o
    .SUM  (FA_P14A7B7_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P15A7B1 (
    .A    (P7_EXTEN_EN    ), //i
    .B    (P8_EXTEN_EN    ), //i
    .CIN  (FA_P14A7B1_COUT), //i
    .COUT (FA_P15A7B1_COUT), //o
    .SUM  (FA_P15A7B1_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P15A7B2 (
    .A    (FA_P15A7B1_SUM ), //i
    .B    (P9_EXTEN_EN    ), //i
    .CIN  (FA_P14A7B2_COUT), //i
    .COUT (FA_P15A7B2_COUT), //o
    .SUM  (FA_P15A7B2_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P15A7B3 (
    .A    (FA_P15A7B2_SUM ), //i
    .B    (P10_EXTEN_EN   ), //i
    .CIN  (FA_P14A7B3_COUT), //i
    .COUT (FA_P15A7B3_COUT), //o
    .SUM  (FA_P15A7B3_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P15A7B4 (
    .A    (FA_P15A7B3_SUM ), //i
    .B    (P11_EXTEN_EN   ), //i
    .CIN  (FA_P14A7B4_COUT), //i
    .COUT (FA_P15A7B4_COUT), //o
    .SUM  (FA_P15A7B4_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P15A7B5 (
    .A    (FA_P15A7B4_SUM ), //i
    .B    (P12_EXTEN_EN   ), //i
    .CIN  (FA_P14A7B5_COUT), //i
    .COUT (FA_P15A7B5_COUT), //o
    .SUM  (FA_P15A7B5_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P15A7B6 (
    .A    (FA_P15A7B5_SUM ), //i
    .B    (P13_EXTEN_EN   ), //i
    .CIN  (FA_P14A7B6_COUT), //i
    .COUT (FA_P15A7B6_COUT), //o
    .SUM  (FA_P15A7B6_SUM )  //o
  );
  (* keep , syn_keep *) sky130_fd_sc_hd__fa FA_P15A7B7 (
    .A    (FA_P15A7B6_SUM ), //i
    .B    (P14_EXTEN_EN   ), //i
    .CIN  (FA_P14A7B7_COUT), //i
    .COUT (FA_P15A7B7_COUT), //o
    .SUM  (FA_P15A7B7_SUM )  //o
  );
  assign A0xB0_0 = (io_a[0] && io_b[0]);
  assign A0xB1_8 = (io_a[0] && io_b[1]);
  assign A0xB2_16 = (io_a[0] && io_b[2]);
  assign A0xB3_24 = (io_a[0] && io_b[3]);
  assign A0xB4_32 = (io_a[0] && io_b[4]);
  assign A0xB5_40 = (io_a[0] && io_b[5]);
  assign A0xB6_48 = (io_a[0] && io_b[6]);
  assign A0xB7_56 = (io_a[0] && io_b[7]);
  assign A1xB0_1 = (io_a[1] && io_b[0]);
  assign A1xB1_9 = (io_a[1] && io_b[1]);
  assign A1xB2_17 = (io_a[1] && io_b[2]);
  assign A1xB3_25 = (io_a[1] && io_b[3]);
  assign A1xB4_33 = (io_a[1] && io_b[4]);
  assign A1xB5_41 = (io_a[1] && io_b[5]);
  assign A1xB6_49 = (io_a[1] && io_b[6]);
  assign A1xB7_57 = (io_a[1] && io_b[7]);
  assign A2xB0_2 = (io_a[2] && io_b[0]);
  assign A2xB1_10 = (io_a[2] && io_b[1]);
  assign A2xB2_18 = (io_a[2] && io_b[2]);
  assign A2xB3_26 = (io_a[2] && io_b[3]);
  assign A2xB4_34 = (io_a[2] && io_b[4]);
  assign A2xB5_42 = (io_a[2] && io_b[5]);
  assign A2xB6_50 = (io_a[2] && io_b[6]);
  assign A2xB7_58 = (io_a[2] && io_b[7]);
  assign A3xB0_3 = (io_a[3] && io_b[0]);
  assign A3xB1_11 = (io_a[3] && io_b[1]);
  assign A3xB2_19 = (io_a[3] && io_b[2]);
  assign A3xB3_27 = (io_a[3] && io_b[3]);
  assign A3xB4_35 = (io_a[3] && io_b[4]);
  assign A3xB5_43 = (io_a[3] && io_b[5]);
  assign A3xB6_51 = (io_a[3] && io_b[6]);
  assign A3xB7_59 = (io_a[3] && io_b[7]);
  assign A4xB0_4 = (io_a[4] && io_b[0]);
  assign A4xB1_12 = (io_a[4] && io_b[1]);
  assign A4xB2_20 = (io_a[4] && io_b[2]);
  assign A4xB3_28 = (io_a[4] && io_b[3]);
  assign A4xB4_36 = (io_a[4] && io_b[4]);
  assign A4xB5_44 = (io_a[4] && io_b[5]);
  assign A4xB6_52 = (io_a[4] && io_b[6]);
  assign A4xB7_60 = (io_a[4] && io_b[7]);
  assign A5xB0_5 = (io_a[5] && io_b[0]);
  assign A5xB1_13 = (io_a[5] && io_b[1]);
  assign A5xB2_21 = (io_a[5] && io_b[2]);
  assign A5xB3_29 = (io_a[5] && io_b[3]);
  assign A5xB4_37 = (io_a[5] && io_b[4]);
  assign A5xB5_45 = (io_a[5] && io_b[5]);
  assign A5xB6_53 = (io_a[5] && io_b[6]);
  assign A5xB7_61 = (io_a[5] && io_b[7]);
  assign A6xB0_6 = (io_a[6] && io_b[0]);
  assign A6xB1_14 = (io_a[6] && io_b[1]);
  assign A6xB2_22 = (io_a[6] && io_b[2]);
  assign A6xB3_30 = (io_a[6] && io_b[3]);
  assign A6xB4_38 = (io_a[6] && io_b[4]);
  assign A6xB5_46 = (io_a[6] && io_b[5]);
  assign A6xB6_54 = (io_a[6] && io_b[6]);
  assign A6xB7_62 = (io_a[6] && io_b[7]);
  assign A7xB0_7 = (io_a[7] && io_b[0]);
  assign A7xB1_15 = (io_a[7] && io_b[1]);
  assign A7xB2_23 = (io_a[7] && io_b[2]);
  assign A7xB3_31 = (io_a[7] && io_b[3]);
  assign A7xB4_39 = (io_a[7] && io_b[4]);
  assign A7xB5_47 = (io_a[7] && io_b[5]);
  assign A7xB6_55 = (io_a[7] && io_b[6]);
  assign A7xB7_63 = (io_a[7] && io_b[7]);
  assign twosEn = (io_b[7] && io_opsigned);
  assign P7_INV = (twosEn ^ A0xB7_56);
  assign P8_INV = (twosEn ^ A1xB7_57);
  assign P9_INV = (twosEn ^ A2xB7_58);
  assign P10_INV = (twosEn ^ A3xB7_59);
  assign P11_INV = (twosEn ^ A4xB7_60);
  assign P12_INV = (twosEn ^ A5xB7_61);
  assign P13_INV = (twosEn ^ A6xB7_62);
  assign P14_INV = (twosEn ^ A7xB7_63);
  assign P7_EXTEN_EN = (A7xB0_7 && io_opsigned);
  assign P8_EXTEN_EN = (A7xB1_15 && io_opsigned);
  assign P9_EXTEN_EN = (A7xB2_23 && io_opsigned);
  assign P10_EXTEN_EN = (A7xB3_31 && io_opsigned);
  assign P11_EXTEN_EN = (A7xB4_39 && io_opsigned);
  assign P12_EXTEN_EN = (A7xB5_47 && io_opsigned);
  assign P13_EXTEN_EN = (A7xB6_55 && io_opsigned);
  assign P14_EXTEN_EN = (P14_INV && io_opsigned);
  always @(*) begin
    io_p[0] = A0xB0_0;
    io_p[1] = HA_P1A0B1_SUM;
    io_p[2] = HA_P2A0B2_SUM;
    io_p[3] = HA_P3A0B3_SUM;
    io_p[4] = HA_P4A0B4_SUM;
    io_p[5] = HA_P5A0B5_SUM;
    io_p[6] = HA_P6A0B6_SUM;
    io_p[7] = FA_P7A0B7_SUM;
    io_p[8] = FA_P8A1B7_SUM;
    io_p[9] = FA_P9A2B7_SUM;
    io_p[10] = FA_P10A3B7_SUM;
    io_p[11] = FA_P11A4B7_SUM;
    io_p[12] = FA_P12A5B7_SUM;
    io_p[13] = FA_P13A6B7_SUM;
    io_p[14] = FA_P14A7B7_SUM;
    io_p[15] = FA_P15A7B7_SUM;
  end


endmodule

module NegedgeReg (
  input               area_io_en,
  input               area_io_d,
  output reg          area_io_q,
  input               rst_n,
  input               clk
);

  wire                initState;
  wire                when_NegedgeReg_l39;

  assign initState = 1'b1;
  assign when_NegedgeReg_l39 = (! rst_n);
  always @(negedge clk) begin
    if(!rst_n) begin
      area_io_q <= initState;
    end else begin
      if(when_NegedgeReg_l39) begin
        area_io_q <= initState;
      end else begin
        if(area_io_en) begin
          area_io_q <= area_io_d;
        end
      end
    end
  end


endmodule

//DIVUNITFA_83 replaced by DIVUNITFA

//DIVUNITFA_82 replaced by DIVUNITFA

//DIVUNITFA_81 replaced by DIVUNITFA

//DIVUNITFA_80 replaced by DIVUNITFA

//DIVUNITFA_79 replaced by DIVUNITFA

//DIVUNITFA_78 replaced by DIVUNITFA

//DIVUNITFA_77 replaced by DIVUNITFA

//DIVUNITFA_76 replaced by DIVUNITFA

//DIVUNITFA_75 replaced by DIVUNITFA

//DIVUNITFA_74 replaced by DIVUNITFA

//DIVUNITFA_73 replaced by DIVUNITFA

//DIVUNITFA_72 replaced by DIVUNITFA

//DIVUNITFA_71 replaced by DIVUNITFA

//DIVUNITFA_70 replaced by DIVUNITFA

//DIVUNITFA_69 replaced by DIVUNITFA

//DIVUNITFA_68 replaced by DIVUNITFA

//DIVUNITFA_67 replaced by DIVUNITFA

//DIVUNITFA_66 replaced by DIVUNITFA

//DIVUNITFA_65 replaced by DIVUNITFA

//DIVUNITFA_64 replaced by DIVUNITFA

//DIVUNITFA_63 replaced by DIVUNITFA

//DIVUNITFA_62 replaced by DIVUNITFA

//DIVUNITFA_61 replaced by DIVUNITFA

//DIVUNITFA_60 replaced by DIVUNITFA

//DIVUNITFA_59 replaced by DIVUNITFA

//DIVUNITFA_58 replaced by DIVUNITFA

//DIVUNITFA_57 replaced by DIVUNITFA

//DIVUNITFA_56 replaced by DIVUNITFA

//DIVUNITFA_55 replaced by DIVUNITFA

//DIVUNITFA_54 replaced by DIVUNITFA

//DIVUNITFA_53 replaced by DIVUNITFA

//DIVUNITFA_52 replaced by DIVUNITFA

//DIVUNITFA_51 replaced by DIVUNITFA

//DIVUNITFA_50 replaced by DIVUNITFA

//DIVUNITFA_49 replaced by DIVUNITFA

//DIVUNITFA_48 replaced by DIVUNITFA

//DIVUNITFA_47 replaced by DIVUNITFA

//DIVUNITFA_46 replaced by DIVUNITFA

//DIVUNITFA_45 replaced by DIVUNITFA

//DIVUNITFA_44 replaced by DIVUNITFA

//DIVUNITFA_43 replaced by DIVUNITFA

//DIVUNITFA_42 replaced by DIVUNITFA

//DIVUNITFA_41 replaced by DIVUNITFA

//DIVUNITFA_40 replaced by DIVUNITFA

//DIVUNITFA_39 replaced by DIVUNITFA

//DIVUNITFA_38 replaced by DIVUNITFA

//DIVUNITFA_37 replaced by DIVUNITFA

//DIVUNITFA_36 replaced by DIVUNITFA

//DIVUNITFA_35 replaced by DIVUNITFA

//DIVUNITFA_34 replaced by DIVUNITFA

//DIVUNITFA_33 replaced by DIVUNITFA

//DIVUNITFA_32 replaced by DIVUNITFA

//DIVUNITFA_31 replaced by DIVUNITFA

//DIVUNITFA_30 replaced by DIVUNITFA

//DIVUNITFA_29 replaced by DIVUNITFA

//DIVUNITFA_28 replaced by DIVUNITFA

//DIVUNITFA_27 replaced by DIVUNITFA

//DIVUNITFA_26 replaced by DIVUNITFA

//DIVUNITFA_25 replaced by DIVUNITFA

//DIVUNITFA_24 replaced by DIVUNITFA

//DIVUNITFA_23 replaced by DIVUNITFA

//DIVUNITFA_22 replaced by DIVUNITFA

//DIVUNITFA_21 replaced by DIVUNITFA

//DIVUNITFA_20 replaced by DIVUNITFA

//DIVUNITFA_19 replaced by DIVUNITFA

//DIVUNITFA_18 replaced by DIVUNITFA

//DIVUNITFA_17 replaced by DIVUNITFA

//DIVUNITFA_16 replaced by DIVUNITFA

//DIVUNITFA_15 replaced by DIVUNITFA

//DIVUNITFA_14 replaced by DIVUNITFA

//DIVUNITFA_13 replaced by DIVUNITFA

//DIVUNITFA_12 replaced by DIVUNITFA

//DIVUNITFA_11 replaced by DIVUNITFA

//DIVUNITFA_10 replaced by DIVUNITFA

//DIVUNITFA_9 replaced by DIVUNITFA

//DIVUNITFA_8 replaced by DIVUNITFA

//DIVUNITFA_7 replaced by DIVUNITFA

//DIVUNITFA_6 replaced by DIVUNITFA

//DIVUNITFA_5 replaced by DIVUNITFA

//DIVUNITFA_4 replaced by DIVUNITFA

//DIVUNITFA_3 replaced by DIVUNITFA

//DIVUNITFA_2 replaced by DIVUNITFA

//DIVUNITFA_1 replaced by DIVUNITFA

module DIVUNITFA (
  input               io_a,
  input               io_b,
  input               io_y,
  input               io_sel,
  output              io_s,
  output              io_c
);

  wire                fA_COUT;
  wire                fA_SUM;

  (* keep , syn_keep *) sky130_fd_sc_hd__fa fA (
    .A    (io_a   ), //i
    .B    (io_b   ), //i
    .CIN  (io_y   ), //i
    .COUT (fA_COUT), //o
    .SUM  (fA_SUM )  //o
  );
  assign io_s = (io_sel ? fA_SUM : io_a);
  assign io_c = fA_COUT;

endmodule
