/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Tue May  6 13:36:07 2025
/////////////////////////////////////////////////////////////


module spi ( clk, rst_n, spi_start, data_tx, miso, data_rx, sclk, mosi, cs_n, 
        spi_busy );
  input [15:0] data_tx;
  output [7:0] data_rx;
  input clk, rst_n, spi_start, miso;
  output sclk, mosi, cs_n, spi_busy;
  wire   miso_sync, N23, N45, N46, N47, N48, N64, N65, N66, N67, N122, n15,
         n16, n17, n18, n20, n21, n23, n24, n26, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, \r90/carry[4] , \r90/carry[3] ,
         \r90/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n19, n22, n25, n27, n28, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97;
  wire   [1:0] state;
  wire   [4:0] cnt;
  wire   [15:0] shift_reg;
  wire   [4:0] bit_cnt;
  assign spi_busy = N122;

  DFFX1_LVT miso_sync_reg ( .D(miso), .CLK(clk), .Q(miso_sync) );
  DFFASX1_LVT cs_n_reg ( .D(n71), .CLK(clk), .SETB(n19), .Q(cs_n) );
  AO22X1_LVT U4 ( .A1(shift_reg[15]), .A2(n89), .A3(mosi), .A4(n20), .Y(n45)
         );
  NAND2X0_RVT U5 ( .A1(n21), .A2(n17), .Y(n20) );
  NAND3X0_LVT U9 ( .A1(n10), .A2(N122), .A3(n26), .Y(n24) );
  NAND3X0_LVT U10 ( .A1(n23), .A2(n18), .A3(n92), .Y(n26) );
  AO22X1_LVT U11 ( .A1(shift_reg[1]), .A2(n5), .A3(data_rx[1]), .A4(n10), .Y(
        n47) );
  AO22X1_LVT U12 ( .A1(shift_reg[2]), .A2(n5), .A3(data_rx[2]), .A4(n10), .Y(
        n48) );
  AO22X1_LVT U13 ( .A1(shift_reg[3]), .A2(n5), .A3(data_rx[3]), .A4(n10), .Y(
        n49) );
  AO22X1_LVT U14 ( .A1(shift_reg[4]), .A2(n5), .A3(data_rx[4]), .A4(n10), .Y(
        n50) );
  AO22X1_LVT U15 ( .A1(shift_reg[5]), .A2(n5), .A3(data_rx[5]), .A4(n10), .Y(
        n51) );
  AO22X1_LVT U16 ( .A1(shift_reg[6]), .A2(n5), .A3(data_rx[6]), .A4(n10), .Y(
        n52) );
  AO22X1_LVT U17 ( .A1(shift_reg[7]), .A2(n5), .A3(data_rx[7]), .A4(n10), .Y(
        n53) );
  AO22X1_LVT U18 ( .A1(shift_reg[0]), .A2(n5), .A3(data_rx[0]), .A4(n10), .Y(
        n54) );
  AO222X1_LVT U19 ( .A1(shift_reg[14]), .A2(n12), .A3(data_tx[15]), .A4(n13), 
        .A5(n9), .A6(shift_reg[15]), .Y(n55) );
  AO222X1_LVT U20 ( .A1(shift_reg[12]), .A2(n12), .A3(data_tx[13]), .A4(n13), 
        .A5(shift_reg[13]), .A6(n9), .Y(n56) );
  AO222X1_LVT U21 ( .A1(shift_reg[11]), .A2(n11), .A3(data_tx[12]), .A4(n14), 
        .A5(shift_reg[12]), .A6(n8), .Y(n57) );
  AO222X1_LVT U22 ( .A1(shift_reg[10]), .A2(n11), .A3(data_tx[11]), .A4(n13), 
        .A5(shift_reg[11]), .A6(n8), .Y(n58) );
  AO222X1_LVT U23 ( .A1(shift_reg[9]), .A2(n11), .A3(data_tx[10]), .A4(n14), 
        .A5(shift_reg[10]), .A6(n8), .Y(n59) );
  AO222X1_LVT U24 ( .A1(shift_reg[8]), .A2(n11), .A3(data_tx[9]), .A4(n14), 
        .A5(shift_reg[9]), .A6(n8), .Y(n60) );
  AO222X1_LVT U25 ( .A1(n12), .A2(shift_reg[7]), .A3(data_tx[8]), .A4(n13), 
        .A5(shift_reg[8]), .A6(n8), .Y(n61) );
  AO222X1_LVT U26 ( .A1(n12), .A2(shift_reg[6]), .A3(data_tx[7]), .A4(n14), 
        .A5(n8), .A6(shift_reg[7]), .Y(n62) );
  AO222X1_LVT U27 ( .A1(n11), .A2(shift_reg[5]), .A3(data_tx[6]), .A4(n14), 
        .A5(n9), .A6(shift_reg[6]), .Y(n63) );
  AO222X1_LVT U28 ( .A1(n12), .A2(shift_reg[4]), .A3(data_tx[5]), .A4(n13), 
        .A5(n9), .A6(shift_reg[5]), .Y(n64) );
  AO222X1_LVT U29 ( .A1(n12), .A2(shift_reg[3]), .A3(data_tx[4]), .A4(n13), 
        .A5(n9), .A6(shift_reg[4]), .Y(n65) );
  AO222X1_LVT U30 ( .A1(n12), .A2(shift_reg[2]), .A3(data_tx[3]), .A4(n14), 
        .A5(n8), .A6(shift_reg[3]), .Y(n66) );
  AO222X1_LVT U31 ( .A1(n11), .A2(shift_reg[1]), .A3(data_tx[2]), .A4(n13), 
        .A5(n9), .A6(shift_reg[2]), .Y(n67) );
  AO222X1_LVT U32 ( .A1(n12), .A2(shift_reg[0]), .A3(data_tx[1]), .A4(n14), 
        .A5(n9), .A6(shift_reg[1]), .Y(n68) );
  AO222X1_LVT U33 ( .A1(miso_sync), .A2(n11), .A3(data_tx[0]), .A4(n14), .A5(
        n9), .A6(shift_reg[0]), .Y(n69) );
  AO222X1_LVT U34 ( .A1(shift_reg[13]), .A2(n11), .A3(data_tx[14]), .A4(n13), 
        .A5(n8), .A6(shift_reg[14]), .Y(n70) );
  AO22X1_LVT U37 ( .A1(spi_start), .A2(n93), .A3(n30), .A4(n23), .Y(n29) );
  AO22X1_LVT U38 ( .A1(cs_n), .A2(n91), .A3(n31), .A4(n32), .Y(n71) );
  NAND2X0_RVT U39 ( .A1(N122), .A2(n33), .Y(n31) );
  NAND3X0_LVT U40 ( .A1(n34), .A2(N122), .A3(n35), .Y(n32) );
  NAND2X0_RVT U41 ( .A1(n95), .A2(n30), .Y(n35) );
  OA21X1_LVT U42 ( .A1(n93), .A2(n90), .A3(n36), .Y(n72) );
  NAND3X0_LVT U43 ( .A1(n10), .A2(n33), .A3(n37), .Y(n36) );
  NAND2X0_RVT U44 ( .A1(spi_start), .A2(n93), .Y(n37) );
  OR3X1_LVT U46 ( .A1(cnt[3]), .A2(cnt[4]), .A3(N23), .Y(n40) );
  AO22X1_LVT U47 ( .A1(n41), .A2(cnt[4]), .A3(N67), .A4(n90), .Y(n73) );
  AO22X1_LVT U48 ( .A1(n41), .A2(cnt[3]), .A3(N66), .A4(n90), .Y(n74) );
  AO22X1_LVT U49 ( .A1(cnt[2]), .A2(n41), .A3(N65), .A4(n90), .Y(n75) );
  AO22X1_LVT U50 ( .A1(cnt[1]), .A2(n41), .A3(N64), .A4(n90), .Y(n76) );
  NAND2X0_RVT U51 ( .A1(n42), .A2(n34), .Y(n77) );
  AO22X1_LVT U52 ( .A1(bit_cnt[3]), .A2(n88), .A3(N47), .A4(n43), .Y(n78) );
  AO22X1_LVT U53 ( .A1(bit_cnt[2]), .A2(n88), .A3(N46), .A4(n43), .Y(n79) );
  AO22X1_LVT U54 ( .A1(bit_cnt[1]), .A2(n88), .A3(N45), .A4(n43), .Y(n80) );
  AO22X1_LVT U55 ( .A1(bit_cnt[0]), .A2(n88), .A3(n1), .A4(n43), .Y(n81) );
  AO221X1_LVT U56 ( .A1(N48), .A2(n43), .A3(bit_cnt[4]), .A4(n88), .A5(n96), 
        .Y(n82) );
  AND2X1_LVT U57 ( .A1(n94), .A2(n44), .Y(n43) );
  AO21X1_LVT U58 ( .A1(cnt[4]), .A2(n21), .A3(n96), .Y(n44) );
  NAND2X0_RVT U59 ( .A1(state[0]), .A2(n15), .Y(n34) );
  AND3X1_LVT U60 ( .A1(n92), .A2(n23), .A3(cnt[3]), .Y(n21) );
  AND2X1_LVT U61 ( .A1(N23), .A2(n94), .Y(n23) );
  AO22X1_LVT U62 ( .A1(cnt[0]), .A2(n41), .A3(n2), .A4(n90), .Y(n83) );
  OA21X1_LVT U63 ( .A1(n33), .A2(n30), .A3(n38), .Y(n42) );
  AND3X1_LVT U64 ( .A1(n92), .A2(n18), .A3(cnt[4]), .Y(n30) );
  OR3X1_LVT U65 ( .A1(cnt[1]), .A2(cnt[2]), .A3(cnt[0]), .Y(n39) );
  AND2X1_LVT U66 ( .A1(n38), .A2(n33), .Y(n41) );
  NAND2X0_RVT U67 ( .A1(state[0]), .A2(state[1]), .Y(n33) );
  NAND2X0_RVT U68 ( .A1(state[1]), .A2(n16), .Y(n38) );
  NAND2X0_RVT U69 ( .A1(n16), .A2(n15), .Y(N122) );
  HADDX1_LVT \r90/U1_1_1  ( .A0(cnt[1]), .B0(cnt[0]), .C1(\r90/carry[2] ), 
        .SO(N64) );
  HADDX1_LVT \r90/U1_1_2  ( .A0(cnt[2]), .B0(\r90/carry[2] ), .C1(
        \r90/carry[3] ), .SO(N65) );
  HADDX1_LVT \r90/U1_1_3  ( .A0(cnt[3]), .B0(\r90/carry[3] ), .C1(
        \r90/carry[4] ), .SO(N66) );
  DFFARX1_LVT mosi_reg ( .D(n45), .CLK(clk), .RSTB(n25), .Q(mosi) );
  DFFARX1_LVT sclk_reg ( .D(n46), .CLK(clk), .RSTB(n19), .Q(sclk), .QN(n6) );
  DFFARX1_LVT \shift_reg_reg[15]  ( .D(n55), .CLK(clk), .RSTB(n25), .Q(
        shift_reg[15]) );
  DFFARX1_LVT \shift_reg_reg[8]  ( .D(n61), .CLK(clk), .RSTB(n25), .Q(
        shift_reg[8]) );
  DFFARX1_LVT \shift_reg_reg[9]  ( .D(n60), .CLK(clk), .RSTB(n25), .Q(
        shift_reg[9]) );
  DFFARX1_LVT \shift_reg_reg[10]  ( .D(n59), .CLK(clk), .RSTB(n25), .Q(
        shift_reg[10]) );
  DFFARX1_LVT \shift_reg_reg[11]  ( .D(n58), .CLK(clk), .RSTB(n25), .Q(
        shift_reg[11]) );
  DFFARX1_LVT \shift_reg_reg[12]  ( .D(n57), .CLK(clk), .RSTB(n25), .Q(
        shift_reg[12]) );
  DFFARX1_LVT \shift_reg_reg[13]  ( .D(n56), .CLK(clk), .RSTB(n25), .Q(
        shift_reg[13]) );
  DFFARX1_LVT \shift_reg_reg[14]  ( .D(n70), .CLK(clk), .RSTB(n25), .Q(
        shift_reg[14]) );
  DFFARX1_LVT \shift_reg_reg[0]  ( .D(n69), .CLK(clk), .RSTB(n19), .Q(
        shift_reg[0]) );
  DFFARX1_LVT \shift_reg_reg[1]  ( .D(n68), .CLK(clk), .RSTB(n19), .Q(
        shift_reg[1]) );
  DFFARX1_LVT \shift_reg_reg[2]  ( .D(n67), .CLK(clk), .RSTB(n22), .Q(
        shift_reg[2]) );
  DFFARX1_LVT \shift_reg_reg[3]  ( .D(n66), .CLK(clk), .RSTB(n22), .Q(
        shift_reg[3]) );
  DFFARX1_LVT \shift_reg_reg[4]  ( .D(n65), .CLK(clk), .RSTB(n22), .Q(
        shift_reg[4]) );
  DFFARX1_LVT \shift_reg_reg[5]  ( .D(n64), .CLK(clk), .RSTB(n22), .Q(
        shift_reg[5]) );
  DFFARX1_LVT \shift_reg_reg[6]  ( .D(n63), .CLK(clk), .RSTB(n22), .Q(
        shift_reg[6]) );
  DFFARX1_LVT \shift_reg_reg[7]  ( .D(n62), .CLK(clk), .RSTB(n22), .Q(
        shift_reg[7]) );
  DFFARX1_LVT \data_rx_reg[7]  ( .D(n53), .CLK(clk), .RSTB(n22), .Q(data_rx[7]) );
  DFFARX1_LVT \data_rx_reg[4]  ( .D(n50), .CLK(clk), .RSTB(n22), .Q(data_rx[4]) );
  DFFARX1_LVT \data_rx_reg[3]  ( .D(n49), .CLK(clk), .RSTB(n22), .Q(data_rx[3]) );
  DFFARX1_LVT \data_rx_reg[2]  ( .D(n48), .CLK(clk), .RSTB(n22), .Q(data_rx[2]) );
  DFFARX1_LVT \data_rx_reg[6]  ( .D(n52), .CLK(clk), .RSTB(n22), .Q(data_rx[6]) );
  DFFARX1_LVT \data_rx_reg[0]  ( .D(n54), .CLK(clk), .RSTB(n19), .Q(data_rx[0]) );
  DFFARX1_LVT \data_rx_reg[5]  ( .D(n51), .CLK(clk), .RSTB(n22), .Q(data_rx[5]) );
  DFFARX1_LVT \data_rx_reg[1]  ( .D(n47), .CLK(clk), .RSTB(n19), .Q(data_rx[1]) );
  DFFARX1_LVT \cnt_reg[1]  ( .D(n76), .CLK(clk), .RSTB(n19), .Q(cnt[1]) );
  DFFARX1_LVT \cnt_reg[2]  ( .D(n75), .CLK(clk), .RSTB(n19), .Q(cnt[2]) );
  DFFARX1_LVT \cnt_reg[3]  ( .D(n74), .CLK(clk), .RSTB(n19), .Q(cnt[3]), .QN(
        n18) );
  DFFARX1_LVT \bit_cnt_reg[4]  ( .D(n82), .CLK(clk), .RSTB(n25), .Q(bit_cnt[4]) );
  DFFARX1_LVT \bit_cnt_reg[1]  ( .D(n80), .CLK(clk), .RSTB(n25), .Q(bit_cnt[1]) );
  DFFARX1_LVT \bit_cnt_reg[2]  ( .D(n79), .CLK(clk), .RSTB(n25), .Q(bit_cnt[2]) );
  DFFARX1_LVT \bit_cnt_reg[3]  ( .D(n78), .CLK(clk), .RSTB(n19), .Q(bit_cnt[3]) );
  DFFARX1_LVT \cnt_reg[0]  ( .D(n83), .CLK(clk), .RSTB(n22), .Q(cnt[0]), .QN(
        n2) );
  DFFARX1_LVT \bit_cnt_reg[0]  ( .D(n81), .CLK(clk), .RSTB(n25), .Q(bit_cnt[0]), .QN(n1) );
  DFFARX1_LVT \cnt_reg[4]  ( .D(n73), .CLK(clk), .RSTB(n19), .Q(cnt[4]), .QN(
        n17) );
  DFFARX1_LVT \state_reg[1]  ( .D(n77), .CLK(clk), .RSTB(n19), .Q(state[1]), 
        .QN(n15) );
  DFFARX1_LVT \state_reg[0]  ( .D(n72), .CLK(clk), .RSTB(n19), .Q(state[0]), 
        .QN(n16) );
  INVX1_LVT U3 ( .A(rst_n), .Y(n97) );
  INVX1_LVT U6 ( .A(n3), .Y(n13) );
  INVX1_LVT U7 ( .A(n29), .Y(n9) );
  INVX1_LVT U8 ( .A(n3), .Y(n14) );
  INVX1_LVT U35 ( .A(n4), .Y(n11) );
  INVX1_LVT U36 ( .A(n4), .Y(n12) );
  INVX1_LVT U45 ( .A(n29), .Y(n8) );
  INVX1_LVT U70 ( .A(n42), .Y(n90) );
  NBUFFX2_LVT U71 ( .A(n97), .Y(n19) );
  NBUFFX2_LVT U72 ( .A(n97), .Y(n25) );
  NBUFFX2_LVT U73 ( .A(n97), .Y(n22) );
  NAND2X0_RVT U74 ( .A1(n29), .A2(n93), .Y(n3) );
  NAND2X0_RVT U75 ( .A1(n94), .A2(n29), .Y(n4) );
  INVX1_LVT U76 ( .A(N122), .Y(n93) );
  INVX1_LVT U77 ( .A(n38), .Y(n94) );
  INVX1_LVT U78 ( .A(n39), .Y(n92) );
  INVX1_LVT U79 ( .A(n5), .Y(n10) );
  INVX1_LVT U80 ( .A(n44), .Y(n88) );
  INVX1_LVT U81 ( .A(n28), .Y(n85) );
  INVX1_LVT U82 ( .A(n33), .Y(n95) );
  INVX1_LVT U83 ( .A(n34), .Y(n96) );
  NOR3X0_LVT U84 ( .A1(n38), .A2(n39), .A3(n40), .Y(n5) );
  OAI22X1_LVT U85 ( .A1(n6), .A2(n24), .A3(n7), .A4(n17), .Y(n46) );
  NAND2X0_LVT U86 ( .A1(n23), .A2(n24), .Y(n7) );
  INVX1_LVT U87 ( .A(n27), .Y(n86) );
  INVX1_LVT U88 ( .A(n20), .Y(n89) );
  INVX1_LVT U89 ( .A(n32), .Y(n91) );
  XOR2X1_HVT U90 ( .A1(\r90/carry[4] ), .A2(cnt[4]), .Y(N67) );
  OR2X1_HVT U91 ( .A1(bit_cnt[1]), .A2(bit_cnt[0]), .Y(n27) );
  AO21X1_HVT U92 ( .A1(bit_cnt[1]), .A2(bit_cnt[0]), .A3(n86), .Y(N45) );
  OR2X1_HVT U93 ( .A1(n27), .A2(bit_cnt[2]), .Y(n28) );
  AO21X1_HVT U94 ( .A1(bit_cnt[2]), .A2(n27), .A3(n85), .Y(N46) );
  XOR2X1_HVT U95 ( .A1(bit_cnt[3]), .A2(n85), .Y(N47) );
  OR2X1_HVT U96 ( .A1(n28), .A2(bit_cnt[3]), .Y(n84) );
  XNOR2X1_HVT U97 ( .A1(n84), .A2(bit_cnt[4]), .Y(N48) );
  OR3X1_HVT U98 ( .A1(bit_cnt[4]), .A2(bit_cnt[3]), .A3(bit_cnt[2]), .Y(n87)
         );
  OR3X1_HVT U99 ( .A1(bit_cnt[1]), .A2(bit_cnt[0]), .A3(n87), .Y(N23) );
endmodule


module rc522_read_block_DW01_inc_0_DW01_inc_8 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  HADDX1_LVT U1_1_30 ( .A0(A[30]), .B0(carry[30]), .C1(carry[31]), .SO(SUM[30]) );
  HADDX1_LVT U1_1_29 ( .A0(A[29]), .B0(carry[29]), .C1(carry[30]), .SO(SUM[29]) );
  HADDX1_LVT U1_1_28 ( .A0(A[28]), .B0(carry[28]), .C1(carry[29]), .SO(SUM[28]) );
  HADDX1_LVT U1_1_27 ( .A0(A[27]), .B0(carry[27]), .C1(carry[28]), .SO(SUM[27]) );
  HADDX1_LVT U1_1_26 ( .A0(A[26]), .B0(carry[26]), .C1(carry[27]), .SO(SUM[26]) );
  HADDX1_LVT U1_1_25 ( .A0(A[25]), .B0(carry[25]), .C1(carry[26]), .SO(SUM[25]) );
  HADDX1_LVT U1_1_24 ( .A0(A[24]), .B0(carry[24]), .C1(carry[25]), .SO(SUM[24]) );
  HADDX1_LVT U1_1_23 ( .A0(A[23]), .B0(carry[23]), .C1(carry[24]), .SO(SUM[23]) );
  HADDX1_LVT U1_1_22 ( .A0(A[22]), .B0(carry[22]), .C1(carry[23]), .SO(SUM[22]) );
  HADDX1_LVT U1_1_21 ( .A0(A[21]), .B0(carry[21]), .C1(carry[22]), .SO(SUM[21]) );
  HADDX1_LVT U1_1_20 ( .A0(A[20]), .B0(carry[20]), .C1(carry[21]), .SO(SUM[20]) );
  HADDX1_LVT U1_1_19 ( .A0(A[19]), .B0(carry[19]), .C1(carry[20]), .SO(SUM[19]) );
  HADDX1_LVT U1_1_18 ( .A0(A[18]), .B0(carry[18]), .C1(carry[19]), .SO(SUM[18]) );
  HADDX1_LVT U1_1_17 ( .A0(A[17]), .B0(carry[17]), .C1(carry[18]), .SO(SUM[17]) );
  HADDX1_LVT U1_1_16 ( .A0(A[16]), .B0(carry[16]), .C1(carry[17]), .SO(SUM[16]) );
  HADDX1_LVT U1_1_15 ( .A0(A[15]), .B0(carry[15]), .C1(carry[16]), .SO(SUM[15]) );
  HADDX1_LVT U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1_LVT U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1_LVT U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1_LVT U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1_LVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_LVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_LVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_LVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_LVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_LVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_LVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_LVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_LVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_LVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_LVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_HVT U2 ( .A1(carry[31]), .A2(A[31]), .Y(SUM[31]) );
endmodule


module rc522_read_block_DW01_inc_1_DW01_inc_9 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HADDX1_LVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_LVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_LVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_LVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_LVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_LVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_LVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_LVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_LVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_HVT U2 ( .A1(carry[9]), .A2(A[9]), .Y(SUM[9]) );
endmodule


module rc522_read_block ( clk, rst_n, miso, sclk, mosi, cs_n, rst, card_OK, 
        block_addr, UID, KeyA, block_data, read_block_OK, LED );
  input [7:0] block_addr;
  output [31:0] UID;
  input [47:0] KeyA;
  output [127:0] block_data;
  output [7:0] LED;
  input clk, rst_n, miso;
  output sclk, mosi, cs_n, rst, card_OK, read_block_OK;
  wire   spi_start, spi_busy, new_card, N658, N659, N660, N661, N662, N663,
         N664, N666, N792, N793, N794, N795, N796, N797, N798, N799, N800,
         N801, N828, N829, N830, N831, N832, N833, N834, N835, N836, N837,
         N838, N839, N840, N841, N842, N843, N844, N845, N846, N847, N848,
         N849, N850, N851, N852, N853, N854, N855, N856, N857, N858, N859, n5,
         n8, n9, n14, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n33,
         n34, n36, n38, n39, n40, n41, n42, n45, n48, n52, n53, n54, n55, n56,
         n57, n59, n80, n83, n84, n85, n94, n95, n96, n99, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n143, n146, n147, n148, n149, n150, n151, n152, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n189,
         n190, n191, n192, n193, n195, n196, n198, n199, n200, n201, n202,
         n206, n207, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n231, n232, n233, n234, n236, n237, n239, n240, n241, n242, n244,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n279, n280, n282,
         n283, n284, n285, n288, n289, n290, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n1, n2, n3, n4, n6, n7, n10, n11, n12, n13, n15, n16, n17, n18,
         n19, n22, n30, n32, n35, n37, n43, n44, n46, n47, n49, n50, n51, n58,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n81, n82, n86, n87, n88, n89, n90, n91,
         n92, n93, n97, n98, n100, n101, n102, n113, n142, n144, n145, n153,
         n154, n188, n194, n197, n203, n204, n205, n208, n209, n230, n235,
         n238, n243, n245, n246, n257, n278, n281, n286, n287, n291, n292,
         n309, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475;
  wire   [15:0] data_tx;
  wire   [7:0] data_rx;
  wire   [31:0] cnt;
  wire   [9:0] instr_step;
  wire   [7:0] BCC;

  DFFX1_LVT \data_tx_reg[0]  ( .D(n458), .CLK(clk), .Q(data_tx[0]) );
  DFFX1_LVT \FIFOLevelReg_Value_reg[4]  ( .D(n397), .CLK(clk), .QN(n290) );
  DFFX1_LVT \FIFOLevelReg_Value_reg[3]  ( .D(n407), .CLK(clk), .QN(n289) );
  DFFX1_LVT \FIFOLevelReg_Value_reg[2]  ( .D(n417), .CLK(clk), .Q(n13) );
  DFFX1_LVT \FIFOLevelReg_Value_reg[1]  ( .D(n426), .CLK(clk), .QN(n354) );
  DFFX1_LVT \FIFOLevelReg_Value_reg[0]  ( .D(n436), .CLK(clk), .Q(n6) );
  DFFX1_LVT \card_reg[4]  ( .D(n396), .CLK(clk), .QN(n273) );
  DFFX1_LVT \card_reg[3]  ( .D(n406), .CLK(clk), .QN(n269) );
  DFFX1_LVT \card_reg[2]  ( .D(n416), .CLK(clk), .QN(n265) );
  DFFX1_LVT \card_reg[1]  ( .D(n425), .CLK(clk), .QN(n261) );
  DFFX1_LVT \card_reg[0]  ( .D(n435), .CLK(clk), .Q(n19) );
  DFFX1_LVT \card_reg[20]  ( .D(n404), .CLK(clk), .QN(n270) );
  DFFX1_LVT \card_reg[19]  ( .D(n414), .CLK(clk), .QN(n266) );
  DFFX1_LVT \card_reg[18]  ( .D(n424), .CLK(clk), .QN(n262) );
  DFFX1_LVT \card_reg[17]  ( .D(n433), .CLK(clk), .QN(n258) );
  DFFX1_LVT \card_reg[16]  ( .D(n443), .CLK(clk), .Q(n16), .QN(n254) );
  DFFX1_LVT \card_reg[12]  ( .D(n399), .CLK(clk), .QN(n272) );
  DFFX1_LVT \card_reg[11]  ( .D(n409), .CLK(clk), .QN(n268) );
  DFFX1_LVT \card_reg[10]  ( .D(n419), .CLK(clk), .QN(n264) );
  DFFX1_LVT \card_reg[9]  ( .D(n428), .CLK(clk), .QN(n260) );
  DFFX1_LVT \card_reg[8]  ( .D(n438), .CLK(clk), .Q(n18), .QN(n256) );
  DFFX1_LVT \card_reg[28]  ( .D(n401), .CLK(clk), .QN(n271) );
  DFFX1_LVT \card_reg[27]  ( .D(n411), .CLK(clk), .QN(n267) );
  DFFX1_LVT \card_reg[26]  ( .D(n421), .CLK(clk), .QN(n263) );
  DFFX1_LVT \card_reg[25]  ( .D(n430), .CLK(clk), .QN(n259) );
  DFFX1_LVT \card_reg[24]  ( .D(n440), .CLK(clk), .Q(n17), .QN(n255) );
  DFFX1_LVT \BCC_reg[4]  ( .D(n402), .CLK(clk), .Q(BCC[4]) );
  DFFX1_LVT \BCC_reg[3]  ( .D(n412), .CLK(clk), .Q(BCC[3]) );
  DFFX1_LVT \BCC_reg[2]  ( .D(n422), .CLK(clk), .Q(BCC[2]) );
  DFFX1_LVT \BCC_reg[1]  ( .D(n431), .CLK(clk), .Q(BCC[1]), .QN(n12) );
  DFFX1_LVT \BCC_reg[0]  ( .D(n441), .CLK(clk), .Q(BCC[0]) );
  DFFX1_LVT \data_tx_reg[13]  ( .D(n446), .CLK(clk), .Q(data_tx[13]) );
  DFFX1_LVT \data_tx_reg[14]  ( .D(n445), .CLK(clk), .Q(data_tx[14]) );
  DFFASX1_LVT rst_reg ( .D(n461), .CLK(clk), .SETB(n74), .Q(rst) );
  DFFX1_LVT \data_tx_reg[10]  ( .D(n449), .CLK(clk), .Q(data_tx[10]) );
  DFFX1_LVT \data_tx_reg[11]  ( .D(n448), .CLK(clk), .Q(data_tx[11]) );
  DFFX1_LVT \data_tx_reg[1]  ( .D(n457), .CLK(clk), .Q(data_tx[1]) );
  DFFX1_LVT \data_tx_reg[4]  ( .D(n454), .CLK(clk), .Q(data_tx[4]) );
  DFFX1_LVT \data_tx_reg[3]  ( .D(n455), .CLK(clk), .Q(data_tx[3]) );
  DFFX1_LVT \data_tx_reg[2]  ( .D(n456), .CLK(clk), .Q(data_tx[2]) );
  DFFX1_LVT \data_tx_reg[15]  ( .D(n444), .CLK(clk), .Q(data_tx[15]) );
  DFFX1_LVT \data_tx_reg[12]  ( .D(n447), .CLK(clk), .Q(data_tx[12]) );
  DFFX1_LVT \data_tx_reg[9]  ( .D(n450), .CLK(clk), .Q(data_tx[9]) );
  DFFX1_LVT \card_reg[5]  ( .D(n386), .CLK(clk), .QN(n277) );
  DFFX1_LVT \FIFOLevelReg_Value_reg[5]  ( .D(n387), .CLK(clk), .Q(n7) );
  DFFX1_LVT \card_reg[13]  ( .D(n389), .CLK(clk), .QN(n276) );
  DFFX1_LVT \card_reg[29]  ( .D(n391), .CLK(clk), .QN(n275) );
  DFFX1_LVT \BCC_reg[5]  ( .D(n392), .CLK(clk), .Q(BCC[5]) );
  DFFX1_LVT \card_reg[21]  ( .D(n394), .CLK(clk), .QN(n274) );
  DFFX1_LVT \data_tx_reg[5]  ( .D(n453), .CLK(clk), .Q(data_tx[5]) );
  DFFX1_LVT \card_reg[6]  ( .D(n375), .CLK(clk), .Q(n30) );
  DFFX1_LVT \FIFOLevelReg_Value_reg[6]  ( .D(n376), .CLK(clk), .QN(n288) );
  DFFX1_LVT \card_reg[14]  ( .D(n378), .CLK(clk), .QN(n280) );
  DFFX1_LVT \card_reg[30]  ( .D(n380), .CLK(clk), .QN(n279) );
  DFFX1_LVT \BCC_reg[6]  ( .D(n381), .CLK(clk), .Q(BCC[6]) );
  DFFX1_LVT \card_reg[22]  ( .D(n383), .CLK(clk), .Q(n22) );
  DFFX1_LVT \data_tx_reg[6]  ( .D(n452), .CLK(clk), .Q(data_tx[6]) );
  DFFX1_LVT \card_reg[7]  ( .D(n365), .CLK(clk), .QN(n285) );
  DFFX1_LVT \FIFOLevelReg_Value_reg[7]  ( .D(n366), .CLK(clk), .Q(n15) );
  DFFX1_LVT \card_reg[15]  ( .D(n368), .CLK(clk), .QN(n284) );
  DFFX1_LVT \card_reg[31]  ( .D(n370), .CLK(clk), .QN(n283) );
  DFFX1_LVT \BCC_reg[7]  ( .D(n371), .CLK(clk), .Q(BCC[7]) );
  DFFX1_LVT \card_reg[23]  ( .D(n373), .CLK(clk), .QN(n282) );
  DFFX1_LVT \data_tx_reg[7]  ( .D(n451), .CLK(clk), .Q(data_tx[7]) );
  DFFX1_LVT \LED_reg[7]  ( .D(n356), .CLK(clk), .Q(LED[7]) );
  DFFX1_LVT \LED_reg[6]  ( .D(n357), .CLK(clk), .Q(LED[6]) );
  DFFX1_LVT \LED_reg[5]  ( .D(n358), .CLK(clk), .Q(LED[5]) );
  DFFX1_LVT \LED_reg[4]  ( .D(n359), .CLK(clk), .Q(LED[4]) );
  DFFX1_LVT \LED_reg[3]  ( .D(n360), .CLK(clk), .Q(LED[3]) );
  DFFX1_LVT \LED_reg[2]  ( .D(n361), .CLK(clk), .Q(LED[2]) );
  DFFX1_LVT \LED_reg[1]  ( .D(n362), .CLK(clk), .Q(LED[1]) );
  DFFX1_LVT \LED_reg[0]  ( .D(n363), .CLK(clk), .Q(LED[0]) );
  AO22X1_LVT U3 ( .A1(n60), .A2(instr_step[9]), .A3(N801), .A4(n5), .Y(n299)
         );
  AO22X1_LVT U5 ( .A1(n60), .A2(instr_step[8]), .A3(N800), .A4(n5), .Y(n300)
         );
  AO22X1_LVT U7 ( .A1(n60), .A2(instr_step[7]), .A3(N799), .A4(n5), .Y(n301)
         );
  AO222X1_LVT U8 ( .A1(N798), .A2(n5), .A3(n8), .A4(n9), .A5(n60), .A6(
        instr_step[6]), .Y(n302) );
  NAND2X0_RVT U9 ( .A1(n257), .A2(n245), .Y(n9) );
  AO221X1_LVT U10 ( .A1(N797), .A2(n5), .A3(n60), .A4(instr_step[5]), .A5(n14), 
        .Y(n303) );
  AO221X1_LVT U11 ( .A1(N796), .A2(n5), .A3(n60), .A4(instr_step[4]), .A5(n14), 
        .Y(n304) );
  AO22X1_LVT U12 ( .A1(n466), .A2(n342), .A3(n203), .A4(n257), .Y(n14) );
  AO22X1_LVT U13 ( .A1(n60), .A2(instr_step[2]), .A3(n44), .A4(n20), .Y(n305)
         );
  OR2X1_LVT U14 ( .A1(n21), .A2(N794), .Y(n20) );
  AO22X1_LVT U15 ( .A1(n60), .A2(instr_step[0]), .A3(N792), .A4(n5), .Y(n306)
         );
  NAND3X0_LVT U16 ( .A1(n23), .A2(n24), .A3(n25), .Y(n307) );
  OA22X1_LVT U17 ( .A1(n26), .A2(n27), .A3(n348), .A4(n44), .Y(n25) );
  NAND4X0_LVT U18 ( .A1(n257), .A2(n28), .A3(n342), .A4(n245), .Y(n24) );
  NAND2X0_RVT U20 ( .A1(N795), .A2(n5), .Y(n23) );
  NOR2X0_LVT U21 ( .A1(n60), .A2(n21), .Y(n5) );
  AO22X1_LVT U22 ( .A1(n60), .A2(instr_step[1]), .A3(n44), .A4(n31), .Y(n308)
         );
  OR2X1_LVT U23 ( .A1(n21), .A2(N793), .Y(n31) );
  OA21X1_LVT U24 ( .A1(n466), .A2(n28), .A3(n342), .Y(n21) );
  NAND4X0_LVT U26 ( .A1(instr_step[4]), .A2(instr_step[5]), .A3(n467), .A4(n33), .Y(n27) );
  AND3X1_LVT U27 ( .A1(instr_step[7]), .A2(instr_step[8]), .A3(instr_step[6]), 
        .Y(n33) );
  AO22X1_LVT U28 ( .A1(n34), .A2(card_OK), .A3(n188), .A4(n36), .Y(n355) );
  NAND2X0_RVT U30 ( .A1(n73), .A2(n38), .Y(n34) );
  OAI22X1_LVT U31 ( .A1(n39), .A2(n40), .A3(n41), .A4(n42), .Y(n38) );
  OR3X1_LVT U32 ( .A1(n15), .A2(n7), .A3(n45), .Y(n42) );
  NAND3X0_LVT U33 ( .A1(n289), .A2(n290), .A3(n288), .Y(n45) );
  NAND4X0_LVT U34 ( .A1(n6), .A2(n13), .A3(n36), .A4(n48), .Y(n41) );
  AND2X1_LVT U35 ( .A1(n354), .A2(N666), .Y(n48) );
  AND3X1_LVT U36 ( .A1(n474), .A2(n348), .A3(n468), .Y(n36) );
  AO22X1_LVT U37 ( .A1(n2), .A2(LED[7]), .A3(data_rx[7]), .A4(n52), .Y(n356)
         );
  AO22X1_LVT U38 ( .A1(n2), .A2(LED[6]), .A3(data_rx[6]), .A4(n52), .Y(n357)
         );
  AO22X1_LVT U39 ( .A1(n2), .A2(LED[5]), .A3(data_rx[5]), .A4(n52), .Y(n358)
         );
  AO22X1_LVT U40 ( .A1(n2), .A2(LED[4]), .A3(data_rx[4]), .A4(n52), .Y(n359)
         );
  AO22X1_LVT U41 ( .A1(n2), .A2(LED[3]), .A3(data_rx[3]), .A4(n52), .Y(n360)
         );
  AO22X1_LVT U42 ( .A1(n2), .A2(LED[2]), .A3(data_rx[2]), .A4(n52), .Y(n361)
         );
  AO22X1_LVT U43 ( .A1(n2), .A2(LED[1]), .A3(data_rx[1]), .A4(n52), .Y(n362)
         );
  AO22X1_LVT U44 ( .A1(n2), .A2(LED[0]), .A3(data_rx[0]), .A4(n52), .Y(n363)
         );
  NOR2X0_LVT U45 ( .A1(n53), .A2(n2), .Y(n52) );
  NAND2X0_RVT U47 ( .A1(n53), .A2(n55), .Y(n54) );
  NAND4X0_LVT U48 ( .A1(n348), .A2(n56), .A3(n345), .A4(n57), .Y(n55) );
  AND4X1_LVT U49 ( .A1(n346), .A2(instr_step[4]), .A3(instr_step[7]), .A4(
        instr_step[8]), .Y(n57) );
  NAND3X0_LVT U51 ( .A1(n465), .A2(instr_step[7]), .A3(n59), .Y(n53) );
  OAI22X1_LVT U53 ( .A1(n88), .A2(n334), .A3(n82), .A4(n285), .Y(n364) );
  OAI22X1_LVT U54 ( .A1(n43), .A2(n285), .A3(n69), .A4(n238), .Y(n365) );
  AO22X1_LVT U55 ( .A1(n68), .A2(n15), .A3(n50), .A4(data_rx[7]), .Y(n366) );
  OAI22X1_LVT U57 ( .A1(n91), .A2(n326), .A3(n87), .A4(n284), .Y(n367) );
  OAI22X1_LVT U58 ( .A1(n46), .A2(n284), .A3(n67), .A4(n238), .Y(n368) );
  OAI22X1_LVT U59 ( .A1(n91), .A2(n310), .A3(n87), .A4(n283), .Y(n369) );
  OAI22X1_LVT U60 ( .A1(n49), .A2(n283), .A3(n66), .A4(n238), .Y(n370) );
  AO22X1_LVT U61 ( .A1(n4), .A2(BCC[7]), .A3(n197), .A4(data_rx[7]), .Y(n371)
         );
  OAI22X1_LVT U62 ( .A1(n91), .A2(n318), .A3(n87), .A4(n282), .Y(n372) );
  OAI22X1_LVT U63 ( .A1(n47), .A2(n282), .A3(n65), .A4(n238), .Y(n373) );
  AO22X1_LVT U64 ( .A1(n87), .A2(UID[6]), .A3(n91), .A4(n30), .Y(n374) );
  AO22X1_LVT U65 ( .A1(n69), .A2(n30), .A3(n43), .A4(data_rx[6]), .Y(n375) );
  OAI22X1_LVT U67 ( .A1(n50), .A2(n288), .A3(n68), .A4(n235), .Y(n376) );
  OAI22X1_LVT U68 ( .A1(n91), .A2(n327), .A3(n87), .A4(n280), .Y(n377) );
  OAI22X1_LVT U69 ( .A1(n46), .A2(n280), .A3(n67), .A4(n235), .Y(n378) );
  OAI22X1_LVT U70 ( .A1(n91), .A2(n311), .A3(n87), .A4(n279), .Y(n379) );
  OAI22X1_LVT U71 ( .A1(n49), .A2(n279), .A3(n66), .A4(n235), .Y(n380) );
  AO22X1_LVT U72 ( .A1(n4), .A2(BCC[6]), .A3(n197), .A4(data_rx[6]), .Y(n381)
         );
  AO22X1_LVT U73 ( .A1(n87), .A2(UID[22]), .A3(n91), .A4(n22), .Y(n382) );
  AO22X1_LVT U74 ( .A1(n65), .A2(n22), .A3(n47), .A4(data_rx[6]), .Y(n383) );
  AO22X1_LVT U76 ( .A1(new_card), .A2(n80), .A3(n194), .A4(n472), .Y(n384) );
  NAND3X0_LVT U78 ( .A1(n73), .A2(n83), .A3(n84), .Y(n80) );
  AO22X1_LVT U79 ( .A1(n472), .A2(data_rx[5]), .A3(n85), .A4(instr_step[3]), 
        .Y(n83) );
  OAI22X1_LVT U80 ( .A1(n90), .A2(n336), .A3(n86), .A4(n277), .Y(n385) );
  OAI22X1_LVT U81 ( .A1(n43), .A2(n277), .A3(n69), .A4(n230), .Y(n386) );
  AO22X1_LVT U82 ( .A1(n68), .A2(n7), .A3(n50), .A4(data_rx[5]), .Y(n387) );
  OAI22X1_LVT U84 ( .A1(n90), .A2(n328), .A3(n86), .A4(n276), .Y(n388) );
  OAI22X1_LVT U85 ( .A1(n46), .A2(n276), .A3(n67), .A4(n230), .Y(n389) );
  OAI22X1_LVT U86 ( .A1(n90), .A2(n312), .A3(n86), .A4(n275), .Y(n390) );
  OAI22X1_LVT U87 ( .A1(n49), .A2(n275), .A3(n66), .A4(n230), .Y(n391) );
  AO22X1_LVT U88 ( .A1(n4), .A2(BCC[5]), .A3(n197), .A4(data_rx[5]), .Y(n392)
         );
  OAI22X1_LVT U89 ( .A1(n90), .A2(n320), .A3(n86), .A4(n274), .Y(n393) );
  OAI22X1_LVT U90 ( .A1(n47), .A2(n274), .A3(n65), .A4(n230), .Y(n394) );
  OAI22X1_LVT U91 ( .A1(n90), .A2(n337), .A3(n86), .A4(n273), .Y(n395) );
  OAI22X1_LVT U92 ( .A1(n43), .A2(n273), .A3(n69), .A4(n209), .Y(n396) );
  OAI22X1_LVT U93 ( .A1(n50), .A2(n290), .A3(n68), .A4(n209), .Y(n397) );
  OAI22X1_LVT U94 ( .A1(n90), .A2(n329), .A3(n86), .A4(n272), .Y(n398) );
  OAI22X1_LVT U95 ( .A1(n46), .A2(n272), .A3(n67), .A4(n209), .Y(n399) );
  OAI22X1_LVT U96 ( .A1(n90), .A2(n313), .A3(n86), .A4(n271), .Y(n400) );
  OAI22X1_LVT U97 ( .A1(n49), .A2(n271), .A3(n66), .A4(n209), .Y(n401) );
  AO22X1_LVT U98 ( .A1(n4), .A2(BCC[4]), .A3(n197), .A4(data_rx[4]), .Y(n402)
         );
  OAI22X1_LVT U99 ( .A1(n90), .A2(n321), .A3(n86), .A4(n270), .Y(n403) );
  OAI22X1_LVT U100 ( .A1(n47), .A2(n270), .A3(n65), .A4(n209), .Y(n404) );
  OAI22X1_LVT U101 ( .A1(n89), .A2(n338), .A3(n86), .A4(n269), .Y(n405) );
  OAI22X1_LVT U102 ( .A1(n43), .A2(n269), .A3(n69), .A4(n208), .Y(n406) );
  OAI22X1_LVT U103 ( .A1(n50), .A2(n289), .A3(n68), .A4(n208), .Y(n407) );
  OAI22X1_LVT U104 ( .A1(n89), .A2(n330), .A3(n86), .A4(n268), .Y(n408) );
  OAI22X1_LVT U105 ( .A1(n46), .A2(n268), .A3(n67), .A4(n208), .Y(n409) );
  OAI22X1_LVT U106 ( .A1(n89), .A2(n314), .A3(n86), .A4(n267), .Y(n410) );
  OAI22X1_LVT U107 ( .A1(n49), .A2(n267), .A3(n66), .A4(n208), .Y(n411) );
  AO22X1_LVT U108 ( .A1(n4), .A2(BCC[3]), .A3(n197), .A4(data_rx[3]), .Y(n412)
         );
  OAI22X1_LVT U109 ( .A1(n89), .A2(n322), .A3(n82), .A4(n266), .Y(n413) );
  OAI22X1_LVT U110 ( .A1(n47), .A2(n266), .A3(n65), .A4(n208), .Y(n414) );
  OAI22X1_LVT U111 ( .A1(n89), .A2(n339), .A3(n82), .A4(n265), .Y(n415) );
  OAI22X1_LVT U112 ( .A1(n43), .A2(n265), .A3(n69), .A4(n205), .Y(n416) );
  AO22X1_LVT U113 ( .A1(n68), .A2(n13), .A3(n50), .A4(data_rx[2]), .Y(n417) );
  OAI22X1_LVT U115 ( .A1(n89), .A2(n331), .A3(n82), .A4(n264), .Y(n418) );
  OAI22X1_LVT U116 ( .A1(n46), .A2(n264), .A3(n67), .A4(n205), .Y(n419) );
  OAI22X1_LVT U117 ( .A1(n89), .A2(n315), .A3(n82), .A4(n263), .Y(n420) );
  OAI22X1_LVT U118 ( .A1(n49), .A2(n263), .A3(n66), .A4(n205), .Y(n421) );
  AO22X1_LVT U119 ( .A1(n4), .A2(BCC[2]), .A3(n197), .A4(data_rx[2]), .Y(n422)
         );
  OAI22X1_LVT U120 ( .A1(n88), .A2(n323), .A3(n82), .A4(n262), .Y(n423) );
  OAI22X1_LVT U121 ( .A1(n47), .A2(n262), .A3(n65), .A4(n205), .Y(n424) );
  OAI22X1_LVT U122 ( .A1(n43), .A2(n261), .A3(n69), .A4(n204), .Y(n425) );
  OAI22X1_LVT U123 ( .A1(n50), .A2(n354), .A3(n68), .A4(n204), .Y(n426) );
  OAI22X1_LVT U124 ( .A1(n88), .A2(n332), .A3(n82), .A4(n260), .Y(n427) );
  OAI22X1_LVT U125 ( .A1(n46), .A2(n260), .A3(n67), .A4(n204), .Y(n428) );
  OAI22X1_LVT U126 ( .A1(n88), .A2(n316), .A3(n82), .A4(n259), .Y(n429) );
  OAI22X1_LVT U127 ( .A1(n49), .A2(n259), .A3(n66), .A4(n204), .Y(n430) );
  AO22X1_LVT U128 ( .A1(n4), .A2(BCC[1]), .A3(n197), .A4(data_rx[1]), .Y(n431)
         );
  OAI22X1_LVT U129 ( .A1(n88), .A2(n324), .A3(n82), .A4(n258), .Y(n432) );
  OAI22X1_LVT U130 ( .A1(n47), .A2(n258), .A3(n65), .A4(n204), .Y(n433) );
  AO22X1_LVT U131 ( .A1(n87), .A2(UID[0]), .A3(n91), .A4(n19), .Y(n434) );
  AO22X1_LVT U132 ( .A1(n69), .A2(n19), .A3(n43), .A4(data_rx[0]), .Y(n435) );
  AO22X1_LVT U136 ( .A1(n68), .A2(n6), .A3(n50), .A4(data_rx[0]), .Y(n436) );
  OAI22X1_LVT U140 ( .A1(n88), .A2(n333), .A3(n82), .A4(n256), .Y(n437) );
  AO22X1_LVT U141 ( .A1(n67), .A2(n18), .A3(n46), .A4(data_rx[0]), .Y(n438) );
  OAI22X1_LVT U145 ( .A1(n88), .A2(n317), .A3(n82), .A4(n255), .Y(n439) );
  AO22X1_LVT U146 ( .A1(n66), .A2(n17), .A3(n49), .A4(data_rx[0]), .Y(n440) );
  AO22X1_LVT U150 ( .A1(n4), .A2(BCC[0]), .A3(n197), .A4(data_rx[0]), .Y(n441)
         );
  OAI22X1_LVT U153 ( .A1(n88), .A2(n325), .A3(n82), .A4(n254), .Y(n442) );
  AO22X1_LVT U154 ( .A1(n65), .A2(n16), .A3(n47), .A4(data_rx[0]), .Y(n443) );
  AND2X1_LVT U158 ( .A1(n96), .A2(instr_step[3]), .Y(n94) );
  AND4X1_LVT U159 ( .A1(n85), .A2(n73), .A3(n351), .A4(n81), .Y(n96) );
  AO22X1_LVT U160 ( .A1(n63), .A2(data_tx[15]), .A3(n70), .A4(n103), .Y(n444)
         );
  NAND2X0_RVT U161 ( .A1(n104), .A2(n105), .Y(n103) );
  AO22X1_LVT U162 ( .A1(n63), .A2(data_tx[14]), .A3(n70), .A4(n106), .Y(n445)
         );
  NAND4X0_LVT U163 ( .A1(n107), .A2(n108), .A3(n109), .A4(n110), .Y(n106) );
  AO22X1_LVT U164 ( .A1(n63), .A2(data_tx[13]), .A3(n70), .A4(n111), .Y(n446)
         );
  NAND4X0_LVT U165 ( .A1(n112), .A2(n3), .A3(n114), .A4(n115), .Y(n111) );
  AND2X1_LVT U166 ( .A1(n116), .A2(n117), .Y(n114) );
  AO22X1_LVT U167 ( .A1(n63), .A2(data_tx[12]), .A3(n70), .A4(n118), .Y(n447)
         );
  NAND3X0_LVT U168 ( .A1(n119), .A2(n120), .A3(n121), .Y(n118) );
  AND3X1_LVT U169 ( .A1(n122), .A2(n110), .A3(n123), .Y(n121) );
  OR2X1_LVT U170 ( .A1(n124), .A2(data_rx[1]), .Y(n123) );
  AO22X1_LVT U171 ( .A1(n64), .A2(data_tx[11]), .A3(n70), .A4(n125), .Y(n448)
         );
  NAND4X0_LVT U172 ( .A1(n126), .A2(n127), .A3(n128), .A4(n129), .Y(n125) );
  AND3X1_LVT U173 ( .A1(n130), .A2(n116), .A3(n131), .Y(n129) );
  OA22X1_LVT U174 ( .A1(n204), .A2(n124), .A3(n132), .A4(n133), .Y(n131) );
  AO22X1_LVT U175 ( .A1(n64), .A2(data_tx[10]), .A3(n72), .A4(n134), .Y(n449)
         );
  NAND4X0_LVT U176 ( .A1(n135), .A2(n117), .A3(n122), .A4(n136), .Y(n134) );
  OA21X1_LVT U177 ( .A1(n204), .A2(n124), .A3(n119), .Y(n136) );
  AO22X1_LVT U179 ( .A1(n64), .A2(data_tx[9]), .A3(n71), .A4(n137), .Y(n450)
         );
  AO22X1_LVT U180 ( .A1(n63), .A2(data_tx[7]), .A3(n72), .A4(n138), .Y(n451)
         );
  NAND4X0_LVT U181 ( .A1(n119), .A2(n139), .A3(n140), .A4(n141), .Y(n138) );
  OA221X1_LVT U182 ( .A1(n326), .A2(n1), .A3(n238), .A4(n3), .A5(n143), .Y(
        n141) );
  OA22X1_LVT U183 ( .A1(n310), .A2(n61), .A3(n318), .A4(n62), .Y(n143) );
  OA22X1_LVT U185 ( .A1(n334), .A2(n146), .A3(n147), .A4(n148), .Y(n140) );
  AO22X1_LVT U186 ( .A1(n64), .A2(data_tx[6]), .A3(n71), .A4(n149), .Y(n452)
         );
  OR3X1_LVT U187 ( .A1(n150), .A2(n151), .A3(n152), .Y(n149) );
  AO221X1_LVT U188 ( .A1(n35), .A2(UID[22]), .A3(n309), .A4(UID[6]), .A5(n155), 
        .Y(n152) );
  OAI222X1_LVT U189 ( .A1(n1), .A2(n327), .A3(n3), .A4(n235), .A5(n61), .A6(
        n311), .Y(n155) );
  NAND3X0_LVT U194 ( .A1(n156), .A2(n157), .A3(n158), .Y(n151) );
  NAND3X0_LVT U195 ( .A1(n130), .A2(n116), .A3(n159), .Y(n150) );
  AO22X1_LVT U196 ( .A1(n63), .A2(data_tx[5]), .A3(n72), .A4(n160), .Y(n453)
         );
  NAND4X0_LVT U197 ( .A1(n161), .A2(n162), .A3(n163), .A4(n164), .Y(n160) );
  OA221X1_LVT U198 ( .A1(n320), .A2(n62), .A3(n312), .A4(n61), .A5(n165), .Y(
        n164) );
  OA221X1_LVT U199 ( .A1(n328), .A2(n1), .A3(n230), .A4(n3), .A5(n109), .Y(
        n165) );
  OA21X1_LVT U201 ( .A1(n336), .A2(n146), .A3(n107), .Y(n163) );
  AO22X1_LVT U202 ( .A1(n64), .A2(data_tx[4]), .A3(n71), .A4(n166), .Y(n454)
         );
  NAND4X0_LVT U203 ( .A1(n167), .A2(n168), .A3(n169), .A4(n170), .Y(n166) );
  OA221X1_LVT U204 ( .A1(n321), .A2(n62), .A3(n313), .A4(n61), .A5(n171), .Y(
        n170) );
  OA21X1_LVT U205 ( .A1(n337), .A2(n146), .A3(n161), .Y(n171) );
  OA22X1_LVT U206 ( .A1(n209), .A2(n3), .A3(n329), .A4(n1), .Y(n169) );
  AO22X1_LVT U208 ( .A1(n64), .A2(data_tx[3]), .A3(n72), .A4(n172), .Y(n455)
         );
  NAND4X0_LVT U209 ( .A1(n161), .A2(n173), .A3(n174), .A4(n175), .Y(n172) );
  OA221X1_LVT U210 ( .A1(n330), .A2(n1), .A3(n208), .A4(n3), .A5(n176), .Y(
        n175) );
  OA22X1_LVT U211 ( .A1(n314), .A2(n61), .A3(n322), .A4(n62), .Y(n176) );
  OA21X1_LVT U213 ( .A1(n338), .A2(n146), .A3(n107), .Y(n174) );
  AO22X1_LVT U214 ( .A1(n64), .A2(data_tx[2]), .A3(n71), .A4(n177), .Y(n456)
         );
  NAND4X0_LVT U215 ( .A1(n161), .A2(n173), .A3(n178), .A4(n179), .Y(n177) );
  AND4X1_LVT U216 ( .A1(n180), .A2(n168), .A3(n181), .A4(n182), .Y(n179) );
  OA221X1_LVT U217 ( .A1(n331), .A2(n1), .A3(n205), .A4(n3), .A5(n109), .Y(
        n182) );
  OA222X1_LVT U219 ( .A1(n339), .A2(n146), .A3(n315), .A4(n61), .A5(n323), 
        .A6(n62), .Y(n178) );
  AO22X1_LVT U220 ( .A1(n64), .A2(data_tx[1]), .A3(n72), .A4(n183), .Y(n457)
         );
  NAND4X0_LVT U221 ( .A1(n128), .A2(n184), .A3(n185), .A4(n186), .Y(n183) );
  AND4X1_LVT U222 ( .A1(n159), .A2(n167), .A3(n180), .A4(n187), .Y(n186) );
  OA21X1_LVT U223 ( .A1(n332), .A2(n1), .A3(n181), .Y(n187) );
  OA222X1_LVT U224 ( .A1(n340), .A2(n146), .A3(n316), .A4(n61), .A5(n324), 
        .A6(n62), .Y(n185) );
  NAND2X0_RVT U225 ( .A1(n470), .A2(n468), .Y(n184) );
  AO22X1_LVT U226 ( .A1(n64), .A2(data_tx[0]), .A3(n71), .A4(n189), .Y(n458)
         );
  NAND4X0_LVT U227 ( .A1(n161), .A2(n190), .A3(n191), .A4(n192), .Y(n189) );
  AND3X1_LVT U228 ( .A1(n3), .A2(n110), .A3(n193), .Y(n192) );
  AND3X1_LVT U229 ( .A1(n167), .A2(n135), .A3(n181), .Y(n193) );
  OA222X1_LVT U230 ( .A1(n325), .A2(n62), .A3(n333), .A4(n1), .A5(n317), .A6(
        n61), .Y(n191) );
  NAND2X0_RVT U231 ( .A1(n309), .A2(UID[0]), .Y(n190) );
  AND4X1_LVT U234 ( .A1(n158), .A2(n156), .A3(n159), .A4(n115), .Y(n161) );
  NAND3X0_LVT U235 ( .A1(n349), .A2(n351), .A3(n287), .Y(n115) );
  OAI22X1_LVT U239 ( .A1(n89), .A2(n340), .A3(n86), .A4(n261), .Y(n459) );
  AO22X1_LVT U242 ( .A1(n73), .A2(n195), .A3(spi_start), .A4(n196), .Y(n460)
         );
  NAND4X0_LVT U243 ( .A1(n104), .A2(n117), .A3(n281), .A4(n198), .Y(n195) );
  AND2X1_LVT U244 ( .A1(n128), .A2(n119), .Y(n198) );
  AND4X1_LVT U245 ( .A1(n199), .A2(n200), .A3(n201), .A4(n108), .Y(n119) );
  NAND2X0_RVT U246 ( .A1(n202), .A2(n467), .Y(n108) );
  NAND2X0_RVT U247 ( .A1(n472), .A2(n56), .Y(n201) );
  NAND3X0_LVT U248 ( .A1(n474), .A2(instr_step[3]), .A3(n292), .Y(n200) );
  NAND2X0_RVT U249 ( .A1(n469), .A2(n471), .Y(n199) );
  AND4X1_LVT U250 ( .A1(n110), .A2(n156), .A3(n109), .A4(n206), .Y(n128) );
  AND2X1_LVT U251 ( .A1(n158), .A2(n3), .Y(n206) );
  NAND2X0_RVT U253 ( .A1(n291), .A2(n470), .Y(n158) );
  NAND3X0_LVT U254 ( .A1(n468), .A2(n348), .A3(n202), .Y(n109) );
  NAND3X0_LVT U256 ( .A1(instr_step[0]), .A2(instr_step[2]), .A3(n287), .Y(
        n156) );
  NAND3X0_LVT U257 ( .A1(instr_step[0]), .A2(instr_step[2]), .A3(n286), .Y(
        n110) );
  NAND3X0_LVT U259 ( .A1(n120), .A2(n173), .A3(n210), .Y(n137) );
  OA221X1_LVT U260 ( .A1(n211), .A2(n212), .A3(instr_step[0]), .A4(n213), .A5(
        n116), .Y(n210) );
  NAND2X0_RVT U261 ( .A1(n469), .A2(n207), .Y(n116) );
  OA222X1_LVT U262 ( .A1(n214), .A2(n132), .A3(n215), .A4(n147), .A5(n216), 
        .A6(n148), .Y(n173) );
  AND4X1_LVT U263 ( .A1(n1), .A2(n61), .A3(n217), .A4(n218), .Y(n120) );
  AND4X1_LVT U264 ( .A1(n139), .A2(n162), .A3(n127), .A4(n168), .Y(n218) );
  NAND2X0_RVT U265 ( .A1(n219), .A2(n56), .Y(n168) );
  OA21X1_LVT U266 ( .A1(n147), .A2(n132), .A3(n181), .Y(n127) );
  AO21X1_LVT U267 ( .A1(n220), .A2(n147), .A3(n148), .Y(n181) );
  AND3X1_LVT U268 ( .A1(n180), .A2(n157), .A3(n221), .Y(n162) );
  NAND2X0_RVT U269 ( .A1(n291), .A2(n471), .Y(n221) );
  NAND3X0_LVT U270 ( .A1(n474), .A2(instr_step[3]), .A3(n84), .Y(n157) );
  NAND3X0_LVT U272 ( .A1(n222), .A2(instr_step[5]), .A3(n347), .Y(n40) );
  NAND2X0_RVT U273 ( .A1(n469), .A2(n472), .Y(n180) );
  AND4X1_LVT U275 ( .A1(n107), .A2(n223), .A3(n159), .A4(n167), .Y(n139) );
  NAND2X0_RVT U276 ( .A1(n465), .A2(n471), .Y(n167) );
  NAND2X0_RVT U277 ( .A1(n219), .A2(n224), .Y(n159) );
  NAND4X0_LVT U278 ( .A1(n216), .A2(n225), .A3(n133), .A4(n226), .Y(n224) );
  AND3X1_LVT U279 ( .A1(n147), .A2(n214), .A3(n220), .Y(n226) );
  NAND2X0_RVT U280 ( .A1(n95), .A2(n351), .Y(n147) );
  NAND2X0_RVT U281 ( .A1(n292), .A2(n471), .Y(n223) );
  AND2X1_LVT U283 ( .A1(n130), .A2(n135), .Y(n107) );
  NAND3X0_LVT U284 ( .A1(n351), .A2(instr_step[2]), .A3(n286), .Y(n135) );
  NAND2X0_RVT U285 ( .A1(n207), .A2(n56), .Y(n130) );
  AND3X1_LVT U286 ( .A1(n146), .A2(n105), .A3(n62), .Y(n217) );
  NAND2X0_RVT U288 ( .A1(n85), .A2(n227), .Y(n105) );
  AO221X1_LVT U289 ( .A1(n84), .A2(n348), .A3(instr_step[3]), .A4(n228), .A5(
        n467), .Y(n227) );
  OR2X1_LVT U291 ( .A1(instr_step[3]), .A2(n214), .Y(n39) );
  NAND3X0_LVT U292 ( .A1(n225), .A2(n214), .A3(n216), .Y(n228) );
  NAND2X0_RVT U293 ( .A1(n470), .A2(n465), .Y(n146) );
  AND3X1_LVT U295 ( .A1(n348), .A2(instr_step[6]), .A3(n229), .Y(n219) );
  NAND2X0_RVT U297 ( .A1(n286), .A2(n349), .Y(n117) );
  NAND3X0_LVT U299 ( .A1(n348), .A2(instr_step[1]), .A3(n202), .Y(n211) );
  AND3X1_LVT U300 ( .A1(n124), .A2(n122), .A3(n126), .Y(n104) );
  OA221X1_LVT U301 ( .A1(n133), .A2(n148), .A3(n215), .A4(n214), .A5(n112), 
        .Y(n126) );
  NAND2X0_RVT U302 ( .A1(n473), .A2(n287), .Y(n112) );
  NAND2X0_RVT U304 ( .A1(n207), .A2(instr_step[1]), .Y(n213) );
  AND2X1_LVT U305 ( .A1(n202), .A2(instr_step[3]), .Y(n207) );
  AND2X1_LVT U306 ( .A1(n229), .A2(n345), .Y(n202) );
  NAND2X0_RVT U307 ( .A1(n95), .A2(instr_step[0]), .Y(n214) );
  AND2X1_LVT U308 ( .A1(n350), .A2(instr_step[2]), .Y(n95) );
  NAND4X0_LVT U309 ( .A1(n348), .A2(n346), .A3(n347), .A4(n222), .Y(n148) );
  NAND2X0_RVT U310 ( .A1(n99), .A2(n351), .Y(n133) );
  NAND3X0_LVT U311 ( .A1(n85), .A2(n348), .A3(n291), .Y(n122) );
  NAND2X0_RVT U313 ( .A1(n473), .A2(instr_step[1]), .Y(n216) );
  AND3X1_LVT U314 ( .A1(n222), .A2(instr_step[4]), .A3(n346), .Y(n85) );
  NAND2X0_RVT U315 ( .A1(n470), .A2(n84), .Y(n124) );
  AND2X1_LVT U316 ( .A1(n99), .A2(instr_step[0]), .Y(n84) );
  AND2X1_LVT U317 ( .A1(instr_step[2]), .A2(instr_step[1]), .Y(n99) );
  NAND3X0_LVT U320 ( .A1(instr_step[3]), .A2(instr_step[6]), .A3(n229), .Y(
        n215) );
  AND4X1_LVT U321 ( .A1(n343), .A2(n344), .A3(instr_step[4]), .A4(
        instr_step[5]), .Y(n229) );
  AO21X1_LVT U324 ( .A1(rst), .A2(n231), .A3(n232), .Y(n461) );
  AND4X1_LVT U325 ( .A1(n59), .A2(n465), .A3(n73), .A4(n344), .Y(n232) );
  NAND3X0_LVT U327 ( .A1(n351), .A2(instr_step[1]), .A3(n349), .Y(n220) );
  NAND4X0_LVT U329 ( .A1(n469), .A2(n59), .A3(n73), .A4(n344), .Y(n231) );
  AND4X1_LVT U330 ( .A1(n345), .A2(n348), .A3(n233), .A4(n346), .Y(n59) );
  AND2X1_LVT U331 ( .A1(n347), .A2(n343), .Y(n233) );
  NAND2X0_RVT U333 ( .A1(n473), .A2(n350), .Y(n225) );
  NAND2X0_RVT U335 ( .A1(n349), .A2(instr_step[0]), .Y(n212) );
  AO22X1_LVT U337 ( .A1(n234), .A2(n278), .A3(n236), .A4(n352), .Y(n462) );
  AND2X1_LVT U338 ( .A1(n237), .A2(n246), .Y(n236) );
  AO22X1_LVT U340 ( .A1(n237), .A2(n353), .A3(n234), .A4(n246), .Y(n464) );
  AND2X1_LVT U342 ( .A1(n203), .A2(n29), .Y(n237) );
  NAND2X0_RVT U343 ( .A1(n353), .A2(n278), .Y(n29) );
  NAND2X0_RVT U346 ( .A1(n8), .A2(n245), .Y(n234) );
  AND2X1_LVT U348 ( .A1(n28), .A2(n73), .Y(n8) );
  NAND2X0_RVT U350 ( .A1(n44), .A2(n342), .Y(n26) );
  NAND4X0_LVT U353 ( .A1(cnt[5]), .A2(cnt[9]), .A3(cnt[13]), .A4(n242), .Y(
        n241) );
  NOR4X1_LVT U354 ( .A1(spi_busy), .A2(n294), .A3(n295), .A4(n296), .Y(n242)
         );
  NAND3X0_LVT U355 ( .A1(cnt[12]), .A2(cnt[11]), .A3(n243), .Y(n240) );
  OR3X1_LVT U357 ( .A1(n297), .A2(n298), .A3(n244), .Y(n196) );
  NAND3X0_LVT U358 ( .A1(cnt[1]), .A2(cnt[3]), .A3(cnt[2]), .Y(n244) );
  NAND4X0_LVT U359 ( .A1(cnt[10]), .A2(cnt[16]), .A3(cnt[15]), .A4(cnt[14]), 
        .Y(n239) );
  AND3X1_LVT U360 ( .A1(n56), .A2(n11), .A3(n471), .Y(n28) );
  NAND4X0_LVT U362 ( .A1(n346), .A2(n347), .A3(n222), .A4(instr_step[3]), .Y(
        n132) );
  AND3X1_LVT U364 ( .A1(n344), .A2(instr_step[6]), .A3(n343), .Y(n222) );
  AND3X1_LVT U367 ( .A1(n350), .A2(n351), .A3(n349), .Y(n56) );
  spi spi_module ( .clk(clk), .rst_n(rst_n), .spi_start(spi_start), .data_tx({
        data_tx[15:9], 1'b0, data_tx[7:0]}), .miso(miso), .data_rx(data_rx), 
        .sclk(sclk), .mosi(mosi), .cs_n(cs_n), .spi_busy(spi_busy) );
  rc522_read_block_DW01_inc_0_DW01_inc_8 add_370 ( .A(cnt), .SUM({N859, N858, 
        N857, N856, N855, N854, N853, N852, N851, N850, N849, N848, N847, N846, 
        N845, N844, N843, N842, N841, N840, N839, N838, N837, N836, N835, N834, 
        N833, N832, N831, N830, N829, N828}) );
  rc522_read_block_DW01_inc_1_DW01_inc_9 add_367 ( .A(instr_step), .SUM({N801, 
        N800, N799, N798, N797, N796, N795, N794, N793, N792}) );
  DFFARX1_LVT \cnt_reg[31]  ( .D(N859), .CLK(clk), .RSTB(n76), .Q(cnt[31]) );
  DFFARX1_LVT card_OK_reg ( .D(n355), .CLK(clk), .RSTB(n81), .Q(card_OK) );
  DFFARX1_LVT \cnt_reg[30]  ( .D(N858), .CLK(clk), .RSTB(n76), .Q(cnt[30]) );
  DFFARX1_LVT \cnt_reg[29]  ( .D(N857), .CLK(clk), .RSTB(n76), .Q(cnt[29]) );
  DFFARX1_LVT \cnt_reg[28]  ( .D(N856), .CLK(clk), .RSTB(n76), .Q(cnt[28]) );
  DFFARX1_LVT \cnt_reg[27]  ( .D(N855), .CLK(clk), .RSTB(n76), .Q(cnt[27]) );
  DFFARX1_LVT \cnt_reg[26]  ( .D(N854), .CLK(clk), .RSTB(n76), .Q(cnt[26]) );
  DFFARX1_LVT \cnt_reg[25]  ( .D(N853), .CLK(clk), .RSTB(n75), .Q(cnt[25]) );
  DFFARX1_LVT \cnt_reg[24]  ( .D(N852), .CLK(clk), .RSTB(n75), .Q(cnt[24]) );
  DFFARX1_LVT \cnt_reg[23]  ( .D(N851), .CLK(clk), .RSTB(n75), .Q(cnt[23]) );
  DFFARX1_LVT \cnt_reg[22]  ( .D(N850), .CLK(clk), .RSTB(n75), .Q(cnt[22]) );
  DFFARX1_LVT \cnt_2_reg[2]  ( .D(n462), .CLK(clk), .RSTB(n76), .Q(n278), .QN(
        n352) );
  DFFARX1_LVT \cnt_reg[21]  ( .D(N849), .CLK(clk), .RSTB(n75), .Q(cnt[21]) );
  DFFARX1_LVT \cnt_2_reg[1]  ( .D(n464), .CLK(clk), .RSTB(n76), .Q(n246), .QN(
        n353) );
  DFFARX1_LVT \cnt_reg[20]  ( .D(N848), .CLK(clk), .RSTB(n75), .Q(cnt[20]) );
  DFFARX1_LVT \cnt_reg[19]  ( .D(N847), .CLK(clk), .RSTB(n75), .Q(cnt[19]) );
  DFFARX1_LVT \UID_reg[6]  ( .D(n374), .CLK(clk), .RSTB(n79), .Q(UID[6]), .QN(
        n335) );
  DFFARX1_LVT \cnt_reg[18]  ( .D(N846), .CLK(clk), .RSTB(n75), .Q(cnt[18]) );
  DFFARX1_LVT \UID_reg[7]  ( .D(n364), .CLK(clk), .RSTB(n79), .Q(UID[7]), .QN(
        n334) );
  DFFARX1_LVT \UID_reg[2]  ( .D(n415), .CLK(clk), .RSTB(n78), .Q(UID[2]), .QN(
        n339) );
  DFFARX1_LVT \UID_reg[15]  ( .D(n367), .CLK(clk), .RSTB(n79), .Q(UID[15]), 
        .QN(n326) );
  DFFARX1_LVT \UID_reg[10]  ( .D(n418), .CLK(clk), .RSTB(n78), .Q(UID[10]), 
        .QN(n331) );
  DFFARX1_LVT \UID_reg[1]  ( .D(n459), .CLK(clk), .RSTB(n79), .Q(UID[1]), .QN(
        n340) );
  DFFARX1_LVT \UID_reg[14]  ( .D(n377), .CLK(clk), .RSTB(n79), .Q(UID[14]), 
        .QN(n327) );
  DFFARX1_LVT \UID_reg[13]  ( .D(n388), .CLK(clk), .RSTB(n79), .Q(UID[13]), 
        .QN(n328) );
  DFFARX1_LVT \UID_reg[9]  ( .D(n427), .CLK(clk), .RSTB(n78), .Q(UID[9]), .QN(
        n332) );
  DFFARX1_LVT \UID_reg[5]  ( .D(n385), .CLK(clk), .RSTB(n79), .Q(UID[5]), .QN(
        n336) );
  DFFARX1_LVT \UID_reg[11]  ( .D(n408), .CLK(clk), .RSTB(n78), .Q(UID[11]), 
        .QN(n330) );
  DFFARX1_LVT \UID_reg[4]  ( .D(n395), .CLK(clk), .RSTB(n77), .Q(UID[4]), .QN(
        n337) );
  DFFARX1_LVT \UID_reg[3]  ( .D(n405), .CLK(clk), .RSTB(n77), .Q(UID[3]), .QN(
        n338) );
  DFFARX1_LVT \UID_reg[12]  ( .D(n398), .CLK(clk), .RSTB(n77), .Q(UID[12]), 
        .QN(n329) );
  DFFARX1_LVT \UID_reg[22]  ( .D(n382), .CLK(clk), .RSTB(n79), .Q(UID[22]), 
        .QN(n319) );
  DFFARX1_LVT \cnt_reg[17]  ( .D(N845), .CLK(clk), .RSTB(n75), .Q(cnt[17]) );
  DFFARX1_LVT \UID_reg[31]  ( .D(n369), .CLK(clk), .RSTB(n81), .Q(UID[31]), 
        .QN(n310) );
  DFFARX1_LVT \UID_reg[26]  ( .D(n420), .CLK(clk), .RSTB(n78), .Q(UID[26]), 
        .QN(n315) );
  DFFARX1_LVT \UID_reg[0]  ( .D(n434), .CLK(clk), .RSTB(n78), .Q(UID[0]), .QN(
        n341) );
  DFFARX1_LVT \UID_reg[25]  ( .D(n429), .CLK(clk), .RSTB(n78), .Q(UID[25]), 
        .QN(n316) );
  DFFARX1_LVT \UID_reg[27]  ( .D(n410), .CLK(clk), .RSTB(n78), .Q(UID[27]), 
        .QN(n314) );
  DFFARX1_LVT \UID_reg[29]  ( .D(n390), .CLK(clk), .RSTB(n79), .Q(UID[29]), 
        .QN(n312) );
  DFFARX1_LVT \UID_reg[18]  ( .D(n423), .CLK(clk), .RSTB(n78), .Q(UID[18]), 
        .QN(n323) );
  DFFARX1_LVT \UID_reg[23]  ( .D(n372), .CLK(clk), .RSTB(n81), .Q(UID[23]), 
        .QN(n318) );
  DFFARX1_LVT \UID_reg[28]  ( .D(n400), .CLK(clk), .RSTB(n77), .Q(UID[28]), 
        .QN(n313) );
  DFFARX1_LVT \UID_reg[30]  ( .D(n379), .CLK(clk), .RSTB(n79), .Q(UID[30]), 
        .QN(n311) );
  DFFARX1_LVT \UID_reg[21]  ( .D(n393), .CLK(clk), .RSTB(n79), .Q(UID[21]), 
        .QN(n320) );
  DFFARX1_LVT \UID_reg[17]  ( .D(n432), .CLK(clk), .RSTB(n78), .Q(UID[17]), 
        .QN(n324) );
  DFFARX1_LVT \UID_reg[20]  ( .D(n403), .CLK(clk), .RSTB(n77), .Q(UID[20]), 
        .QN(n321) );
  DFFARX1_LVT \UID_reg[19]  ( .D(n413), .CLK(clk), .RSTB(n78), .Q(UID[19]), 
        .QN(n322) );
  DFFARX1_LVT \UID_reg[8]  ( .D(n437), .CLK(clk), .RSTB(n78), .Q(UID[8]), .QN(
        n333) );
  DFFARX1_LVT \UID_reg[24]  ( .D(n439), .CLK(clk), .RSTB(n78), .Q(UID[24]), 
        .QN(n317) );
  DFFARX1_LVT \UID_reg[16]  ( .D(n442), .CLK(clk), .RSTB(n79), .Q(UID[16]), 
        .QN(n325) );
  DFFARX1_LVT spi_start_reg ( .D(n460), .CLK(clk), .RSTB(n79), .Q(spi_start)
         );
  DFFARX1_LVT new_card_reg ( .D(n384), .CLK(clk), .RSTB(n76), .Q(new_card), 
        .QN(n11) );
  DFFARX1_LVT \instr_step_reg[4]  ( .D(n304), .CLK(clk), .RSTB(n77), .Q(
        instr_step[4]), .QN(n347) );
  DFFARX1_LVT \instr_step_reg[8]  ( .D(n300), .CLK(clk), .RSTB(n77), .Q(
        instr_step[8]), .QN(n343) );
  DFFARX1_LVT \instr_step_reg[7]  ( .D(n301), .CLK(clk), .RSTB(n77), .Q(
        instr_step[7]), .QN(n344) );
  DFFARX1_LVT \instr_step_reg[9]  ( .D(n299), .CLK(clk), .RSTB(n77), .Q(
        instr_step[9]), .QN(n342) );
  DFFARX1_LVT \instr_step_reg[5]  ( .D(n303), .CLK(clk), .RSTB(n77), .Q(
        instr_step[5]), .QN(n346) );
  DFFARX1_LVT \instr_step_reg[6]  ( .D(n302), .CLK(clk), .RSTB(n77), .Q(
        instr_step[6]), .QN(n345) );
  DFFARX1_LVT \cnt_reg[8]  ( .D(N836), .CLK(clk), .RSTB(n74), .Q(cnt[8]), .QN(
        n296) );
  DFFARX1_LVT \cnt_reg[7]  ( .D(N835), .CLK(clk), .RSTB(n74), .Q(cnt[7]), .QN(
        n295) );
  DFFARX1_LVT \cnt_reg[6]  ( .D(N834), .CLK(clk), .RSTB(n74), .Q(cnt[6]), .QN(
        n294) );
  DFFARX1_LVT \cnt_reg[11]  ( .D(N839), .CLK(clk), .RSTB(n74), .Q(cnt[11]) );
  DFFARX1_LVT \cnt_reg[9]  ( .D(N837), .CLK(clk), .RSTB(n74), .Q(cnt[9]) );
  DFFARX1_LVT \cnt_reg[13]  ( .D(N841), .CLK(clk), .RSTB(n74), .Q(cnt[13]) );
  DFFARX1_LVT \cnt_reg[12]  ( .D(N840), .CLK(clk), .RSTB(n74), .Q(cnt[12]) );
  DFFARX1_LVT \cnt_reg[14]  ( .D(N842), .CLK(clk), .RSTB(n75), .Q(cnt[14]) );
  DFFARX1_LVT \cnt_reg[16]  ( .D(N844), .CLK(clk), .RSTB(n75), .Q(cnt[16]) );
  DFFARX1_LVT \cnt_reg[5]  ( .D(N833), .CLK(clk), .RSTB(n74), .Q(cnt[5]) );
  DFFARX1_LVT \cnt_reg[15]  ( .D(N843), .CLK(clk), .RSTB(n75), .Q(cnt[15]) );
  DFFARX1_LVT \cnt_reg[10]  ( .D(N838), .CLK(clk), .RSTB(n75), .Q(cnt[10]) );
  DFFARX1_LVT \cnt_reg[4]  ( .D(N832), .CLK(clk), .RSTB(n74), .Q(cnt[4]), .QN(
        n297) );
  DFFARX1_LVT \cnt_reg[0]  ( .D(N828), .CLK(clk), .RSTB(n77), .Q(cnt[0]), .QN(
        n298) );
  DFFARX1_LVT \cnt_reg[2]  ( .D(N830), .CLK(clk), .RSTB(n74), .Q(cnt[2]) );
  DFFARX1_LVT \cnt_reg[3]  ( .D(N831), .CLK(clk), .RSTB(n74), .Q(cnt[3]) );
  DFFARX1_LVT \cnt_reg[1]  ( .D(N829), .CLK(clk), .RSTB(n74), .Q(cnt[1]) );
  DFFARX1_LVT \instr_step_reg[1]  ( .D(n308), .CLK(clk), .RSTB(n76), .Q(
        instr_step[1]), .QN(n350) );
  DFFARX1_LVT \instr_step_reg[0]  ( .D(n306), .CLK(clk), .RSTB(n76), .Q(
        instr_step[0]), .QN(n351) );
  DFFARX1_LVT \instr_step_reg[2]  ( .D(n305), .CLK(clk), .RSTB(n77), .Q(
        instr_step[2]), .QN(n349) );
  DFFARX1_LVT \instr_step_reg[3]  ( .D(n307), .CLK(clk), .RSTB(n76), .Q(
        instr_step[3]), .QN(n348) );
  DFFARX1_HVT \cnt_2_reg[0]  ( .D(n463), .CLK(clk), .RSTB(n475), .Q(n245), 
        .QN(n293) );
  NAND2X0_LVT U4 ( .A1(n469), .A2(n470), .Y(n1) );
  NAND3X0_LVT U6 ( .A1(n54), .A2(n81), .A3(n73), .Y(n2) );
  NAND2X0_LVT U19 ( .A1(n207), .A2(n468), .Y(n3) );
  NAND2X0_LVT U25 ( .A1(n99), .A2(n94), .Y(n4) );
  AND4X1_LVT U29 ( .A1(n465), .A2(n474), .A3(n73), .A4(n348), .Y(n10) );
  NBUFFX2_LVT U46 ( .A(n10), .Y(n88) );
  NBUFFX2_LVT U50 ( .A(n32), .Y(n72) );
  NBUFFX2_LVT U52 ( .A(n32), .Y(n70) );
  NBUFFX2_LVT U56 ( .A(n32), .Y(n71) );
  INVX1_LVT U66 ( .A(n4), .Y(n197) );
  INVX1_LVT U75 ( .A(n32), .Y(n63) );
  INVX1_LVT U77 ( .A(n32), .Y(n64) );
  INVX1_LVT U83 ( .A(n39), .Y(n467) );
  INVX1_LVT U114 ( .A(n146), .Y(n309) );
  NBUFFX2_LVT U133 ( .A(n475), .Y(n79) );
  NBUFFX2_LVT U134 ( .A(n475), .Y(n78) );
  NBUFFX2_LVT U135 ( .A(n475), .Y(n76) );
  NBUFFX2_LVT U137 ( .A(n475), .Y(n75) );
  NBUFFX2_LVT U138 ( .A(n475), .Y(n77) );
  NBUFFX2_LVT U139 ( .A(n475), .Y(n81) );
  INVX1_LVT U142 ( .A(n88), .Y(n87) );
  INVX1_LVT U143 ( .A(n90), .Y(n82) );
  INVX1_LVT U144 ( .A(n89), .Y(n86) );
  INVX1_LVT U147 ( .A(n26), .Y(n73) );
  INVX1_LVT U148 ( .A(n215), .Y(n470) );
  AND3X1_LVT U149 ( .A1(n195), .A2(n81), .A3(n73), .Y(n32) );
  INVX1_LVT U151 ( .A(n35), .Y(n62) );
  INVX1_LVT U152 ( .A(n213), .Y(n287) );
  INVX1_LVT U155 ( .A(n27), .Y(n466) );
  INVX1_LVT U156 ( .A(n234), .Y(n203) );
  INVX1_LVT U157 ( .A(n43), .Y(n69) );
  INVX1_LVT U178 ( .A(n37), .Y(n61) );
  INVX1_LVT U184 ( .A(n216), .Y(n291) );
  NBUFFX2_LVT U190 ( .A(n475), .Y(n74) );
  NBUFFX2_LVT U191 ( .A(n10), .Y(n90) );
  NBUFFX2_LVT U192 ( .A(n10), .Y(n89) );
  INVX1_LVT U193 ( .A(n44), .Y(n60) );
  INVX1_LVT U200 ( .A(n220), .Y(n465) );
  INVX1_LVT U207 ( .A(n196), .Y(n243) );
  INVX1_LVT U212 ( .A(n40), .Y(n474) );
  INVX1_LVT U218 ( .A(n137), .Y(n281) );
  AND2X1_LVT U232 ( .A1(n470), .A2(n56), .Y(n35) );
  INVX1_LVT U233 ( .A(n132), .Y(n471) );
  INVX1_LVT U236 ( .A(n148), .Y(n472) );
  INVX1_LVT U237 ( .A(n211), .Y(n286) );
  AND2X1_LVT U238 ( .A1(n219), .A2(n84), .Y(n37) );
  NBUFFX2_LVT U240 ( .A(n10), .Y(n91) );
  INVX1_LVT U241 ( .A(n46), .Y(n67) );
  AND2X1_LVT U252 ( .A1(n94), .A2(n95), .Y(n43) );
  INVX1_LVT U255 ( .A(n49), .Y(n66) );
  INVX1_LVT U258 ( .A(n47), .Y(n65) );
  INVX1_LVT U271 ( .A(n50), .Y(n68) );
  INVX1_LVT U274 ( .A(n147), .Y(n468) );
  INVX1_LVT U282 ( .A(n225), .Y(n469) );
  INVX1_LVT U287 ( .A(n212), .Y(n473) );
  INVX1_LVT U290 ( .A(n133), .Y(n292) );
  INVX1_LVT U294 ( .A(n29), .Y(n257) );
  INVX1_LVT U296 ( .A(rst_n), .Y(n475) );
  NOR3X0_LVT U298 ( .A1(n239), .A2(n240), .A3(n241), .Y(n44) );
  AND3X1_LVT U303 ( .A1(n349), .A2(instr_step[1]), .A3(n94), .Y(n46) );
  AND3X1_LVT U312 ( .A1(n349), .A2(n350), .A3(n94), .Y(n47) );
  AND3X1_LVT U318 ( .A1(n96), .A2(n348), .A3(n99), .Y(n49) );
  AND3X1_LVT U319 ( .A1(n348), .A2(n95), .A3(n96), .Y(n50) );
  XNOR2X1_LVT U322 ( .A1(n8), .A2(n293), .Y(n463) );
  INVX1_LVT U323 ( .A(n80), .Y(n194) );
  INVX1_LVT U326 ( .A(n34), .Y(n188) );
  INVX1_LVT U328 ( .A(data_rx[1]), .Y(n204) );
  INVX1_LVT U332 ( .A(data_rx[5]), .Y(n230) );
  INVX1_LVT U334 ( .A(data_rx[6]), .Y(n235) );
  INVX1_LVT U336 ( .A(data_rx[2]), .Y(n205) );
  INVX1_LVT U339 ( .A(data_rx[3]), .Y(n208) );
  INVX1_LVT U341 ( .A(data_rx[4]), .Y(n209) );
  INVX1_LVT U344 ( .A(data_rx[7]), .Y(n238) );
  XNOR3X1_LVT U345 ( .A1(n333), .A2(n341), .A3(n58), .Y(n51) );
  XOR2X1_LVT U347 ( .A1(n325), .A2(n317), .Y(n58) );
  INVX1_LVT U349 ( .A(N664), .Y(n154) );
  XNOR3X1_LVT U351 ( .A1(n330), .A2(n338), .A3(n249), .Y(N662) );
  XNOR2X1_LVT U352 ( .A1(n322), .A2(n314), .Y(n249) );
  XNOR3X1_LVT U356 ( .A1(n329), .A2(n337), .A3(n250), .Y(N661) );
  XNOR2X1_LVT U361 ( .A1(n321), .A2(n313), .Y(n250) );
  XNOR3X1_LVT U363 ( .A1(n332), .A2(n340), .A3(n247), .Y(N664) );
  XNOR2X1_LVT U365 ( .A1(n324), .A2(n316), .Y(n247) );
  XNOR3X1_LVT U366 ( .A1(n328), .A2(n336), .A3(n251), .Y(N660) );
  XNOR2X1_LVT U368 ( .A1(n320), .A2(n312), .Y(n251) );
  XNOR3X1_LVT U369 ( .A1(n327), .A2(n335), .A3(n252), .Y(N659) );
  XNOR2X1_LVT U370 ( .A1(n319), .A2(n311), .Y(n252) );
  XNOR3X1_LVT U371 ( .A1(n331), .A2(n339), .A3(n248), .Y(N663) );
  XNOR2X1_LVT U372 ( .A1(n323), .A2(n315), .Y(n248) );
  XNOR3X1_LVT U373 ( .A1(n326), .A2(n334), .A3(n253), .Y(N658) );
  XNOR2X1_LVT U374 ( .A1(n318), .A2(n310), .Y(n253) );
  XNOR2X1_HVT U375 ( .A1(N659), .A2(BCC[6]), .Y(n98) );
  XNOR2X1_HVT U376 ( .A1(N660), .A2(BCC[5]), .Y(n97) );
  XNOR2X1_HVT U377 ( .A1(N661), .A2(BCC[4]), .Y(n93) );
  XNOR2X1_HVT U378 ( .A1(N662), .A2(BCC[3]), .Y(n92) );
  NAND4X0_HVT U379 ( .A1(n98), .A2(n97), .A3(n93), .A4(n92), .Y(n153) );
  XNOR2X1_HVT U380 ( .A1(N663), .A2(BCC[2]), .Y(n101) );
  XNOR2X1_HVT U381 ( .A1(N658), .A2(BCC[7]), .Y(n100) );
  NAND2X0_HVT U382 ( .A1(n101), .A2(n100), .Y(n145) );
  NOR2X0_HVT U383 ( .A1(n51), .A2(BCC[0]), .Y(n102) );
  OA22X1_HVT U385 ( .A1(N664), .A2(n102), .A3(n102), .A4(n12), .Y(n144) );
  AND2X1_HVT U386 ( .A1(BCC[0]), .A2(n51), .Y(n113) );
  OA22X1_HVT U387 ( .A1(n113), .A2(n154), .A3(BCC[1]), .A4(n113), .Y(n142) );
  NOR4X0_HVT U388 ( .A1(n153), .A2(n145), .A3(n144), .A4(n142), .Y(N666) );
endmodule


module UART_RX_DW01_inc_0_DW01_inc_5 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1_LVT U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1_LVT U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1_LVT U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1_LVT U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1_LVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_LVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_LVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_LVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_LVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_LVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_LVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_LVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_LVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_LVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_LVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_HVT U2 ( .A1(carry[15]), .A2(A[15]), .Y(SUM[15]) );
endmodule


module UART_RX_DW01_inc_1_DW01_inc_6 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HADDX1_LVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_LVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_LVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_LVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_LVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_LVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_LVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_LVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_LVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_HVT U2 ( .A1(carry[9]), .A2(A[9]), .Y(SUM[9]) );
endmodule


module UART_RX_DW01_inc_2_DW01_inc_7 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;

  wire   [19:2] carry;

  HADDX1_LVT U1_1_18 ( .A0(A[18]), .B0(carry[18]), .C1(carry[19]), .SO(SUM[18]) );
  HADDX1_LVT U1_1_17 ( .A0(A[17]), .B0(carry[17]), .C1(carry[18]), .SO(SUM[17]) );
  HADDX1_LVT U1_1_16 ( .A0(A[16]), .B0(carry[16]), .C1(carry[17]), .SO(SUM[16]) );
  HADDX1_LVT U1_1_15 ( .A0(A[15]), .B0(carry[15]), .C1(carry[16]), .SO(SUM[15]) );
  HADDX1_LVT U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1_LVT U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1_LVT U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1_LVT U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1_LVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_LVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_LVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_LVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_LVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_LVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_LVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_LVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_LVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_LVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_LVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_HVT U2 ( .A1(carry[19]), .A2(A[19]), .Y(SUM[19]) );
endmodule


module UART_RX ( clk, rst, rx, Data );
  output [127:0] Data;
  input clk, rst, rx;
  wire   rx_busy, rx_d2, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27,
         N28, N29, N30, N31, N32, N33, N34, N35, N36, \buffer[0][7] ,
         \buffer[0][6] , \buffer[0][5] , \buffer[0][4] , \buffer[0][3] ,
         \buffer[0][2] , \buffer[0][1] , \buffer[0][0] , \buffer[1][7] ,
         \buffer[1][6] , \buffer[1][5] , \buffer[1][4] , \buffer[1][3] ,
         \buffer[1][2] , \buffer[1][1] , \buffer[1][0] , \buffer[2][7] ,
         \buffer[2][6] , \buffer[2][5] , \buffer[2][4] , \buffer[2][3] ,
         \buffer[2][2] , \buffer[2][1] , \buffer[2][0] , \buffer[3][7] ,
         \buffer[3][6] , \buffer[3][5] , \buffer[3][4] , \buffer[3][3] ,
         \buffer[3][2] , \buffer[3][1] , \buffer[3][0] , \buffer[4][7] ,
         \buffer[4][6] , \buffer[4][5] , \buffer[4][4] , \buffer[4][3] ,
         \buffer[4][2] , \buffer[4][1] , \buffer[4][0] , \buffer[5][7] ,
         \buffer[5][6] , \buffer[5][5] , \buffer[5][4] , \buffer[5][3] ,
         \buffer[5][2] , \buffer[5][1] , \buffer[5][0] , \buffer[6][7] ,
         \buffer[6][6] , \buffer[6][5] , \buffer[6][4] , \buffer[6][3] ,
         \buffer[6][2] , \buffer[6][1] , \buffer[6][0] , \buffer[7][7] ,
         \buffer[7][6] , \buffer[7][5] , \buffer[7][4] , \buffer[7][3] ,
         \buffer[7][2] , \buffer[7][1] , \buffer[7][0] , \buffer[8][7] ,
         \buffer[8][6] , \buffer[8][5] , \buffer[8][4] , \buffer[8][3] ,
         \buffer[8][2] , \buffer[8][1] , \buffer[8][0] , \buffer[9][7] ,
         \buffer[9][6] , \buffer[9][5] , \buffer[9][4] , \buffer[9][3] ,
         \buffer[9][2] , \buffer[9][1] , \buffer[9][0] , \buffer[10][7] ,
         \buffer[10][6] , \buffer[10][5] , \buffer[10][4] , \buffer[10][3] ,
         \buffer[10][2] , \buffer[10][1] , \buffer[10][0] , \buffer[11][7] ,
         \buffer[11][6] , \buffer[11][5] , \buffer[11][4] , \buffer[11][3] ,
         \buffer[11][2] , \buffer[11][1] , \buffer[11][0] , \buffer[12][7] ,
         \buffer[12][6] , \buffer[12][5] , \buffer[12][4] , \buffer[12][3] ,
         \buffer[12][2] , \buffer[12][1] , \buffer[12][0] , \buffer[13][7] ,
         \buffer[13][6] , \buffer[13][5] , \buffer[13][4] , \buffer[13][3] ,
         \buffer[13][2] , \buffer[13][1] , \buffer[13][0] , \buffer[14][7] ,
         \buffer[14][6] , \buffer[14][5] , \buffer[14][4] , \buffer[14][3] ,
         \buffer[14][2] , \buffer[14][1] , \buffer[14][0] , \buffer[15][7] ,
         \buffer[15][6] , \buffer[15][5] , \buffer[15][4] , \buffer[15][3] ,
         \buffer[15][2] , \buffer[15][1] , \buffer[15][0] , N92, N93, N94, N95,
         N96, N97, N98, N99, N100, N101, N293, N294, N295, N296, N297, N298,
         N299, N300, N301, N302, N303, N304, N305, N306, N307, N308, N698,
         N711, N712, N713, N714, N715, N716, N717, N718, N719, N720, N721,
         N722, N723, N724, N725, N726, N727, N728, N729, N730, n11, n14, n15,
         n16, n17, n18, n19, n20, n22, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n56, n57, n58, n59, n60, n61, n62, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n1,
         n2, n3, n4, n5, n7, n8, n9, n10, n12, n13, n21, n23, n24, n35, n36,
         n54, n55, n63, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412;
  wire   [19:0] idle_counter;
  wire   [3:0] bit_cnt;
  wire   [7:0] rx_shift;
  wire   [9:0] buf_index;
  wire   [15:0] baud_cnt;

  DFFX1_LVT rx_d1_reg ( .D(N698), .CLK(clk), .QN(n5) );
  DFFX1_LVT rx_busy_reg ( .D(n358), .CLK(clk), .Q(rx_busy), .QN(n20) );
  DFFX1_LVT \idle_counter_reg[0]  ( .D(N711), .CLK(clk), .Q(idle_counter[0])
         );
  DFFX1_LVT \idle_counter_reg[1]  ( .D(N712), .CLK(clk), .Q(idle_counter[1])
         );
  DFFX1_LVT \idle_counter_reg[2]  ( .D(N713), .CLK(clk), .Q(idle_counter[2])
         );
  DFFX1_LVT \idle_counter_reg[3]  ( .D(N714), .CLK(clk), .Q(idle_counter[3])
         );
  DFFX1_LVT \idle_counter_reg[4]  ( .D(N715), .CLK(clk), .Q(idle_counter[4])
         );
  DFFX1_LVT \idle_counter_reg[5]  ( .D(N716), .CLK(clk), .Q(idle_counter[5])
         );
  DFFX1_LVT \idle_counter_reg[6]  ( .D(N717), .CLK(clk), .Q(idle_counter[6])
         );
  DFFX1_LVT \idle_counter_reg[7]  ( .D(N718), .CLK(clk), .Q(idle_counter[7])
         );
  DFFX1_LVT \idle_counter_reg[8]  ( .D(N719), .CLK(clk), .Q(idle_counter[8])
         );
  DFFX1_LVT \idle_counter_reg[9]  ( .D(N720), .CLK(clk), .Q(idle_counter[9])
         );
  DFFX1_LVT \idle_counter_reg[10]  ( .D(N721), .CLK(clk), .Q(idle_counter[10])
         );
  DFFX1_LVT \idle_counter_reg[11]  ( .D(N722), .CLK(clk), .Q(idle_counter[11])
         );
  DFFX1_LVT \idle_counter_reg[12]  ( .D(N723), .CLK(clk), .Q(idle_counter[12])
         );
  DFFX1_LVT \idle_counter_reg[13]  ( .D(N724), .CLK(clk), .Q(idle_counter[13])
         );
  DFFX1_LVT \idle_counter_reg[14]  ( .D(N725), .CLK(clk), .Q(idle_counter[14])
         );
  DFFX1_LVT \idle_counter_reg[15]  ( .D(N726), .CLK(clk), .Q(idle_counter[15])
         );
  DFFX1_LVT \idle_counter_reg[16]  ( .D(N727), .CLK(clk), .Q(idle_counter[16])
         );
  DFFX1_LVT \idle_counter_reg[17]  ( .D(N728), .CLK(clk), .Q(idle_counter[17])
         );
  DFFX1_LVT \idle_counter_reg[18]  ( .D(N729), .CLK(clk), .Q(idle_counter[18])
         );
  DFFX1_LVT \idle_counter_reg[19]  ( .D(N730), .CLK(clk), .Q(idle_counter[19])
         );
  DFFX1_LVT \baud_cnt_reg[0]  ( .D(n357), .CLK(clk), .Q(baud_cnt[0]), .QN(n11)
         );
  DFFX1_LVT \baud_cnt_reg[1]  ( .D(n356), .CLK(clk), .Q(baud_cnt[1]) );
  DFFX1_LVT \baud_cnt_reg[2]  ( .D(n355), .CLK(clk), .Q(baud_cnt[2]) );
  DFFX1_LVT \baud_cnt_reg[3]  ( .D(n354), .CLK(clk), .Q(baud_cnt[3]) );
  DFFX1_LVT \baud_cnt_reg[4]  ( .D(n353), .CLK(clk), .Q(baud_cnt[4]) );
  DFFX1_LVT \baud_cnt_reg[5]  ( .D(n352), .CLK(clk), .Q(baud_cnt[5]) );
  DFFX1_LVT \baud_cnt_reg[6]  ( .D(n351), .CLK(clk), .Q(baud_cnt[6]) );
  DFFX1_LVT \baud_cnt_reg[7]  ( .D(n350), .CLK(clk), .Q(baud_cnt[7]) );
  DFFX1_LVT \baud_cnt_reg[8]  ( .D(n349), .CLK(clk), .Q(baud_cnt[8]) );
  DFFX1_LVT \baud_cnt_reg[9]  ( .D(n348), .CLK(clk), .Q(baud_cnt[9]) );
  DFFX1_LVT \baud_cnt_reg[10]  ( .D(n347), .CLK(clk), .Q(baud_cnt[10]) );
  DFFX1_LVT \baud_cnt_reg[11]  ( .D(n346), .CLK(clk), .Q(baud_cnt[11]) );
  DFFX1_LVT \baud_cnt_reg[12]  ( .D(n345), .CLK(clk), .Q(baud_cnt[12]) );
  DFFX1_LVT \baud_cnt_reg[13]  ( .D(n344), .CLK(clk), .Q(baud_cnt[13]) );
  DFFX1_LVT \baud_cnt_reg[14]  ( .D(n343), .CLK(clk), .Q(baud_cnt[14]) );
  DFFX1_LVT \baud_cnt_reg[15]  ( .D(n342), .CLK(clk), .Q(baud_cnt[15]) );
  DFFX1_LVT \bit_cnt_reg[0]  ( .D(n341), .CLK(clk), .Q(bit_cnt[0]), .QN(n17)
         );
  DFFX1_LVT \bit_cnt_reg[1]  ( .D(n340), .CLK(clk), .Q(bit_cnt[1]), .QN(n16)
         );
  DFFX1_LVT \bit_cnt_reg[2]  ( .D(n339), .CLK(clk), .Q(bit_cnt[2]), .QN(n15)
         );
  DFFX1_LVT \bit_cnt_reg[3]  ( .D(n338), .CLK(clk), .Q(bit_cnt[3]), .QN(n14)
         );
  DFFX1_LVT \rx_shift_reg[7]  ( .D(n320), .CLK(clk), .Q(rx_shift[7]) );
  DFFX1_LVT \rx_shift_reg[6]  ( .D(n321), .CLK(clk), .Q(rx_shift[6]) );
  DFFX1_LVT \rx_shift_reg[5]  ( .D(n322), .CLK(clk), .Q(rx_shift[5]) );
  DFFX1_LVT \rx_shift_reg[4]  ( .D(n323), .CLK(clk), .Q(rx_shift[4]) );
  DFFX1_LVT \rx_shift_reg[3]  ( .D(n324), .CLK(clk), .Q(rx_shift[3]) );
  DFFX1_LVT \rx_shift_reg[2]  ( .D(n325), .CLK(clk), .Q(rx_shift[2]) );
  DFFX1_LVT \rx_shift_reg[1]  ( .D(n327), .CLK(clk), .Q(rx_shift[1]) );
  DFFX1_LVT \rx_shift_reg[0]  ( .D(n326), .CLK(clk), .Q(rx_shift[0]) );
  DFFX1_LVT \buffer_reg[15][7]  ( .D(n305), .CLK(clk), .Q(\buffer[15][7] ) );
  DFFX1_LVT \buffer_reg[14][7]  ( .D(n289), .CLK(clk), .Q(\buffer[14][7] ) );
  DFFX1_LVT \buffer_reg[13][7]  ( .D(n273), .CLK(clk), .Q(\buffer[13][7] ) );
  DFFX1_LVT \buffer_reg[12][7]  ( .D(n257), .CLK(clk), .Q(\buffer[12][7] ) );
  DFFX1_LVT \buffer_reg[11][7]  ( .D(n241), .CLK(clk), .Q(\buffer[11][7] ) );
  DFFX1_LVT \buffer_reg[10][7]  ( .D(n225), .CLK(clk), .Q(\buffer[10][7] ) );
  DFFX1_LVT \buffer_reg[9][7]  ( .D(n209), .CLK(clk), .Q(\buffer[9][7] ) );
  DFFX1_LVT \buffer_reg[8][7]  ( .D(n193), .CLK(clk), .Q(\buffer[8][7] ) );
  DFFX1_LVT \buffer_reg[7][7]  ( .D(n177), .CLK(clk), .Q(\buffer[7][7] ) );
  DFFX1_LVT \buffer_reg[6][7]  ( .D(n161), .CLK(clk), .Q(\buffer[6][7] ) );
  DFFX1_LVT \buffer_reg[5][7]  ( .D(n145), .CLK(clk), .Q(\buffer[5][7] ) );
  DFFX1_LVT \buffer_reg[4][7]  ( .D(n129), .CLK(clk), .Q(\buffer[4][7] ) );
  DFFX1_LVT \buffer_reg[3][7]  ( .D(n113), .CLK(clk), .Q(\buffer[3][7] ) );
  DFFX1_LVT \buffer_reg[2][7]  ( .D(n97), .CLK(clk), .Q(\buffer[2][7] ) );
  DFFX1_LVT \buffer_reg[1][7]  ( .D(n81), .CLK(clk), .Q(\buffer[1][7] ) );
  DFFX1_LVT \buffer_reg[0][7]  ( .D(n65), .CLK(clk), .Q(\buffer[0][7] ) );
  DFFX1_LVT \buffer_reg[15][6]  ( .D(n307), .CLK(clk), .Q(\buffer[15][6] ) );
  DFFX1_LVT \buffer_reg[14][6]  ( .D(n291), .CLK(clk), .Q(\buffer[14][6] ) );
  DFFX1_LVT \buffer_reg[13][6]  ( .D(n275), .CLK(clk), .Q(\buffer[13][6] ) );
  DFFX1_LVT \buffer_reg[12][6]  ( .D(n259), .CLK(clk), .Q(\buffer[12][6] ) );
  DFFX1_LVT \buffer_reg[11][6]  ( .D(n243), .CLK(clk), .Q(\buffer[11][6] ) );
  DFFX1_LVT \buffer_reg[10][6]  ( .D(n227), .CLK(clk), .Q(\buffer[10][6] ) );
  DFFX1_LVT \buffer_reg[9][6]  ( .D(n211), .CLK(clk), .Q(\buffer[9][6] ) );
  DFFX1_LVT \buffer_reg[8][6]  ( .D(n195), .CLK(clk), .Q(\buffer[8][6] ) );
  DFFX1_LVT \buffer_reg[7][6]  ( .D(n179), .CLK(clk), .Q(\buffer[7][6] ) );
  DFFX1_LVT \buffer_reg[6][6]  ( .D(n163), .CLK(clk), .Q(\buffer[6][6] ) );
  DFFX1_LVT \buffer_reg[5][6]  ( .D(n147), .CLK(clk), .Q(\buffer[5][6] ) );
  DFFX1_LVT \buffer_reg[4][6]  ( .D(n131), .CLK(clk), .Q(\buffer[4][6] ) );
  DFFX1_LVT \buffer_reg[3][6]  ( .D(n115), .CLK(clk), .Q(\buffer[3][6] ) );
  DFFX1_LVT \buffer_reg[2][6]  ( .D(n99), .CLK(clk), .Q(\buffer[2][6] ) );
  DFFX1_LVT \buffer_reg[1][6]  ( .D(n83), .CLK(clk), .Q(\buffer[1][6] ) );
  DFFX1_LVT \buffer_reg[0][6]  ( .D(n67), .CLK(clk), .Q(\buffer[0][6] ) );
  DFFX1_LVT \buffer_reg[15][5]  ( .D(n309), .CLK(clk), .Q(\buffer[15][5] ) );
  DFFX1_LVT \buffer_reg[14][5]  ( .D(n293), .CLK(clk), .Q(\buffer[14][5] ) );
  DFFX1_LVT \buffer_reg[13][5]  ( .D(n277), .CLK(clk), .Q(\buffer[13][5] ) );
  DFFX1_LVT \buffer_reg[12][5]  ( .D(n261), .CLK(clk), .Q(\buffer[12][5] ) );
  DFFX1_LVT \buffer_reg[11][5]  ( .D(n245), .CLK(clk), .Q(\buffer[11][5] ) );
  DFFX1_LVT \buffer_reg[10][5]  ( .D(n229), .CLK(clk), .Q(\buffer[10][5] ) );
  DFFX1_LVT \buffer_reg[9][5]  ( .D(n213), .CLK(clk), .Q(\buffer[9][5] ) );
  DFFX1_LVT \buffer_reg[8][5]  ( .D(n197), .CLK(clk), .Q(\buffer[8][5] ) );
  DFFX1_LVT \buffer_reg[7][5]  ( .D(n181), .CLK(clk), .Q(\buffer[7][5] ) );
  DFFX1_LVT \buffer_reg[6][5]  ( .D(n165), .CLK(clk), .Q(\buffer[6][5] ) );
  DFFX1_LVT \buffer_reg[5][5]  ( .D(n149), .CLK(clk), .Q(\buffer[5][5] ) );
  DFFX1_LVT \buffer_reg[4][5]  ( .D(n133), .CLK(clk), .Q(\buffer[4][5] ) );
  DFFX1_LVT \buffer_reg[3][5]  ( .D(n117), .CLK(clk), .Q(\buffer[3][5] ) );
  DFFX1_LVT \buffer_reg[2][5]  ( .D(n101), .CLK(clk), .Q(\buffer[2][5] ) );
  DFFX1_LVT \buffer_reg[1][5]  ( .D(n85), .CLK(clk), .Q(\buffer[1][5] ) );
  DFFX1_LVT \buffer_reg[0][5]  ( .D(n69), .CLK(clk), .Q(\buffer[0][5] ) );
  DFFX1_LVT \buffer_reg[15][4]  ( .D(n311), .CLK(clk), .Q(\buffer[15][4] ) );
  DFFX1_LVT \buffer_reg[14][4]  ( .D(n295), .CLK(clk), .Q(\buffer[14][4] ) );
  DFFX1_LVT \buffer_reg[13][4]  ( .D(n279), .CLK(clk), .Q(\buffer[13][4] ) );
  DFFX1_LVT \buffer_reg[12][4]  ( .D(n263), .CLK(clk), .Q(\buffer[12][4] ) );
  DFFX1_LVT \buffer_reg[11][4]  ( .D(n247), .CLK(clk), .Q(\buffer[11][4] ) );
  DFFX1_LVT \buffer_reg[10][4]  ( .D(n231), .CLK(clk), .Q(\buffer[10][4] ) );
  DFFX1_LVT \buffer_reg[9][4]  ( .D(n215), .CLK(clk), .Q(\buffer[9][4] ) );
  DFFX1_LVT \buffer_reg[8][4]  ( .D(n199), .CLK(clk), .Q(\buffer[8][4] ) );
  DFFX1_LVT \buffer_reg[7][4]  ( .D(n183), .CLK(clk), .Q(\buffer[7][4] ) );
  DFFX1_LVT \buffer_reg[6][4]  ( .D(n167), .CLK(clk), .Q(\buffer[6][4] ) );
  DFFX1_LVT \buffer_reg[5][4]  ( .D(n151), .CLK(clk), .Q(\buffer[5][4] ) );
  DFFX1_LVT \buffer_reg[4][4]  ( .D(n135), .CLK(clk), .Q(\buffer[4][4] ) );
  DFFX1_LVT \buffer_reg[3][4]  ( .D(n119), .CLK(clk), .Q(\buffer[3][4] ) );
  DFFX1_LVT \buffer_reg[2][4]  ( .D(n103), .CLK(clk), .Q(\buffer[2][4] ) );
  DFFX1_LVT \buffer_reg[1][4]  ( .D(n87), .CLK(clk), .Q(\buffer[1][4] ) );
  DFFX1_LVT \buffer_reg[0][4]  ( .D(n71), .CLK(clk), .Q(\buffer[0][4] ) );
  DFFX1_LVT \buffer_reg[15][3]  ( .D(n313), .CLK(clk), .Q(\buffer[15][3] ) );
  DFFX1_LVT \buffer_reg[14][3]  ( .D(n297), .CLK(clk), .Q(\buffer[14][3] ) );
  DFFX1_LVT \buffer_reg[13][3]  ( .D(n281), .CLK(clk), .Q(\buffer[13][3] ) );
  DFFX1_LVT \buffer_reg[12][3]  ( .D(n265), .CLK(clk), .Q(\buffer[12][3] ) );
  DFFX1_LVT \buffer_reg[11][3]  ( .D(n249), .CLK(clk), .Q(\buffer[11][3] ) );
  DFFX1_LVT \buffer_reg[10][3]  ( .D(n233), .CLK(clk), .Q(\buffer[10][3] ) );
  DFFX1_LVT \buffer_reg[9][3]  ( .D(n217), .CLK(clk), .Q(\buffer[9][3] ) );
  DFFX1_LVT \buffer_reg[8][3]  ( .D(n201), .CLK(clk), .Q(\buffer[8][3] ) );
  DFFX1_LVT \buffer_reg[7][3]  ( .D(n185), .CLK(clk), .Q(\buffer[7][3] ) );
  DFFX1_LVT \buffer_reg[6][3]  ( .D(n169), .CLK(clk), .Q(\buffer[6][3] ) );
  DFFX1_LVT \buffer_reg[5][3]  ( .D(n153), .CLK(clk), .Q(\buffer[5][3] ) );
  DFFX1_LVT \buffer_reg[4][3]  ( .D(n137), .CLK(clk), .Q(\buffer[4][3] ) );
  DFFX1_LVT \buffer_reg[3][3]  ( .D(n121), .CLK(clk), .Q(\buffer[3][3] ) );
  DFFX1_LVT \buffer_reg[2][3]  ( .D(n105), .CLK(clk), .Q(\buffer[2][3] ) );
  DFFX1_LVT \buffer_reg[1][3]  ( .D(n89), .CLK(clk), .Q(\buffer[1][3] ) );
  DFFX1_LVT \buffer_reg[0][3]  ( .D(n73), .CLK(clk), .Q(\buffer[0][3] ) );
  DFFX1_LVT \buffer_reg[15][2]  ( .D(n315), .CLK(clk), .Q(\buffer[15][2] ) );
  DFFX1_LVT \buffer_reg[14][2]  ( .D(n299), .CLK(clk), .Q(\buffer[14][2] ) );
  DFFX1_LVT \buffer_reg[13][2]  ( .D(n283), .CLK(clk), .Q(\buffer[13][2] ) );
  DFFX1_LVT \buffer_reg[12][2]  ( .D(n267), .CLK(clk), .Q(\buffer[12][2] ) );
  DFFX1_LVT \buffer_reg[11][2]  ( .D(n251), .CLK(clk), .Q(\buffer[11][2] ) );
  DFFX1_LVT \buffer_reg[10][2]  ( .D(n235), .CLK(clk), .Q(\buffer[10][2] ) );
  DFFX1_LVT \buffer_reg[9][2]  ( .D(n219), .CLK(clk), .Q(\buffer[9][2] ) );
  DFFX1_LVT \buffer_reg[8][2]  ( .D(n203), .CLK(clk), .Q(\buffer[8][2] ) );
  DFFX1_LVT \buffer_reg[7][2]  ( .D(n187), .CLK(clk), .Q(\buffer[7][2] ) );
  DFFX1_LVT \buffer_reg[6][2]  ( .D(n171), .CLK(clk), .Q(\buffer[6][2] ) );
  DFFX1_LVT \buffer_reg[5][2]  ( .D(n155), .CLK(clk), .Q(\buffer[5][2] ) );
  DFFX1_LVT \buffer_reg[4][2]  ( .D(n139), .CLK(clk), .Q(\buffer[4][2] ) );
  DFFX1_LVT \buffer_reg[3][2]  ( .D(n123), .CLK(clk), .Q(\buffer[3][2] ) );
  DFFX1_LVT \buffer_reg[2][2]  ( .D(n107), .CLK(clk), .Q(\buffer[2][2] ) );
  DFFX1_LVT \buffer_reg[1][2]  ( .D(n91), .CLK(clk), .Q(\buffer[1][2] ) );
  DFFX1_LVT \buffer_reg[0][2]  ( .D(n75), .CLK(clk), .Q(\buffer[0][2] ) );
  DFFX1_LVT \buffer_reg[15][1]  ( .D(n317), .CLK(clk), .Q(\buffer[15][1] ) );
  DFFX1_LVT \buffer_reg[14][1]  ( .D(n301), .CLK(clk), .Q(\buffer[14][1] ) );
  DFFX1_LVT \buffer_reg[13][1]  ( .D(n285), .CLK(clk), .Q(\buffer[13][1] ) );
  DFFX1_LVT \buffer_reg[12][1]  ( .D(n269), .CLK(clk), .Q(\buffer[12][1] ) );
  DFFX1_LVT \buffer_reg[11][1]  ( .D(n253), .CLK(clk), .Q(\buffer[11][1] ) );
  DFFX1_LVT \buffer_reg[10][1]  ( .D(n237), .CLK(clk), .Q(\buffer[10][1] ) );
  DFFX1_LVT \buffer_reg[9][1]  ( .D(n221), .CLK(clk), .Q(\buffer[9][1] ) );
  DFFX1_LVT \buffer_reg[8][1]  ( .D(n205), .CLK(clk), .Q(\buffer[8][1] ) );
  DFFX1_LVT \buffer_reg[7][1]  ( .D(n189), .CLK(clk), .Q(\buffer[7][1] ) );
  DFFX1_LVT \buffer_reg[6][1]  ( .D(n173), .CLK(clk), .Q(\buffer[6][1] ) );
  DFFX1_LVT \buffer_reg[5][1]  ( .D(n157), .CLK(clk), .Q(\buffer[5][1] ) );
  DFFX1_LVT \buffer_reg[4][1]  ( .D(n141), .CLK(clk), .Q(\buffer[4][1] ) );
  DFFX1_LVT \buffer_reg[3][1]  ( .D(n125), .CLK(clk), .Q(\buffer[3][1] ) );
  DFFX1_LVT \buffer_reg[2][1]  ( .D(n109), .CLK(clk), .Q(\buffer[2][1] ) );
  DFFX1_LVT \buffer_reg[1][1]  ( .D(n93), .CLK(clk), .Q(\buffer[1][1] ) );
  DFFX1_LVT \buffer_reg[0][1]  ( .D(n77), .CLK(clk), .Q(\buffer[0][1] ) );
  DFFX1_LVT \buffer_reg[15][0]  ( .D(n319), .CLK(clk), .Q(\buffer[15][0] ) );
  DFFX1_LVT \buffer_reg[14][0]  ( .D(n303), .CLK(clk), .Q(\buffer[14][0] ) );
  DFFX1_LVT \buffer_reg[13][0]  ( .D(n287), .CLK(clk), .Q(\buffer[13][0] ) );
  DFFX1_LVT \buffer_reg[12][0]  ( .D(n271), .CLK(clk), .Q(\buffer[12][0] ) );
  DFFX1_LVT \buffer_reg[11][0]  ( .D(n255), .CLK(clk), .Q(\buffer[11][0] ) );
  DFFX1_LVT \buffer_reg[10][0]  ( .D(n239), .CLK(clk), .Q(\buffer[10][0] ) );
  DFFX1_LVT \buffer_reg[9][0]  ( .D(n223), .CLK(clk), .Q(\buffer[9][0] ) );
  DFFX1_LVT \buffer_reg[8][0]  ( .D(n207), .CLK(clk), .Q(\buffer[8][0] ) );
  DFFX1_LVT \buffer_reg[7][0]  ( .D(n191), .CLK(clk), .Q(\buffer[7][0] ) );
  DFFX1_LVT \buffer_reg[6][0]  ( .D(n175), .CLK(clk), .Q(\buffer[6][0] ) );
  DFFX1_LVT \buffer_reg[5][0]  ( .D(n159), .CLK(clk), .Q(\buffer[5][0] ) );
  DFFX1_LVT \buffer_reg[4][0]  ( .D(n143), .CLK(clk), .Q(\buffer[4][0] ) );
  DFFX1_LVT \buffer_reg[3][0]  ( .D(n127), .CLK(clk), .Q(\buffer[3][0] ) );
  DFFX1_LVT \buffer_reg[2][0]  ( .D(n111), .CLK(clk), .Q(\buffer[2][0] ) );
  DFFX1_LVT \buffer_reg[1][0]  ( .D(n95), .CLK(clk), .Q(\buffer[1][0] ) );
  DFFX1_LVT \buffer_reg[0][0]  ( .D(n79), .CLK(clk), .Q(\buffer[0][0] ) );
  DFFX1_LVT \buf_index_reg[1]  ( .D(n337), .CLK(clk), .Q(buf_index[1]) );
  DFFX1_LVT \buf_index_reg[9]  ( .D(n328), .CLK(clk), .Q(buf_index[9]) );
  DFFX1_LVT \buf_index_reg[8]  ( .D(n329), .CLK(clk), .Q(buf_index[8]) );
  DFFX1_LVT \buf_index_reg[7]  ( .D(n330), .CLK(clk), .Q(buf_index[7]) );
  DFFX1_LVT \buf_index_reg[6]  ( .D(n331), .CLK(clk), .Q(buf_index[6]) );
  DFFX1_LVT \buf_index_reg[5]  ( .D(n332), .CLK(clk), .Q(buf_index[5]) );
  DFFX1_LVT \buf_index_reg[4]  ( .D(n333), .CLK(clk), .Q(buf_index[4]), .QN(
        n18) );
  DFFX1_LVT \buf_index_reg[3]  ( .D(n334), .CLK(clk), .Q(buf_index[3]) );
  DFFX1_LVT \buf_index_reg[2]  ( .D(n335), .CLK(clk), .Q(buf_index[2]) );
  DFFX1_LVT \buf_index_reg[0]  ( .D(n336), .CLK(clk), .Q(buf_index[0]), .QN(
        n19) );
  DFFX1_LVT \Data_reg[127]  ( .D(n64), .CLK(clk), .Q(Data[127]) );
  DFFX1_LVT \Data_reg[126]  ( .D(n66), .CLK(clk), .Q(Data[126]) );
  DFFX1_LVT \Data_reg[125]  ( .D(n68), .CLK(clk), .Q(Data[125]) );
  DFFX1_LVT \Data_reg[124]  ( .D(n70), .CLK(clk), .Q(Data[124]) );
  DFFX1_LVT \Data_reg[123]  ( .D(n72), .CLK(clk), .Q(Data[123]) );
  DFFX1_LVT \Data_reg[122]  ( .D(n74), .CLK(clk), .Q(Data[122]) );
  DFFX1_LVT \Data_reg[121]  ( .D(n76), .CLK(clk), .Q(Data[121]) );
  DFFX1_LVT \Data_reg[120]  ( .D(n78), .CLK(clk), .Q(Data[120]) );
  DFFX1_LVT \Data_reg[119]  ( .D(n80), .CLK(clk), .Q(Data[119]) );
  DFFX1_LVT \Data_reg[118]  ( .D(n82), .CLK(clk), .Q(Data[118]) );
  DFFX1_LVT \Data_reg[117]  ( .D(n84), .CLK(clk), .Q(Data[117]) );
  DFFX1_LVT \Data_reg[116]  ( .D(n86), .CLK(clk), .Q(Data[116]) );
  DFFX1_LVT \Data_reg[115]  ( .D(n88), .CLK(clk), .Q(Data[115]) );
  DFFX1_LVT \Data_reg[114]  ( .D(n90), .CLK(clk), .Q(Data[114]) );
  DFFX1_LVT \Data_reg[113]  ( .D(n92), .CLK(clk), .Q(Data[113]) );
  DFFX1_LVT \Data_reg[112]  ( .D(n94), .CLK(clk), .Q(Data[112]) );
  DFFX1_LVT \Data_reg[111]  ( .D(n96), .CLK(clk), .Q(Data[111]) );
  DFFX1_LVT \Data_reg[110]  ( .D(n98), .CLK(clk), .Q(Data[110]) );
  DFFX1_LVT \Data_reg[109]  ( .D(n100), .CLK(clk), .Q(Data[109]) );
  DFFX1_LVT \Data_reg[108]  ( .D(n102), .CLK(clk), .Q(Data[108]) );
  DFFX1_LVT \Data_reg[107]  ( .D(n104), .CLK(clk), .Q(Data[107]) );
  DFFX1_LVT \Data_reg[106]  ( .D(n106), .CLK(clk), .Q(Data[106]) );
  DFFX1_LVT \Data_reg[105]  ( .D(n108), .CLK(clk), .Q(Data[105]) );
  DFFX1_LVT \Data_reg[104]  ( .D(n110), .CLK(clk), .Q(Data[104]) );
  DFFX1_LVT \Data_reg[103]  ( .D(n112), .CLK(clk), .Q(Data[103]) );
  DFFX1_LVT \Data_reg[102]  ( .D(n114), .CLK(clk), .Q(Data[102]) );
  DFFX1_LVT \Data_reg[101]  ( .D(n116), .CLK(clk), .Q(Data[101]) );
  DFFX1_LVT \Data_reg[100]  ( .D(n118), .CLK(clk), .Q(Data[100]) );
  DFFX1_LVT \Data_reg[99]  ( .D(n120), .CLK(clk), .Q(Data[99]) );
  DFFX1_LVT \Data_reg[98]  ( .D(n122), .CLK(clk), .Q(Data[98]) );
  DFFX1_LVT \Data_reg[97]  ( .D(n124), .CLK(clk), .Q(Data[97]) );
  DFFX1_LVT \Data_reg[96]  ( .D(n126), .CLK(clk), .Q(Data[96]) );
  DFFX1_LVT \Data_reg[95]  ( .D(n128), .CLK(clk), .Q(Data[95]) );
  DFFX1_LVT \Data_reg[94]  ( .D(n130), .CLK(clk), .Q(Data[94]) );
  DFFX1_LVT \Data_reg[93]  ( .D(n132), .CLK(clk), .Q(Data[93]) );
  DFFX1_LVT \Data_reg[92]  ( .D(n134), .CLK(clk), .Q(Data[92]) );
  DFFX1_LVT \Data_reg[91]  ( .D(n136), .CLK(clk), .Q(Data[91]) );
  DFFX1_LVT \Data_reg[90]  ( .D(n138), .CLK(clk), .Q(Data[90]) );
  DFFX1_LVT \Data_reg[89]  ( .D(n140), .CLK(clk), .Q(Data[89]) );
  DFFX1_LVT \Data_reg[88]  ( .D(n142), .CLK(clk), .Q(Data[88]) );
  DFFX1_LVT \Data_reg[87]  ( .D(n144), .CLK(clk), .Q(Data[87]) );
  DFFX1_LVT \Data_reg[86]  ( .D(n146), .CLK(clk), .Q(Data[86]) );
  DFFX1_LVT \Data_reg[85]  ( .D(n148), .CLK(clk), .Q(Data[85]) );
  DFFX1_LVT \Data_reg[84]  ( .D(n150), .CLK(clk), .Q(Data[84]) );
  DFFX1_LVT \Data_reg[83]  ( .D(n152), .CLK(clk), .Q(Data[83]) );
  DFFX1_LVT \Data_reg[82]  ( .D(n154), .CLK(clk), .Q(Data[82]) );
  DFFX1_LVT \Data_reg[81]  ( .D(n156), .CLK(clk), .Q(Data[81]) );
  DFFX1_LVT \Data_reg[80]  ( .D(n158), .CLK(clk), .Q(Data[80]) );
  DFFX1_LVT \Data_reg[79]  ( .D(n160), .CLK(clk), .Q(Data[79]) );
  DFFX1_LVT \Data_reg[78]  ( .D(n162), .CLK(clk), .Q(Data[78]) );
  DFFX1_LVT \Data_reg[77]  ( .D(n164), .CLK(clk), .Q(Data[77]) );
  DFFX1_LVT \Data_reg[76]  ( .D(n166), .CLK(clk), .Q(Data[76]) );
  DFFX1_LVT \Data_reg[75]  ( .D(n168), .CLK(clk), .Q(Data[75]) );
  DFFX1_LVT \Data_reg[74]  ( .D(n170), .CLK(clk), .Q(Data[74]) );
  DFFX1_LVT \Data_reg[73]  ( .D(n172), .CLK(clk), .Q(Data[73]) );
  DFFX1_LVT \Data_reg[72]  ( .D(n174), .CLK(clk), .Q(Data[72]) );
  DFFX1_LVT \Data_reg[71]  ( .D(n176), .CLK(clk), .Q(Data[71]) );
  DFFX1_LVT \Data_reg[70]  ( .D(n178), .CLK(clk), .Q(Data[70]) );
  DFFX1_LVT \Data_reg[69]  ( .D(n180), .CLK(clk), .Q(Data[69]) );
  DFFX1_LVT \Data_reg[68]  ( .D(n182), .CLK(clk), .Q(Data[68]) );
  DFFX1_LVT \Data_reg[67]  ( .D(n184), .CLK(clk), .Q(Data[67]) );
  DFFX1_LVT \Data_reg[66]  ( .D(n186), .CLK(clk), .Q(Data[66]) );
  DFFX1_LVT \Data_reg[65]  ( .D(n188), .CLK(clk), .Q(Data[65]) );
  DFFX1_LVT \Data_reg[64]  ( .D(n190), .CLK(clk), .Q(Data[64]) );
  DFFX1_LVT \Data_reg[63]  ( .D(n192), .CLK(clk), .Q(Data[63]) );
  DFFX1_LVT \Data_reg[62]  ( .D(n194), .CLK(clk), .Q(Data[62]) );
  DFFX1_LVT \Data_reg[61]  ( .D(n196), .CLK(clk), .Q(Data[61]) );
  DFFX1_LVT \Data_reg[60]  ( .D(n198), .CLK(clk), .Q(Data[60]) );
  DFFX1_LVT \Data_reg[59]  ( .D(n200), .CLK(clk), .Q(Data[59]) );
  DFFX1_LVT \Data_reg[58]  ( .D(n202), .CLK(clk), .Q(Data[58]) );
  DFFX1_LVT \Data_reg[57]  ( .D(n204), .CLK(clk), .Q(Data[57]) );
  DFFX1_LVT \Data_reg[56]  ( .D(n206), .CLK(clk), .Q(Data[56]) );
  DFFX1_LVT \Data_reg[55]  ( .D(n208), .CLK(clk), .Q(Data[55]) );
  DFFX1_LVT \Data_reg[54]  ( .D(n210), .CLK(clk), .Q(Data[54]) );
  DFFX1_LVT \Data_reg[53]  ( .D(n212), .CLK(clk), .Q(Data[53]) );
  DFFX1_LVT \Data_reg[52]  ( .D(n214), .CLK(clk), .Q(Data[52]) );
  DFFX1_LVT \Data_reg[51]  ( .D(n216), .CLK(clk), .Q(Data[51]) );
  DFFX1_LVT \Data_reg[50]  ( .D(n218), .CLK(clk), .Q(Data[50]) );
  DFFX1_LVT \Data_reg[49]  ( .D(n220), .CLK(clk), .Q(Data[49]) );
  DFFX1_LVT \Data_reg[48]  ( .D(n222), .CLK(clk), .Q(Data[48]) );
  DFFX1_LVT \Data_reg[47]  ( .D(n224), .CLK(clk), .Q(Data[47]) );
  DFFX1_LVT \Data_reg[46]  ( .D(n226), .CLK(clk), .Q(Data[46]) );
  DFFX1_LVT \Data_reg[45]  ( .D(n228), .CLK(clk), .Q(Data[45]) );
  DFFX1_LVT \Data_reg[44]  ( .D(n230), .CLK(clk), .Q(Data[44]) );
  DFFX1_LVT \Data_reg[43]  ( .D(n232), .CLK(clk), .Q(Data[43]) );
  DFFX1_LVT \Data_reg[42]  ( .D(n234), .CLK(clk), .Q(Data[42]) );
  DFFX1_LVT \Data_reg[41]  ( .D(n236), .CLK(clk), .Q(Data[41]) );
  DFFX1_LVT \Data_reg[40]  ( .D(n238), .CLK(clk), .Q(Data[40]) );
  DFFX1_LVT \Data_reg[39]  ( .D(n240), .CLK(clk), .Q(Data[39]) );
  DFFX1_LVT \Data_reg[38]  ( .D(n242), .CLK(clk), .Q(Data[38]) );
  DFFX1_LVT \Data_reg[37]  ( .D(n244), .CLK(clk), .Q(Data[37]) );
  DFFX1_LVT \Data_reg[36]  ( .D(n246), .CLK(clk), .Q(Data[36]) );
  DFFX1_LVT \Data_reg[35]  ( .D(n248), .CLK(clk), .Q(Data[35]) );
  DFFX1_LVT \Data_reg[34]  ( .D(n250), .CLK(clk), .Q(Data[34]) );
  DFFX1_LVT \Data_reg[33]  ( .D(n252), .CLK(clk), .Q(Data[33]) );
  DFFX1_LVT \Data_reg[32]  ( .D(n254), .CLK(clk), .Q(Data[32]) );
  DFFX1_LVT \Data_reg[31]  ( .D(n256), .CLK(clk), .Q(Data[31]) );
  DFFX1_LVT \Data_reg[30]  ( .D(n258), .CLK(clk), .Q(Data[30]) );
  DFFX1_LVT \Data_reg[29]  ( .D(n260), .CLK(clk), .Q(Data[29]) );
  DFFX1_LVT \Data_reg[28]  ( .D(n262), .CLK(clk), .Q(Data[28]) );
  DFFX1_LVT \Data_reg[27]  ( .D(n264), .CLK(clk), .Q(Data[27]) );
  DFFX1_LVT \Data_reg[26]  ( .D(n266), .CLK(clk), .Q(Data[26]) );
  DFFX1_LVT \Data_reg[25]  ( .D(n268), .CLK(clk), .Q(Data[25]) );
  DFFX1_LVT \Data_reg[24]  ( .D(n270), .CLK(clk), .Q(Data[24]) );
  DFFX1_LVT \Data_reg[23]  ( .D(n272), .CLK(clk), .Q(Data[23]) );
  DFFX1_LVT \Data_reg[22]  ( .D(n274), .CLK(clk), .Q(Data[22]) );
  DFFX1_LVT \Data_reg[21]  ( .D(n276), .CLK(clk), .Q(Data[21]) );
  DFFX1_LVT \Data_reg[20]  ( .D(n278), .CLK(clk), .Q(Data[20]) );
  DFFX1_LVT \Data_reg[19]  ( .D(n280), .CLK(clk), .Q(Data[19]) );
  DFFX1_LVT \Data_reg[18]  ( .D(n282), .CLK(clk), .Q(Data[18]) );
  DFFX1_LVT \Data_reg[17]  ( .D(n284), .CLK(clk), .Q(Data[17]) );
  DFFX1_LVT \Data_reg[16]  ( .D(n286), .CLK(clk), .Q(Data[16]) );
  DFFX1_LVT \Data_reg[15]  ( .D(n288), .CLK(clk), .Q(Data[15]) );
  DFFX1_LVT \Data_reg[14]  ( .D(n290), .CLK(clk), .Q(Data[14]) );
  DFFX1_LVT \Data_reg[13]  ( .D(n292), .CLK(clk), .Q(Data[13]) );
  DFFX1_LVT \Data_reg[12]  ( .D(n294), .CLK(clk), .Q(Data[12]) );
  DFFX1_LVT \Data_reg[11]  ( .D(n296), .CLK(clk), .Q(Data[11]) );
  DFFX1_LVT \Data_reg[10]  ( .D(n298), .CLK(clk), .Q(Data[10]) );
  DFFX1_LVT \Data_reg[9]  ( .D(n300), .CLK(clk), .Q(Data[9]) );
  DFFX1_LVT \Data_reg[8]  ( .D(n302), .CLK(clk), .Q(Data[8]) );
  DFFX1_LVT \Data_reg[7]  ( .D(n304), .CLK(clk), .Q(Data[7]) );
  DFFX1_LVT \Data_reg[6]  ( .D(n306), .CLK(clk), .Q(Data[6]) );
  DFFX1_LVT \Data_reg[5]  ( .D(n308), .CLK(clk), .Q(Data[5]) );
  DFFX1_LVT \Data_reg[4]  ( .D(n310), .CLK(clk), .Q(Data[4]) );
  DFFX1_LVT \Data_reg[3]  ( .D(n312), .CLK(clk), .Q(Data[3]) );
  DFFX1_LVT \Data_reg[2]  ( .D(n314), .CLK(clk), .Q(Data[2]) );
  DFFX1_LVT \Data_reg[1]  ( .D(n316), .CLK(clk), .Q(Data[1]) );
  DFFX1_LVT \Data_reg[0]  ( .D(n318), .CLK(clk), .Q(Data[0]) );
  AO22X1_LVT U3 ( .A1(\buffer[0][7] ), .A2(n400), .A3(Data[127]), .A4(n378), 
        .Y(n64) );
  AO22X1_LVT U4 ( .A1(n374), .A2(\buffer[0][7] ), .A3(\buffer[1][7] ), .A4(
        n366), .Y(n65) );
  AO22X1_LVT U5 ( .A1(\buffer[0][6] ), .A2(n399), .A3(Data[126]), .A4(n377), 
        .Y(n66) );
  AO22X1_LVT U6 ( .A1(\buffer[0][6] ), .A2(n367), .A3(\buffer[1][6] ), .A4(
        n366), .Y(n67) );
  AO22X1_LVT U7 ( .A1(\buffer[0][5] ), .A2(n398), .A3(Data[125]), .A4(n376), 
        .Y(n68) );
  AO22X1_LVT U8 ( .A1(\buffer[0][5] ), .A2(n367), .A3(\buffer[1][5] ), .A4(
        n366), .Y(n69) );
  AO22X1_LVT U9 ( .A1(\buffer[0][4] ), .A2(n390), .A3(Data[124]), .A4(n375), 
        .Y(n70) );
  AO22X1_LVT U10 ( .A1(\buffer[0][4] ), .A2(n367), .A3(\buffer[1][4] ), .A4(
        n366), .Y(n71) );
  AO22X1_LVT U11 ( .A1(\buffer[0][3] ), .A2(n391), .A3(Data[123]), .A4(n385), 
        .Y(n72) );
  AO22X1_LVT U12 ( .A1(\buffer[0][3] ), .A2(n367), .A3(\buffer[1][3] ), .A4(
        n366), .Y(n73) );
  AO22X1_LVT U13 ( .A1(\buffer[0][2] ), .A2(n392), .A3(Data[122]), .A4(n22), 
        .Y(n74) );
  AO22X1_LVT U14 ( .A1(\buffer[0][2] ), .A2(n367), .A3(\buffer[1][2] ), .A4(
        n366), .Y(n75) );
  AO22X1_LVT U15 ( .A1(\buffer[0][1] ), .A2(n393), .A3(Data[121]), .A4(n384), 
        .Y(n76) );
  AO22X1_LVT U16 ( .A1(\buffer[0][1] ), .A2(n367), .A3(\buffer[1][1] ), .A4(
        n366), .Y(n77) );
  AO22X1_LVT U17 ( .A1(\buffer[0][0] ), .A2(n394), .A3(Data[120]), .A4(n383), 
        .Y(n78) );
  AO22X1_LVT U18 ( .A1(\buffer[0][0] ), .A2(n367), .A3(\buffer[1][0] ), .A4(
        n366), .Y(n79) );
  AO22X1_LVT U19 ( .A1(\buffer[1][7] ), .A2(n395), .A3(Data[119]), .A4(n379), 
        .Y(n80) );
  AO22X1_LVT U21 ( .A1(n374), .A2(\buffer[1][7] ), .A3(\buffer[2][7] ), .A4(
        n365), .Y(n81) );
  AO22X1_LVT U22 ( .A1(\buffer[1][6] ), .A2(n396), .A3(Data[118]), .A4(n384), 
        .Y(n82) );
  AO22X1_LVT U23 ( .A1(\buffer[1][6] ), .A2(n367), .A3(\buffer[2][6] ), .A4(
        n365), .Y(n83) );
  AO22X1_LVT U24 ( .A1(\buffer[1][5] ), .A2(n397), .A3(Data[117]), .A4(n383), 
        .Y(n84) );
  AO22X1_LVT U25 ( .A1(\buffer[1][5] ), .A2(n367), .A3(\buffer[2][5] ), .A4(
        n365), .Y(n85) );
  AO22X1_LVT U26 ( .A1(\buffer[1][4] ), .A2(n386), .A3(Data[116]), .A4(n382), 
        .Y(n86) );
  AO22X1_LVT U27 ( .A1(\buffer[1][4] ), .A2(n367), .A3(\buffer[2][4] ), .A4(
        n365), .Y(n87) );
  AO22X1_LVT U28 ( .A1(\buffer[1][3] ), .A2(n400), .A3(Data[115]), .A4(n381), 
        .Y(n88) );
  AO22X1_LVT U29 ( .A1(\buffer[1][3] ), .A2(n367), .A3(\buffer[2][3] ), .A4(
        n365), .Y(n89) );
  AO22X1_LVT U30 ( .A1(\buffer[1][2] ), .A2(n399), .A3(Data[114]), .A4(n380), 
        .Y(n90) );
  AO22X1_LVT U31 ( .A1(\buffer[1][2] ), .A2(n367), .A3(\buffer[2][2] ), .A4(
        n365), .Y(n91) );
  AO22X1_LVT U32 ( .A1(\buffer[1][1] ), .A2(n391), .A3(Data[113]), .A4(n379), 
        .Y(n92) );
  AO22X1_LVT U33 ( .A1(\buffer[1][1] ), .A2(n367), .A3(\buffer[2][1] ), .A4(
        n365), .Y(n93) );
  AO22X1_LVT U34 ( .A1(\buffer[1][0] ), .A2(n400), .A3(Data[112]), .A4(n378), 
        .Y(n94) );
  AO22X1_LVT U35 ( .A1(\buffer[1][0] ), .A2(n367), .A3(\buffer[2][0] ), .A4(
        n365), .Y(n95) );
  AO22X1_LVT U36 ( .A1(\buffer[2][7] ), .A2(n387), .A3(Data[111]), .A4(n379), 
        .Y(n96) );
  AO22X1_LVT U37 ( .A1(\buffer[2][7] ), .A2(n367), .A3(\buffer[3][7] ), .A4(
        n365), .Y(n97) );
  AO22X1_LVT U38 ( .A1(\buffer[2][6] ), .A2(n388), .A3(Data[110]), .A4(n378), 
        .Y(n98) );
  AO22X1_LVT U39 ( .A1(\buffer[2][6] ), .A2(n368), .A3(\buffer[3][6] ), .A4(
        n365), .Y(n99) );
  AO22X1_LVT U40 ( .A1(\buffer[2][5] ), .A2(n389), .A3(Data[109]), .A4(n377), 
        .Y(n100) );
  AO22X1_LVT U41 ( .A1(\buffer[2][5] ), .A2(n368), .A3(\buffer[3][5] ), .A4(
        n365), .Y(n101) );
  AO22X1_LVT U42 ( .A1(\buffer[2][4] ), .A2(n390), .A3(Data[108]), .A4(n376), 
        .Y(n102) );
  AO22X1_LVT U43 ( .A1(\buffer[2][4] ), .A2(n368), .A3(\buffer[3][4] ), .A4(
        n365), .Y(n103) );
  AO22X1_LVT U44 ( .A1(\buffer[2][3] ), .A2(n398), .A3(Data[107]), .A4(n380), 
        .Y(n104) );
  AO22X1_LVT U45 ( .A1(\buffer[2][3] ), .A2(n368), .A3(\buffer[3][3] ), .A4(
        n364), .Y(n105) );
  AO22X1_LVT U46 ( .A1(\buffer[2][2] ), .A2(n394), .A3(Data[106]), .A4(n379), 
        .Y(n106) );
  AO22X1_LVT U47 ( .A1(\buffer[2][2] ), .A2(n368), .A3(\buffer[3][2] ), .A4(
        n364), .Y(n107) );
  AO22X1_LVT U48 ( .A1(\buffer[2][1] ), .A2(n387), .A3(Data[105]), .A4(n378), 
        .Y(n108) );
  AO22X1_LVT U49 ( .A1(\buffer[2][1] ), .A2(n368), .A3(\buffer[3][1] ), .A4(
        n364), .Y(n109) );
  AO22X1_LVT U50 ( .A1(\buffer[2][0] ), .A2(n388), .A3(Data[104]), .A4(n377), 
        .Y(n110) );
  AO22X1_LVT U51 ( .A1(\buffer[2][0] ), .A2(n368), .A3(\buffer[3][0] ), .A4(
        n364), .Y(n111) );
  AO22X1_LVT U52 ( .A1(\buffer[3][7] ), .A2(n389), .A3(Data[103]), .A4(n376), 
        .Y(n112) );
  AO22X1_LVT U53 ( .A1(\buffer[3][7] ), .A2(n368), .A3(\buffer[4][7] ), .A4(
        n364), .Y(n113) );
  AO22X1_LVT U54 ( .A1(\buffer[3][6] ), .A2(n390), .A3(Data[102]), .A4(n375), 
        .Y(n114) );
  AO22X1_LVT U55 ( .A1(\buffer[3][6] ), .A2(n368), .A3(\buffer[4][6] ), .A4(
        n364), .Y(n115) );
  AO22X1_LVT U56 ( .A1(\buffer[3][5] ), .A2(n391), .A3(Data[101]), .A4(n385), 
        .Y(n116) );
  AO22X1_LVT U57 ( .A1(\buffer[3][5] ), .A2(n368), .A3(\buffer[4][5] ), .A4(
        n364), .Y(n117) );
  AO22X1_LVT U58 ( .A1(\buffer[3][4] ), .A2(n392), .A3(Data[100]), .A4(n22), 
        .Y(n118) );
  AO22X1_LVT U59 ( .A1(\buffer[3][4] ), .A2(n368), .A3(\buffer[4][4] ), .A4(
        n364), .Y(n119) );
  AO22X1_LVT U60 ( .A1(\buffer[3][3] ), .A2(n393), .A3(Data[99]), .A4(n382), 
        .Y(n120) );
  AO22X1_LVT U61 ( .A1(\buffer[3][3] ), .A2(n368), .A3(\buffer[4][3] ), .A4(
        n364), .Y(n121) );
  AO22X1_LVT U62 ( .A1(\buffer[3][2] ), .A2(n394), .A3(Data[98]), .A4(n381), 
        .Y(n122) );
  AO22X1_LVT U63 ( .A1(\buffer[3][2] ), .A2(n368), .A3(\buffer[4][2] ), .A4(
        n364), .Y(n123) );
  AO22X1_LVT U64 ( .A1(\buffer[3][1] ), .A2(n392), .A3(Data[97]), .A4(n380), 
        .Y(n124) );
  AO22X1_LVT U65 ( .A1(\buffer[3][1] ), .A2(n368), .A3(\buffer[4][1] ), .A4(
        n364), .Y(n125) );
  AO22X1_LVT U66 ( .A1(\buffer[3][0] ), .A2(n399), .A3(Data[96]), .A4(n377), 
        .Y(n126) );
  AO22X1_LVT U67 ( .A1(\buffer[3][0] ), .A2(n368), .A3(\buffer[4][0] ), .A4(
        n364), .Y(n127) );
  AO22X1_LVT U68 ( .A1(\buffer[4][7] ), .A2(n391), .A3(Data[95]), .A4(n381), 
        .Y(n128) );
  AO22X1_LVT U69 ( .A1(\buffer[4][7] ), .A2(n370), .A3(\buffer[5][7] ), .A4(
        n363), .Y(n129) );
  AO22X1_LVT U70 ( .A1(\buffer[4][6] ), .A2(n392), .A3(Data[94]), .A4(n385), 
        .Y(n130) );
  AO22X1_LVT U71 ( .A1(\buffer[4][6] ), .A2(n368), .A3(\buffer[5][6] ), .A4(
        n363), .Y(n131) );
  AO22X1_LVT U72 ( .A1(\buffer[4][5] ), .A2(n393), .A3(Data[93]), .A4(n22), 
        .Y(n132) );
  AO22X1_LVT U73 ( .A1(\buffer[4][5] ), .A2(n368), .A3(\buffer[5][5] ), .A4(
        n363), .Y(n133) );
  AO22X1_LVT U74 ( .A1(\buffer[4][4] ), .A2(n394), .A3(Data[92]), .A4(n384), 
        .Y(n134) );
  AO22X1_LVT U75 ( .A1(\buffer[4][4] ), .A2(n369), .A3(\buffer[5][4] ), .A4(
        n363), .Y(n135) );
  AO22X1_LVT U76 ( .A1(\buffer[4][3] ), .A2(n395), .A3(Data[91]), .A4(n383), 
        .Y(n136) );
  AO22X1_LVT U77 ( .A1(\buffer[4][3] ), .A2(n369), .A3(\buffer[5][3] ), .A4(
        n363), .Y(n137) );
  AO22X1_LVT U78 ( .A1(\buffer[4][2] ), .A2(n396), .A3(Data[90]), .A4(n382), 
        .Y(n138) );
  AO22X1_LVT U79 ( .A1(\buffer[4][2] ), .A2(n369), .A3(\buffer[5][2] ), .A4(
        n363), .Y(n139) );
  AO22X1_LVT U80 ( .A1(\buffer[4][1] ), .A2(n397), .A3(Data[89]), .A4(n381), 
        .Y(n140) );
  AO22X1_LVT U81 ( .A1(\buffer[4][1] ), .A2(n369), .A3(\buffer[5][1] ), .A4(
        n363), .Y(n141) );
  AO22X1_LVT U82 ( .A1(\buffer[4][0] ), .A2(n386), .A3(Data[88]), .A4(n380), 
        .Y(n142) );
  AO22X1_LVT U83 ( .A1(\buffer[4][0] ), .A2(n369), .A3(\buffer[5][0] ), .A4(
        n363), .Y(n143) );
  AO22X1_LVT U84 ( .A1(\buffer[5][7] ), .A2(n400), .A3(Data[87]), .A4(n22), 
        .Y(n144) );
  AO22X1_LVT U85 ( .A1(\buffer[5][7] ), .A2(n369), .A3(\buffer[6][7] ), .A4(
        n363), .Y(n145) );
  AO22X1_LVT U86 ( .A1(\buffer[5][6] ), .A2(n399), .A3(Data[86]), .A4(n384), 
        .Y(n146) );
  AO22X1_LVT U87 ( .A1(\buffer[5][6] ), .A2(n369), .A3(\buffer[6][6] ), .A4(
        n363), .Y(n147) );
  AO22X1_LVT U88 ( .A1(\buffer[5][5] ), .A2(n398), .A3(Data[85]), .A4(n383), 
        .Y(n148) );
  AO22X1_LVT U89 ( .A1(\buffer[5][5] ), .A2(n369), .A3(\buffer[6][5] ), .A4(
        n363), .Y(n149) );
  AO22X1_LVT U90 ( .A1(\buffer[5][4] ), .A2(n386), .A3(Data[84]), .A4(n378), 
        .Y(n150) );
  AO22X1_LVT U91 ( .A1(\buffer[5][4] ), .A2(n369), .A3(\buffer[6][4] ), .A4(
        n363), .Y(n151) );
  AO22X1_LVT U92 ( .A1(\buffer[5][3] ), .A2(n387), .A3(Data[83]), .A4(n382), 
        .Y(n152) );
  AO22X1_LVT U93 ( .A1(\buffer[5][3] ), .A2(n369), .A3(\buffer[6][3] ), .A4(
        n362), .Y(n153) );
  AO22X1_LVT U94 ( .A1(\buffer[5][2] ), .A2(n388), .A3(Data[82]), .A4(n381), 
        .Y(n154) );
  AO22X1_LVT U95 ( .A1(\buffer[5][2] ), .A2(n369), .A3(\buffer[6][2] ), .A4(
        n362), .Y(n155) );
  AO22X1_LVT U96 ( .A1(\buffer[5][1] ), .A2(n393), .A3(Data[81]), .A4(n380), 
        .Y(n156) );
  AO22X1_LVT U97 ( .A1(\buffer[5][1] ), .A2(n369), .A3(\buffer[6][1] ), .A4(
        n362), .Y(n157) );
  AO22X1_LVT U98 ( .A1(\buffer[5][0] ), .A2(n398), .A3(Data[80]), .A4(n379), 
        .Y(n158) );
  AO22X1_LVT U99 ( .A1(\buffer[5][0] ), .A2(n369), .A3(\buffer[6][0] ), .A4(
        n362), .Y(n159) );
  AO22X1_LVT U100 ( .A1(\buffer[6][7] ), .A2(n395), .A3(Data[79]), .A4(n378), 
        .Y(n160) );
  AO22X1_LVT U101 ( .A1(\buffer[6][7] ), .A2(n369), .A3(\buffer[7][7] ), .A4(
        n362), .Y(n161) );
  AO22X1_LVT U102 ( .A1(\buffer[6][6] ), .A2(n396), .A3(Data[78]), .A4(n377), 
        .Y(n162) );
  AO22X1_LVT U103 ( .A1(\buffer[6][6] ), .A2(n369), .A3(\buffer[7][6] ), .A4(
        n362), .Y(n163) );
  AO22X1_LVT U104 ( .A1(\buffer[6][5] ), .A2(n397), .A3(Data[77]), .A4(n376), 
        .Y(n164) );
  AO22X1_LVT U105 ( .A1(\buffer[6][5] ), .A2(n369), .A3(\buffer[7][5] ), .A4(
        n362), .Y(n165) );
  AO22X1_LVT U106 ( .A1(\buffer[6][4] ), .A2(n386), .A3(Data[76]), .A4(n375), 
        .Y(n166) );
  AO22X1_LVT U107 ( .A1(\buffer[6][4] ), .A2(n369), .A3(\buffer[7][4] ), .A4(
        n362), .Y(n167) );
  AO22X1_LVT U108 ( .A1(\buffer[6][3] ), .A2(n389), .A3(Data[75]), .A4(n376), 
        .Y(n168) );
  AO22X1_LVT U109 ( .A1(\buffer[6][3] ), .A2(n370), .A3(\buffer[7][3] ), .A4(
        n362), .Y(n169) );
  AO22X1_LVT U110 ( .A1(\buffer[6][2] ), .A2(n390), .A3(Data[74]), .A4(n375), 
        .Y(n170) );
  AO22X1_LVT U111 ( .A1(\buffer[6][2] ), .A2(n370), .A3(\buffer[7][2] ), .A4(
        n362), .Y(n171) );
  AO22X1_LVT U112 ( .A1(\buffer[6][1] ), .A2(n391), .A3(Data[73]), .A4(n385), 
        .Y(n172) );
  AO22X1_LVT U113 ( .A1(\buffer[6][1] ), .A2(n370), .A3(\buffer[7][1] ), .A4(
        n362), .Y(n173) );
  AO22X1_LVT U114 ( .A1(\buffer[6][0] ), .A2(n392), .A3(Data[72]), .A4(n379), 
        .Y(n174) );
  AO22X1_LVT U115 ( .A1(\buffer[6][0] ), .A2(n370), .A3(\buffer[7][0] ), .A4(
        n362), .Y(n175) );
  AO22X1_LVT U116 ( .A1(\buffer[7][7] ), .A2(n393), .A3(Data[71]), .A4(n383), 
        .Y(n176) );
  AO22X1_LVT U117 ( .A1(\buffer[7][7] ), .A2(n370), .A3(\buffer[8][7] ), .A4(
        n361), .Y(n177) );
  AO22X1_LVT U118 ( .A1(\buffer[7][6] ), .A2(n394), .A3(Data[70]), .A4(n376), 
        .Y(n178) );
  AO22X1_LVT U119 ( .A1(\buffer[7][6] ), .A2(n370), .A3(\buffer[8][6] ), .A4(
        n361), .Y(n179) );
  AO22X1_LVT U120 ( .A1(\buffer[7][5] ), .A2(n395), .A3(Data[69]), .A4(n375), 
        .Y(n180) );
  AO22X1_LVT U121 ( .A1(\buffer[7][5] ), .A2(n370), .A3(\buffer[8][5] ), .A4(
        n361), .Y(n181) );
  AO22X1_LVT U122 ( .A1(\buffer[7][4] ), .A2(n396), .A3(Data[68]), .A4(n385), 
        .Y(n182) );
  AO22X1_LVT U123 ( .A1(\buffer[7][4] ), .A2(n370), .A3(\buffer[8][4] ), .A4(
        n361), .Y(n183) );
  AO22X1_LVT U124 ( .A1(\buffer[7][3] ), .A2(n397), .A3(Data[67]), .A4(n22), 
        .Y(n184) );
  AO22X1_LVT U125 ( .A1(\buffer[7][3] ), .A2(n370), .A3(\buffer[8][3] ), .A4(
        n361), .Y(n185) );
  AO22X1_LVT U126 ( .A1(\buffer[7][2] ), .A2(n386), .A3(Data[66]), .A4(n384), 
        .Y(n186) );
  AO22X1_LVT U127 ( .A1(\buffer[7][2] ), .A2(n370), .A3(\buffer[8][2] ), .A4(
        n361), .Y(n187) );
  AO22X1_LVT U128 ( .A1(\buffer[7][1] ), .A2(n394), .A3(Data[65]), .A4(n383), 
        .Y(n188) );
  AO22X1_LVT U129 ( .A1(\buffer[7][1] ), .A2(n370), .A3(\buffer[8][1] ), .A4(
        n361), .Y(n189) );
  AO22X1_LVT U130 ( .A1(\buffer[7][0] ), .A2(n399), .A3(Data[64]), .A4(n382), 
        .Y(n190) );
  AO22X1_LVT U131 ( .A1(\buffer[7][0] ), .A2(n370), .A3(\buffer[8][0] ), .A4(
        n361), .Y(n191) );
  AO22X1_LVT U132 ( .A1(\buffer[8][7] ), .A2(n400), .A3(Data[63]), .A4(n379), 
        .Y(n192) );
  AO22X1_LVT U133 ( .A1(\buffer[8][7] ), .A2(n370), .A3(\buffer[9][7] ), .A4(
        n361), .Y(n193) );
  AO22X1_LVT U134 ( .A1(\buffer[8][6] ), .A2(n399), .A3(Data[62]), .A4(n378), 
        .Y(n194) );
  AO22X1_LVT U135 ( .A1(\buffer[8][6] ), .A2(n370), .A3(\buffer[9][6] ), .A4(
        n361), .Y(n195) );
  AO22X1_LVT U136 ( .A1(\buffer[8][5] ), .A2(n398), .A3(Data[61]), .A4(n377), 
        .Y(n196) );
  AO22X1_LVT U137 ( .A1(\buffer[8][5] ), .A2(n370), .A3(\buffer[9][5] ), .A4(
        n361), .Y(n197) );
  AO22X1_LVT U138 ( .A1(\buffer[8][4] ), .A2(n394), .A3(Data[60]), .A4(n380), 
        .Y(n198) );
  AO22X1_LVT U139 ( .A1(\buffer[8][4] ), .A2(n370), .A3(\buffer[9][4] ), .A4(
        n361), .Y(n199) );
  AO22X1_LVT U140 ( .A1(\buffer[8][3] ), .A2(n400), .A3(Data[59]), .A4(n384), 
        .Y(n200) );
  AO22X1_LVT U141 ( .A1(\buffer[8][3] ), .A2(n371), .A3(\buffer[9][3] ), .A4(
        n360), .Y(n201) );
  AO22X1_LVT U142 ( .A1(\buffer[8][2] ), .A2(n399), .A3(Data[58]), .A4(n383), 
        .Y(n202) );
  AO22X1_LVT U143 ( .A1(\buffer[8][2] ), .A2(n371), .A3(\buffer[9][2] ), .A4(
        n360), .Y(n203) );
  AO22X1_LVT U144 ( .A1(\buffer[8][1] ), .A2(n398), .A3(Data[57]), .A4(n382), 
        .Y(n204) );
  AO22X1_LVT U145 ( .A1(\buffer[8][1] ), .A2(n371), .A3(\buffer[9][1] ), .A4(
        n360), .Y(n205) );
  AO22X1_LVT U146 ( .A1(\buffer[8][0] ), .A2(n386), .A3(Data[56]), .A4(n381), 
        .Y(n206) );
  AO22X1_LVT U147 ( .A1(\buffer[8][0] ), .A2(n371), .A3(\buffer[9][0] ), .A4(
        n360), .Y(n207) );
  AO22X1_LVT U148 ( .A1(\buffer[9][7] ), .A2(n387), .A3(Data[55]), .A4(n380), 
        .Y(n208) );
  AO22X1_LVT U149 ( .A1(\buffer[9][7] ), .A2(n371), .A3(\buffer[10][7] ), .A4(
        n360), .Y(n209) );
  AO22X1_LVT U150 ( .A1(\buffer[9][6] ), .A2(n388), .A3(Data[54]), .A4(n379), 
        .Y(n210) );
  AO22X1_LVT U151 ( .A1(\buffer[9][6] ), .A2(n371), .A3(\buffer[10][6] ), .A4(
        n360), .Y(n211) );
  AO22X1_LVT U152 ( .A1(\buffer[9][5] ), .A2(n389), .A3(Data[53]), .A4(n378), 
        .Y(n212) );
  AO22X1_LVT U153 ( .A1(\buffer[9][5] ), .A2(n371), .A3(\buffer[10][5] ), .A4(
        n360), .Y(n213) );
  AO22X1_LVT U154 ( .A1(\buffer[9][4] ), .A2(n390), .A3(Data[52]), .A4(n377), 
        .Y(n214) );
  AO22X1_LVT U155 ( .A1(\buffer[9][4] ), .A2(n371), .A3(\buffer[10][4] ), .A4(
        n360), .Y(n215) );
  AO22X1_LVT U156 ( .A1(\buffer[9][3] ), .A2(n391), .A3(Data[51]), .A4(n382), 
        .Y(n216) );
  AO22X1_LVT U157 ( .A1(\buffer[9][3] ), .A2(n371), .A3(\buffer[10][3] ), .A4(
        n360), .Y(n217) );
  AO22X1_LVT U158 ( .A1(\buffer[9][2] ), .A2(n392), .A3(Data[50]), .A4(n381), 
        .Y(n218) );
  AO22X1_LVT U159 ( .A1(\buffer[9][2] ), .A2(n371), .A3(\buffer[10][2] ), .A4(
        n360), .Y(n219) );
  AO22X1_LVT U160 ( .A1(\buffer[9][1] ), .A2(n395), .A3(Data[49]), .A4(n380), 
        .Y(n220) );
  AO22X1_LVT U161 ( .A1(\buffer[9][1] ), .A2(n371), .A3(\buffer[10][1] ), .A4(
        n360), .Y(n221) );
  AO22X1_LVT U162 ( .A1(\buffer[9][0] ), .A2(n387), .A3(Data[48]), .A4(n381), 
        .Y(n222) );
  AO22X1_LVT U163 ( .A1(\buffer[9][0] ), .A2(n371), .A3(\buffer[10][0] ), .A4(
        n360), .Y(n223) );
  AO22X1_LVT U164 ( .A1(\buffer[10][7] ), .A2(n387), .A3(Data[47]), .A4(n22), 
        .Y(n224) );
  AO22X1_LVT U165 ( .A1(\buffer[10][7] ), .A2(n371), .A3(\buffer[11][7] ), 
        .A4(n359), .Y(n225) );
  AO22X1_LVT U166 ( .A1(\buffer[10][6] ), .A2(n388), .A3(Data[46]), .A4(n378), 
        .Y(n226) );
  AO22X1_LVT U167 ( .A1(\buffer[10][6] ), .A2(n371), .A3(\buffer[11][6] ), 
        .A4(n359), .Y(n227) );
  AO22X1_LVT U168 ( .A1(\buffer[10][5] ), .A2(n389), .A3(Data[45]), .A4(n377), 
        .Y(n228) );
  AO22X1_LVT U169 ( .A1(\buffer[10][5] ), .A2(n371), .A3(\buffer[11][5] ), 
        .A4(n359), .Y(n229) );
  AO22X1_LVT U170 ( .A1(\buffer[10][4] ), .A2(n390), .A3(Data[44]), .A4(n376), 
        .Y(n230) );
  AO22X1_LVT U171 ( .A1(\buffer[10][4] ), .A2(n371), .A3(\buffer[11][4] ), 
        .A4(n359), .Y(n231) );
  AO22X1_LVT U172 ( .A1(\buffer[10][3] ), .A2(n393), .A3(Data[43]), .A4(n375), 
        .Y(n232) );
  AO22X1_LVT U173 ( .A1(\buffer[10][3] ), .A2(n371), .A3(\buffer[11][3] ), 
        .A4(n359), .Y(n233) );
  AO22X1_LVT U174 ( .A1(\buffer[10][2] ), .A2(n394), .A3(Data[42]), .A4(n385), 
        .Y(n234) );
  AO22X1_LVT U175 ( .A1(\buffer[10][2] ), .A2(n372), .A3(\buffer[11][2] ), 
        .A4(n359), .Y(n235) );
  AO22X1_LVT U176 ( .A1(\buffer[10][1] ), .A2(n395), .A3(Data[41]), .A4(n22), 
        .Y(n236) );
  AO22X1_LVT U177 ( .A1(\buffer[10][1] ), .A2(n372), .A3(\buffer[11][1] ), 
        .A4(n359), .Y(n237) );
  AO22X1_LVT U178 ( .A1(\buffer[10][0] ), .A2(n396), .A3(Data[40]), .A4(n384), 
        .Y(n238) );
  AO22X1_LVT U179 ( .A1(\buffer[10][0] ), .A2(n372), .A3(\buffer[11][0] ), 
        .A4(n359), .Y(n239) );
  AO22X1_LVT U180 ( .A1(\buffer[11][7] ), .A2(n397), .A3(Data[39]), .A4(n22), 
        .Y(n240) );
  AO22X1_LVT U181 ( .A1(\buffer[11][7] ), .A2(n372), .A3(\buffer[12][7] ), 
        .A4(n359), .Y(n241) );
  AO22X1_LVT U182 ( .A1(\buffer[11][6] ), .A2(n386), .A3(Data[38]), .A4(n384), 
        .Y(n242) );
  AO22X1_LVT U183 ( .A1(\buffer[11][6] ), .A2(n372), .A3(\buffer[12][6] ), 
        .A4(n359), .Y(n243) );
  AO22X1_LVT U184 ( .A1(\buffer[11][5] ), .A2(n400), .A3(Data[37]), .A4(n383), 
        .Y(n244) );
  AO22X1_LVT U185 ( .A1(\buffer[11][5] ), .A2(n372), .A3(\buffer[12][5] ), 
        .A4(n359), .Y(n245) );
  AO22X1_LVT U186 ( .A1(\buffer[11][4] ), .A2(n399), .A3(Data[36]), .A4(n382), 
        .Y(n246) );
  AO22X1_LVT U187 ( .A1(\buffer[11][4] ), .A2(n372), .A3(\buffer[12][4] ), 
        .A4(n359), .Y(n247) );
  AO22X1_LVT U188 ( .A1(\buffer[11][3] ), .A2(n398), .A3(Data[35]), .A4(n385), 
        .Y(n248) );
  AO22X1_LVT U189 ( .A1(\buffer[11][3] ), .A2(n372), .A3(\buffer[12][3] ), 
        .A4(n63), .Y(n249) );
  AO22X1_LVT U190 ( .A1(\buffer[11][2] ), .A2(n393), .A3(Data[34]), .A4(n22), 
        .Y(n250) );
  AO22X1_LVT U191 ( .A1(\buffer[11][2] ), .A2(n372), .A3(\buffer[12][2] ), 
        .A4(n63), .Y(n251) );
  AO22X1_LVT U192 ( .A1(\buffer[11][1] ), .A2(n396), .A3(Data[33]), .A4(n384), 
        .Y(n252) );
  AO22X1_LVT U193 ( .A1(\buffer[11][1] ), .A2(n372), .A3(\buffer[12][1] ), 
        .A4(n63), .Y(n253) );
  AO22X1_LVT U194 ( .A1(\buffer[11][0] ), .A2(n388), .A3(Data[32]), .A4(n383), 
        .Y(n254) );
  AO22X1_LVT U195 ( .A1(\buffer[11][0] ), .A2(n372), .A3(\buffer[12][0] ), 
        .A4(n63), .Y(n255) );
  AO22X1_LVT U196 ( .A1(\buffer[12][7] ), .A2(n391), .A3(Data[31]), .A4(n382), 
        .Y(n256) );
  AO22X1_LVT U197 ( .A1(\buffer[12][7] ), .A2(n372), .A3(\buffer[13][7] ), 
        .A4(n63), .Y(n257) );
  AO22X1_LVT U198 ( .A1(\buffer[12][6] ), .A2(n392), .A3(Data[30]), .A4(n381), 
        .Y(n258) );
  AO22X1_LVT U199 ( .A1(\buffer[12][6] ), .A2(n372), .A3(\buffer[13][6] ), 
        .A4(n63), .Y(n259) );
  AO22X1_LVT U200 ( .A1(\buffer[12][5] ), .A2(n393), .A3(Data[29]), .A4(n380), 
        .Y(n260) );
  AO22X1_LVT U201 ( .A1(\buffer[12][5] ), .A2(n372), .A3(\buffer[13][5] ), 
        .A4(n63), .Y(n261) );
  AO22X1_LVT U202 ( .A1(\buffer[12][4] ), .A2(n394), .A3(Data[28]), .A4(n379), 
        .Y(n262) );
  AO22X1_LVT U203 ( .A1(\buffer[12][4] ), .A2(n372), .A3(\buffer[13][4] ), 
        .A4(n63), .Y(n263) );
  AO22X1_LVT U204 ( .A1(\buffer[12][3] ), .A2(n387), .A3(Data[27]), .A4(n376), 
        .Y(n264) );
  AO22X1_LVT U205 ( .A1(\buffer[12][3] ), .A2(n372), .A3(\buffer[13][3] ), 
        .A4(n63), .Y(n265) );
  AO22X1_LVT U206 ( .A1(\buffer[12][2] ), .A2(n388), .A3(Data[26]), .A4(n375), 
        .Y(n266) );
  AO22X1_LVT U207 ( .A1(\buffer[12][2] ), .A2(n372), .A3(\buffer[13][2] ), 
        .A4(n63), .Y(n267) );
  AO22X1_LVT U208 ( .A1(\buffer[12][1] ), .A2(n389), .A3(Data[25]), .A4(n385), 
        .Y(n268) );
  AO22X1_LVT U209 ( .A1(\buffer[12][1] ), .A2(n373), .A3(\buffer[13][1] ), 
        .A4(n63), .Y(n269) );
  AO22X1_LVT U210 ( .A1(\buffer[12][0] ), .A2(n390), .A3(Data[24]), .A4(n383), 
        .Y(n270) );
  AO22X1_LVT U211 ( .A1(\buffer[12][0] ), .A2(n373), .A3(\buffer[13][0] ), 
        .A4(n63), .Y(n271) );
  AO22X1_LVT U212 ( .A1(\buffer[13][7] ), .A2(n391), .A3(Data[23]), .A4(n375), 
        .Y(n272) );
  AO22X1_LVT U213 ( .A1(\buffer[13][7] ), .A2(n373), .A3(\buffer[14][7] ), 
        .A4(n55), .Y(n273) );
  AO22X1_LVT U214 ( .A1(\buffer[13][6] ), .A2(n392), .A3(Data[22]), .A4(n380), 
        .Y(n274) );
  AO22X1_LVT U215 ( .A1(\buffer[13][6] ), .A2(n373), .A3(\buffer[14][6] ), 
        .A4(n55), .Y(n275) );
  AO22X1_LVT U216 ( .A1(\buffer[13][5] ), .A2(n393), .A3(Data[21]), .A4(n379), 
        .Y(n276) );
  AO22X1_LVT U217 ( .A1(\buffer[13][5] ), .A2(n373), .A3(\buffer[14][5] ), 
        .A4(n55), .Y(n277) );
  AO22X1_LVT U218 ( .A1(\buffer[13][4] ), .A2(n394), .A3(Data[20]), .A4(n378), 
        .Y(n278) );
  AO22X1_LVT U219 ( .A1(\buffer[13][4] ), .A2(n373), .A3(\buffer[14][4] ), 
        .A4(n55), .Y(n279) );
  AO22X1_LVT U220 ( .A1(\buffer[13][3] ), .A2(n395), .A3(Data[19]), .A4(n377), 
        .Y(n280) );
  AO22X1_LVT U221 ( .A1(\buffer[13][3] ), .A2(n373), .A3(\buffer[14][3] ), 
        .A4(n55), .Y(n281) );
  AO22X1_LVT U222 ( .A1(\buffer[13][2] ), .A2(n396), .A3(Data[18]), .A4(n376), 
        .Y(n282) );
  AO22X1_LVT U223 ( .A1(\buffer[13][2] ), .A2(n373), .A3(\buffer[14][2] ), 
        .A4(n55), .Y(n283) );
  AO22X1_LVT U224 ( .A1(\buffer[13][1] ), .A2(n397), .A3(Data[17]), .A4(n375), 
        .Y(n284) );
  AO22X1_LVT U225 ( .A1(\buffer[13][1] ), .A2(n373), .A3(\buffer[14][1] ), 
        .A4(n55), .Y(n285) );
  AO22X1_LVT U226 ( .A1(\buffer[13][0] ), .A2(n389), .A3(Data[16]), .A4(n385), 
        .Y(n286) );
  AO22X1_LVT U227 ( .A1(\buffer[13][0] ), .A2(n373), .A3(\buffer[14][0] ), 
        .A4(n55), .Y(n287) );
  AO22X1_LVT U228 ( .A1(\buffer[14][7] ), .A2(n395), .A3(Data[15]), .A4(n379), 
        .Y(n288) );
  AO22X1_LVT U229 ( .A1(\buffer[14][7] ), .A2(n373), .A3(\buffer[15][7] ), 
        .A4(n55), .Y(n289) );
  AO22X1_LVT U230 ( .A1(\buffer[14][6] ), .A2(n396), .A3(Data[14]), .A4(n378), 
        .Y(n290) );
  AO22X1_LVT U231 ( .A1(\buffer[14][6] ), .A2(n373), .A3(\buffer[15][6] ), 
        .A4(n55), .Y(n291) );
  AO22X1_LVT U232 ( .A1(\buffer[14][5] ), .A2(n397), .A3(Data[13]), .A4(n377), 
        .Y(n292) );
  AO22X1_LVT U233 ( .A1(\buffer[14][5] ), .A2(n373), .A3(\buffer[15][5] ), 
        .A4(n55), .Y(n293) );
  AO22X1_LVT U234 ( .A1(\buffer[14][4] ), .A2(n386), .A3(Data[12]), .A4(n384), 
        .Y(n294) );
  AO22X1_LVT U235 ( .A1(\buffer[14][4] ), .A2(n373), .A3(\buffer[15][4] ), 
        .A4(n55), .Y(n295) );
  AO22X1_LVT U236 ( .A1(\buffer[14][3] ), .A2(n397), .A3(Data[11]), .A4(n376), 
        .Y(n296) );
  AO22X1_LVT U237 ( .A1(\buffer[14][3] ), .A2(n373), .A3(\buffer[15][3] ), 
        .A4(n54), .Y(n297) );
  AO22X1_LVT U238 ( .A1(\buffer[14][2] ), .A2(n386), .A3(Data[10]), .A4(n375), 
        .Y(n298) );
  AO22X1_LVT U239 ( .A1(\buffer[14][2] ), .A2(n373), .A3(\buffer[15][2] ), 
        .A4(n54), .Y(n299) );
  AO22X1_LVT U240 ( .A1(\buffer[14][1] ), .A2(n400), .A3(Data[9]), .A4(n385), 
        .Y(n300) );
  AO22X1_LVT U241 ( .A1(\buffer[14][1] ), .A2(n374), .A3(\buffer[15][1] ), 
        .A4(n54), .Y(n301) );
  AO22X1_LVT U242 ( .A1(\buffer[14][0] ), .A2(n399), .A3(Data[8]), .A4(n22), 
        .Y(n302) );
  AO22X1_LVT U243 ( .A1(\buffer[14][0] ), .A2(n374), .A3(\buffer[15][0] ), 
        .A4(n54), .Y(n303) );
  AO22X1_LVT U244 ( .A1(\buffer[15][7] ), .A2(n398), .A3(Data[7]), .A4(n384), 
        .Y(n304) );
  AO22X1_LVT U245 ( .A1(\buffer[15][7] ), .A2(n373), .A3(rx_shift[7]), .A4(n54), .Y(n305) );
  AO22X1_LVT U246 ( .A1(\buffer[15][6] ), .A2(n389), .A3(Data[6]), .A4(n383), 
        .Y(n306) );
  AO22X1_LVT U247 ( .A1(\buffer[15][6] ), .A2(n374), .A3(rx_shift[6]), .A4(n54), .Y(n307) );
  AO22X1_LVT U248 ( .A1(\buffer[15][5] ), .A2(n387), .A3(Data[5]), .A4(n382), 
        .Y(n308) );
  AO22X1_LVT U249 ( .A1(\buffer[15][5] ), .A2(n374), .A3(rx_shift[5]), .A4(n54), .Y(n309) );
  AO22X1_LVT U250 ( .A1(\buffer[15][4] ), .A2(n388), .A3(Data[4]), .A4(n381), 
        .Y(n310) );
  AO22X1_LVT U251 ( .A1(\buffer[15][4] ), .A2(n374), .A3(rx_shift[4]), .A4(n54), .Y(n311) );
  AO22X1_LVT U252 ( .A1(\buffer[15][3] ), .A2(n389), .A3(Data[3]), .A4(n382), 
        .Y(n312) );
  AO22X1_LVT U253 ( .A1(\buffer[15][3] ), .A2(n374), .A3(rx_shift[3]), .A4(n54), .Y(n313) );
  AO22X1_LVT U254 ( .A1(\buffer[15][2] ), .A2(n390), .A3(Data[2]), .A4(n381), 
        .Y(n314) );
  AO22X1_LVT U255 ( .A1(\buffer[15][2] ), .A2(n374), .A3(rx_shift[2]), .A4(n54), .Y(n315) );
  AO22X1_LVT U256 ( .A1(\buffer[15][1] ), .A2(n386), .A3(Data[1]), .A4(n380), 
        .Y(n316) );
  AO22X1_LVT U257 ( .A1(\buffer[15][1] ), .A2(n374), .A3(rx_shift[1]), .A4(n54), .Y(n317) );
  AO22X1_LVT U258 ( .A1(\buffer[15][0] ), .A2(n390), .A3(Data[0]), .A4(n22), 
        .Y(n318) );
  AO22X1_LVT U260 ( .A1(\buffer[15][0] ), .A2(n367), .A3(rx_shift[0]), .A4(n54), .Y(n319) );
  AO22X1_LVT U263 ( .A1(n411), .A2(rx_shift[7]), .A3(rx_d2), .A4(n28), .Y(n320) );
  AO22X1_LVT U264 ( .A1(n411), .A2(rx_shift[6]), .A3(n28), .A4(rx_shift[7]), 
        .Y(n321) );
  AO22X1_LVT U265 ( .A1(n411), .A2(rx_shift[5]), .A3(n28), .A4(rx_shift[6]), 
        .Y(n322) );
  AO22X1_LVT U266 ( .A1(n411), .A2(rx_shift[4]), .A3(n28), .A4(rx_shift[5]), 
        .Y(n323) );
  AO22X1_LVT U267 ( .A1(n411), .A2(rx_shift[3]), .A3(n28), .A4(rx_shift[4]), 
        .Y(n324) );
  AO22X1_LVT U268 ( .A1(n411), .A2(rx_shift[2]), .A3(n28), .A4(rx_shift[3]), 
        .Y(n325) );
  AO22X1_LVT U269 ( .A1(n411), .A2(rx_shift[0]), .A3(n28), .A4(rx_shift[1]), 
        .Y(n326) );
  AO22X1_LVT U270 ( .A1(n411), .A2(rx_shift[1]), .A3(n28), .A4(rx_shift[2]), 
        .Y(n327) );
  AND2X1_LVT U271 ( .A1(n29), .A2(n12), .Y(n28) );
  NAND2X0_RVT U272 ( .A1(n12), .A2(n30), .Y(n29) );
  NAND4X0_LVT U273 ( .A1(n31), .A2(rx_busy), .A3(n32), .A4(n33), .Y(n30) );
  NAND2X0_RVT U274 ( .A1(bit_cnt[3]), .A2(n34), .Y(n33) );
  NAND3X0_LVT U275 ( .A1(n16), .A2(n15), .A3(n17), .Y(n34) );
  NAND4X0_LVT U276 ( .A1(n17), .A2(n16), .A3(n15), .A4(n14), .Y(n32) );
  AO22X1_LVT U277 ( .A1(buf_index[9]), .A2(n4), .A3(N101), .A4(n2), .Y(n328)
         );
  AO22X1_LVT U278 ( .A1(buf_index[8]), .A2(n4), .A3(N100), .A4(n2), .Y(n329)
         );
  AO22X1_LVT U279 ( .A1(buf_index[7]), .A2(n4), .A3(N99), .A4(n2), .Y(n330) );
  AO22X1_LVT U280 ( .A1(buf_index[6]), .A2(n4), .A3(N98), .A4(n2), .Y(n331) );
  AO22X1_LVT U281 ( .A1(buf_index[5]), .A2(n4), .A3(N97), .A4(n2), .Y(n332) );
  AO22X1_LVT U282 ( .A1(n4), .A2(buf_index[4]), .A3(N96), .A4(n2), .Y(n333) );
  AO22X1_LVT U283 ( .A1(buf_index[3]), .A2(n4), .A3(N95), .A4(n2), .Y(n334) );
  AO22X1_LVT U284 ( .A1(buf_index[2]), .A2(n4), .A3(N94), .A4(n2), .Y(n335) );
  AO22X1_LVT U285 ( .A1(buf_index[0]), .A2(n4), .A3(N92), .A4(n2), .Y(n336) );
  AO22X1_LVT U286 ( .A1(buf_index[1]), .A2(n4), .A3(N93), .A4(n2), .Y(n337) );
  NAND2X0_RVT U288 ( .A1(n38), .A2(n39), .Y(n25) );
  AO21X1_LVT U290 ( .A1(n37), .A2(n26), .A3(n27), .Y(n40) );
  NAND4X0_LVT U291 ( .A1(n41), .A2(n19), .A3(buf_index[4]), .A4(n42), .Y(n26)
         );
  NOR3X0_LVT U292 ( .A1(buf_index[2]), .A2(buf_index[3]), .A3(buf_index[1]), 
        .Y(n42) );
  NAND2X0_RVT U293 ( .A1(n41), .A2(n18), .Y(n37) );
  NOR3X0_LVT U294 ( .A1(buf_index[6]), .A2(buf_index[5]), .A3(n43), .Y(n41) );
  OR3X1_LVT U295 ( .A1(buf_index[8]), .A2(buf_index[9]), .A3(buf_index[7]), 
        .Y(n43) );
  AO21X1_LVT U296 ( .A1(bit_cnt[3]), .A2(n44), .A3(n45), .Y(n338) );
  AND4X1_LVT U297 ( .A1(bit_cnt[2]), .A2(bit_cnt[1]), .A3(n46), .A4(n14), .Y(
        n45) );
  AO21X1_LVT U298 ( .A1(n38), .A2(n15), .A3(n47), .Y(n44) );
  AO22X1_LVT U299 ( .A1(bit_cnt[2]), .A2(n47), .A3(n48), .A4(bit_cnt[1]), .Y(
        n339) );
  AND2X1_LVT U300 ( .A1(n46), .A2(n15), .Y(n48) );
  AO21X1_LVT U301 ( .A1(n38), .A2(n16), .A3(n49), .Y(n47) );
  AO22X1_LVT U302 ( .A1(bit_cnt[1]), .A2(n49), .A3(n46), .A4(n16), .Y(n340) );
  AND3X1_LVT U303 ( .A1(bit_cnt[0]), .A2(n50), .A3(n38), .Y(n46) );
  AO21X1_LVT U304 ( .A1(n38), .A2(n17), .A3(n410), .Y(n49) );
  AO22X1_LVT U305 ( .A1(n410), .A2(bit_cnt[0]), .A3(n51), .A4(n38), .Y(n341)
         );
  AND2X1_LVT U306 ( .A1(n50), .A2(n17), .Y(n51) );
  NAND3X0_LVT U307 ( .A1(n52), .A2(n12), .A3(n53), .Y(n50) );
  NAND2X0_RVT U308 ( .A1(n31), .A2(rx_busy), .Y(n53) );
  AO22X1_LVT U309 ( .A1(baud_cnt[15]), .A2(n35), .A3(N308), .A4(n24), .Y(n342)
         );
  AO22X1_LVT U310 ( .A1(baud_cnt[14]), .A2(n36), .A3(N307), .A4(n23), .Y(n343)
         );
  AO22X1_LVT U311 ( .A1(baud_cnt[13]), .A2(n36), .A3(N306), .A4(n24), .Y(n344)
         );
  AO22X1_LVT U312 ( .A1(baud_cnt[12]), .A2(n36), .A3(N305), .A4(n23), .Y(n345)
         );
  AO22X1_LVT U313 ( .A1(baud_cnt[11]), .A2(n35), .A3(N304), .A4(n24), .Y(n346)
         );
  AO22X1_LVT U314 ( .A1(baud_cnt[10]), .A2(n36), .A3(N303), .A4(n23), .Y(n347)
         );
  AO22X1_LVT U315 ( .A1(baud_cnt[9]), .A2(n35), .A3(N302), .A4(n24), .Y(n348)
         );
  AO22X1_LVT U316 ( .A1(n36), .A2(baud_cnt[8]), .A3(N301), .A4(n23), .Y(n349)
         );
  AO221X1_LVT U317 ( .A1(N300), .A2(n23), .A3(n36), .A4(baud_cnt[7]), .A5(n56), 
        .Y(n350) );
  AO221X1_LVT U318 ( .A1(N299), .A2(n24), .A3(baud_cnt[6]), .A4(n35), .A5(n56), 
        .Y(n351) );
  AO22X1_LVT U319 ( .A1(n36), .A2(baud_cnt[5]), .A3(N298), .A4(n24), .Y(n352)
         );
  AO221X1_LVT U320 ( .A1(N297), .A2(n23), .A3(n35), .A4(baud_cnt[4]), .A5(n56), 
        .Y(n353) );
  AO221X1_LVT U321 ( .A1(N296), .A2(n24), .A3(baud_cnt[3]), .A4(n35), .A5(n56), 
        .Y(n354) );
  AO22X1_LVT U322 ( .A1(baud_cnt[2]), .A2(n35), .A3(N295), .A4(n23), .Y(n355)
         );
  AO22X1_LVT U323 ( .A1(baud_cnt[1]), .A2(n35), .A3(N294), .A4(n24), .Y(n356)
         );
  AO221X1_LVT U324 ( .A1(N293), .A2(n23), .A3(n36), .A4(baud_cnt[0]), .A5(n56), 
        .Y(n357) );
  AND2X1_LVT U325 ( .A1(n409), .A2(n12), .Y(n56) );
  AND2X1_LVT U328 ( .A1(rx_busy), .A2(n12), .Y(n38) );
  AO22X1_LVT U329 ( .A1(n57), .A2(rx_busy), .A3(n409), .A4(n12), .Y(n358) );
  OR2X1_LVT U330 ( .A1(rx_busy), .A2(rx_d2), .Y(n52) );
  AND2X1_LVT U331 ( .A1(n27), .A2(n12), .Y(n57) );
  NAND2X0_RVT U332 ( .A1(n39), .A2(rx_busy), .Y(n27) );
  AND4X1_LVT U333 ( .A1(n16), .A2(n15), .A3(n31), .A4(n58), .Y(n39) );
  AND2X1_LVT U334 ( .A1(bit_cnt[3]), .A2(bit_cnt[0]), .Y(n58) );
  NOR4X1_LVT U335 ( .A1(n59), .A2(n60), .A3(n61), .A4(n62), .Y(n31) );
  NAND4X0_LVT U338 ( .A1(baud_cnt[8]), .A2(baud_cnt[7]), .A3(baud_cnt[5]), 
        .A4(baud_cnt[4]), .Y(n60) );
  AND2X1_LVT U340 ( .A1(N36), .A2(n21), .Y(N730) );
  AND2X1_LVT U341 ( .A1(N35), .A2(n13), .Y(N729) );
  AND2X1_LVT U342 ( .A1(N34), .A2(n21), .Y(N728) );
  AND2X1_LVT U343 ( .A1(N33), .A2(n21), .Y(N727) );
  AND2X1_LVT U344 ( .A1(N32), .A2(n13), .Y(N726) );
  AND2X1_LVT U345 ( .A1(N31), .A2(n13), .Y(N725) );
  AND2X1_LVT U346 ( .A1(N30), .A2(n21), .Y(N724) );
  AND2X1_LVT U347 ( .A1(N29), .A2(n13), .Y(N723) );
  AND2X1_LVT U348 ( .A1(N28), .A2(n21), .Y(N722) );
  AND2X1_LVT U349 ( .A1(N27), .A2(n21), .Y(N721) );
  AND2X1_LVT U350 ( .A1(N26), .A2(n13), .Y(N720) );
  AND2X1_LVT U351 ( .A1(N25), .A2(n13), .Y(N719) );
  AND2X1_LVT U352 ( .A1(N24), .A2(n21), .Y(N718) );
  AND2X1_LVT U353 ( .A1(N23), .A2(n13), .Y(N717) );
  AND2X1_LVT U354 ( .A1(N22), .A2(n21), .Y(N716) );
  AND2X1_LVT U355 ( .A1(N21), .A2(n21), .Y(N715) );
  AND2X1_LVT U356 ( .A1(N20), .A2(n13), .Y(N714) );
  AND2X1_LVT U357 ( .A1(N19), .A2(n13), .Y(N713) );
  AND2X1_LVT U358 ( .A1(N18), .A2(n21), .Y(N712) );
  AND2X1_LVT U359 ( .A1(N17), .A2(n13), .Y(N711) );
  OR2X1_LVT U362 ( .A1(rst), .A2(rx), .Y(N698) );
  UART_RX_DW01_inc_0_DW01_inc_5 add_96 ( .A(baud_cnt), .SUM({N308, N307, N306, 
        N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, 
        N293}) );
  UART_RX_DW01_inc_1_DW01_inc_6 add_86 ( .A(buf_index), .SUM({N101, N100, N99, 
        N98, N97, N96, N95, N94, N93, N92}) );
  UART_RX_DW01_inc_2_DW01_inc_7 add_51 ( .A(idle_counter), .SUM({N36, N35, N34, 
        N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, 
        N19, N18, N17}) );
  DFFSSRX1_RVT rx_d2_reg ( .D(rst), .SETB(n5), .RSTB(1'b1), .CLK(clk), .Q(
        rx_d2) );
  INVX1_LVT U20 ( .A(n31), .Y(n412) );
  NOR2X1_LVT U259 ( .A1(n27), .A2(n367), .Y(n1) );
  NOR2X1_LVT U261 ( .A1(n37), .A2(n25), .Y(n2) );
  OA21X1_LVT U262 ( .A1(n8), .A2(rst), .A3(n25), .Y(n3) );
  AND3X1_LVT U287 ( .A1(n8), .A2(n12), .A3(n40), .Y(n4) );
  OA22X1_LVT U289 ( .A1(n8), .A2(rst), .A3(n25), .A4(n26), .Y(n22) );
  NBUFFX2_LVT U327 ( .A(n3), .Y(n367) );
  NBUFFX2_LVT U336 ( .A(n1), .Y(n365) );
  NBUFFX2_LVT U337 ( .A(n1), .Y(n364) );
  NBUFFX2_LVT U339 ( .A(n1), .Y(n363) );
  NBUFFX2_LVT U360 ( .A(n1), .Y(n362) );
  NBUFFX2_LVT U361 ( .A(n1), .Y(n361) );
  NBUFFX2_LVT U363 ( .A(n1), .Y(n360) );
  NBUFFX2_LVT U364 ( .A(n1), .Y(n359) );
  NBUFFX2_LVT U365 ( .A(n1), .Y(n63) );
  NBUFFX2_LVT U366 ( .A(n1), .Y(n55) );
  NBUFFX2_LVT U367 ( .A(n1), .Y(n54) );
  NBUFFX2_LVT U368 ( .A(n1), .Y(n366) );
  NBUFFX2_LVT U369 ( .A(n3), .Y(n369) );
  NBUFFX2_LVT U370 ( .A(n3), .Y(n370) );
  NBUFFX2_LVT U371 ( .A(n3), .Y(n371) );
  NBUFFX2_LVT U372 ( .A(n3), .Y(n372) );
  NBUFFX2_LVT U373 ( .A(n3), .Y(n373) );
  NBUFFX2_LVT U374 ( .A(n3), .Y(n368) );
  NBUFFX2_LVT U375 ( .A(n368), .Y(n374) );
  INVX1_LVT U376 ( .A(n7), .Y(n23) );
  INVX1_LVT U377 ( .A(n7), .Y(n24) );
  INVX1_LVT U378 ( .A(rst), .Y(n12) );
  NAND2X0_RVT U379 ( .A1(n38), .A2(n412), .Y(n7) );
  INVX1_LVT U380 ( .A(n9), .Y(n21) );
  INVX1_LVT U381 ( .A(n9), .Y(n13) );
  INVX1_LVT U382 ( .A(n29), .Y(n411) );
  INVX1_LVT U383 ( .A(n10), .Y(n36) );
  INVX1_LVT U384 ( .A(n10), .Y(n35) );
  INVX1_LVT U385 ( .A(n52), .Y(n409) );
  INVX1_LVT U386 ( .A(n50), .Y(n410) );
  OR4X1_LVT U387 ( .A1(baud_cnt[13]), .A2(baud_cnt[14]), .A3(baud_cnt[15]), 
        .A4(baud_cnt[1]), .Y(n62) );
  OR4X1_LVT U388 ( .A1(baud_cnt[2]), .A2(baud_cnt[3]), .A3(baud_cnt[6]), .A4(
        baud_cnt[9]), .Y(n61) );
  OR4X1_LVT U389 ( .A1(n11), .A2(baud_cnt[10]), .A3(baud_cnt[11]), .A4(
        baud_cnt[12]), .Y(n59) );
  NAND4X0_LVT U390 ( .A1(idle_counter[19]), .A2(idle_counter[18]), .A3(n408), 
        .A4(idle_counter[17]), .Y(n8) );
  NAND3X0_LVT U391 ( .A1(n12), .A2(n20), .A3(n8), .Y(n9) );
  NAND3X0_LVT U392 ( .A1(n12), .A2(n20), .A3(n52), .Y(n10) );
  INVX1_LVT U393 ( .A(n387), .Y(n384) );
  INVX1_LVT U394 ( .A(n388), .Y(n383) );
  INVX1_LVT U395 ( .A(n389), .Y(n382) );
  INVX1_LVT U396 ( .A(n390), .Y(n381) );
  INVX1_LVT U397 ( .A(n391), .Y(n380) );
  INVX1_LVT U398 ( .A(n392), .Y(n379) );
  INVX1_LVT U399 ( .A(n393), .Y(n378) );
  INVX1_LVT U400 ( .A(n394), .Y(n377) );
  INVX1_LVT U401 ( .A(n395), .Y(n376) );
  INVX1_LVT U402 ( .A(n396), .Y(n375) );
  INVX1_LVT U403 ( .A(n386), .Y(n385) );
  INVX1_LVT U404 ( .A(n22), .Y(n400) );
  INVX1_LVT U405 ( .A(n22), .Y(n399) );
  INVX1_LVT U406 ( .A(n22), .Y(n398) );
  NBUFFX2_LVT U407 ( .A(n400), .Y(n387) );
  NBUFFX2_LVT U408 ( .A(n400), .Y(n388) );
  NBUFFX2_LVT U409 ( .A(n399), .Y(n389) );
  NBUFFX2_LVT U410 ( .A(n399), .Y(n390) );
  NBUFFX2_LVT U411 ( .A(n399), .Y(n391) );
  NBUFFX2_LVT U412 ( .A(n398), .Y(n392) );
  NBUFFX2_LVT U413 ( .A(n398), .Y(n393) );
  NBUFFX2_LVT U414 ( .A(n398), .Y(n394) );
  NBUFFX2_LVT U415 ( .A(n400), .Y(n395) );
  NBUFFX2_LVT U416 ( .A(n398), .Y(n396) );
  NBUFFX2_LVT U417 ( .A(n391), .Y(n397) );
  NBUFFX2_LVT U418 ( .A(n400), .Y(n386) );
  OR3X1_HVT U419 ( .A1(idle_counter[13]), .A2(idle_counter[12]), .A3(
        idle_counter[11]), .Y(n406) );
  OR3X1_HVT U420 ( .A1(idle_counter[5]), .A2(idle_counter[4]), .A3(
        idle_counter[3]), .Y(n402) );
  OR3X1_HVT U421 ( .A1(idle_counter[2]), .A2(idle_counter[1]), .A3(
        idle_counter[0]), .Y(n401) );
  OA21X1_HVT U422 ( .A1(n402), .A2(n401), .A3(idle_counter[6]), .Y(n403) );
  OR3X1_HVT U423 ( .A1(idle_counter[8]), .A2(idle_counter[7]), .A3(n403), .Y(
        n404) );
  AO21X1_HVT U424 ( .A1(idle_counter[9]), .A2(n404), .A3(idle_counter[10]), 
        .Y(n405) );
  OA21X1_HVT U425 ( .A1(n406), .A2(n405), .A3(idle_counter[14]), .Y(n407) );
  OA21X1_HVT U426 ( .A1(n407), .A2(idle_counter[15]), .A3(idle_counter[16]), 
        .Y(n408) );
endmodule


module UART_TX_DW01_inc_0_DW01_inc_3 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1_LVT U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1_LVT U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1_LVT U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1_LVT U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1_LVT U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1_LVT U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1_LVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_LVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_LVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_LVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_LVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_LVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_LVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_LVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_LVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_HVT U2 ( .A1(carry[15]), .A2(A[15]), .Y(SUM[15]) );
endmodule


module UART_TX ( clk, rst, btn_send, data, tx );
  input [127:0] data;
  input clk, rst, btn_send;
  output tx;
  wire   btn_d3, btn_d1, N35, N37, sending, N48, N49, N50, N51, N126, N127,
         N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138,
         N139, N140, N141, N210, n1, n2, n4, n5, n6, n7, n9, n12, n13, n15,
         n16, n17, n18, n20, n21, n22, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, \add_67/carry[4] , \add_67/carry[3] , \add_67/carry[2] ,
         n3, n8, n11, n14, n19, n23, n24, n143, n193, n194, n195, n196, n197;
  wire   [9:0] tx_shift;
  wire   [3:0] bit_cnt;
  wire   [4:0] byte_index;
  wire   [15:0] baud_cnt;

  DFFX1_LVT btn_d1_reg ( .D(N35), .CLK(clk), .Q(btn_d1) );
  DFFX1_LVT btn_d3_reg ( .D(N37), .CLK(clk), .Q(btn_d3) );
  DFFX1_LVT \bit_cnt_reg[0]  ( .D(n192), .CLK(clk), .Q(bit_cnt[0]), .QN(n17)
         );
  DFFX1_LVT \byte_index_reg[4]  ( .D(n190), .CLK(clk), .Q(byte_index[4]), .QN(
        n2) );
  DFFX1_LVT sending_reg ( .D(n189), .CLK(clk), .Q(sending), .QN(n9) );
  DFFX1_LVT \baud_cnt_reg[1]  ( .D(n188), .CLK(clk), .Q(baud_cnt[1]) );
  DFFX1_LVT \baud_cnt_reg[0]  ( .D(n187), .CLK(clk), .Q(baud_cnt[0]), .QN(n12)
         );
  DFFX1_LVT \baud_cnt_reg[2]  ( .D(n186), .CLK(clk), .Q(baud_cnt[2]) );
  DFFX1_LVT \baud_cnt_reg[3]  ( .D(n185), .CLK(clk), .Q(baud_cnt[3]) );
  DFFX1_LVT \baud_cnt_reg[4]  ( .D(n184), .CLK(clk), .Q(baud_cnt[4]) );
  DFFX1_LVT \baud_cnt_reg[5]  ( .D(n183), .CLK(clk), .Q(baud_cnt[5]) );
  DFFX1_LVT \baud_cnt_reg[6]  ( .D(n182), .CLK(clk), .Q(baud_cnt[6]) );
  DFFX1_LVT \baud_cnt_reg[7]  ( .D(n181), .CLK(clk), .Q(baud_cnt[7]) );
  DFFX1_LVT \baud_cnt_reg[8]  ( .D(n180), .CLK(clk), .Q(baud_cnt[8]) );
  DFFX1_LVT \baud_cnt_reg[9]  ( .D(n179), .CLK(clk), .Q(baud_cnt[9]) );
  DFFX1_LVT \baud_cnt_reg[10]  ( .D(n178), .CLK(clk), .Q(baud_cnt[10]) );
  DFFX1_LVT \baud_cnt_reg[11]  ( .D(n177), .CLK(clk), .Q(baud_cnt[11]) );
  DFFX1_LVT \baud_cnt_reg[12]  ( .D(n176), .CLK(clk), .Q(baud_cnt[12]) );
  DFFX1_LVT \baud_cnt_reg[13]  ( .D(n175), .CLK(clk), .Q(baud_cnt[13]) );
  DFFX1_LVT \baud_cnt_reg[14]  ( .D(n174), .CLK(clk), .Q(baud_cnt[14]) );
  DFFX1_LVT \baud_cnt_reg[15]  ( .D(n173), .CLK(clk), .Q(baud_cnt[15]) );
  DFFX1_LVT \byte_index_reg[0]  ( .D(n170), .CLK(clk), .Q(byte_index[0]), .QN(
        n7) );
  DFFX1_LVT \byte_index_reg[1]  ( .D(n167), .CLK(clk), .Q(byte_index[1]), .QN(
        n6) );
  DFFX1_LVT \byte_index_reg[2]  ( .D(n168), .CLK(clk), .Q(byte_index[2]), .QN(
        n5) );
  DFFX1_LVT \byte_index_reg[3]  ( .D(n169), .CLK(clk), .Q(byte_index[3]), .QN(
        n4) );
  DFFX1_LVT \bit_cnt_reg[1]  ( .D(n171), .CLK(clk), .Q(bit_cnt[1]), .QN(n16)
         );
  DFFX1_LVT \bit_cnt_reg[2]  ( .D(n172), .CLK(clk), .Q(bit_cnt[2]), .QN(n15)
         );
  DFFX1_LVT \bit_cnt_reg[3]  ( .D(n191), .CLK(clk), .Q(bit_cnt[3]), .QN(n13)
         );
  DFFX1_LVT \tx_shift_reg[8]  ( .D(n159), .CLK(clk), .Q(tx_shift[8]) );
  DFFX1_LVT \tx_shift_reg[7]  ( .D(n160), .CLK(clk), .Q(tx_shift[7]) );
  DFFX1_LVT \tx_shift_reg[6]  ( .D(n161), .CLK(clk), .Q(tx_shift[6]) );
  DFFX1_LVT \tx_shift_reg[5]  ( .D(n162), .CLK(clk), .Q(tx_shift[5]) );
  DFFX1_LVT \tx_shift_reg[4]  ( .D(n163), .CLK(clk), .Q(tx_shift[4]) );
  DFFX1_LVT \tx_shift_reg[3]  ( .D(n164), .CLK(clk), .Q(tx_shift[3]) );
  DFFX1_LVT \tx_shift_reg[2]  ( .D(n165), .CLK(clk), .Q(tx_shift[2]) );
  DFFX1_LVT \tx_shift_reg[1]  ( .D(n166), .CLK(clk), .Q(tx_shift[1]) );
  DFFX1_LVT \tx_shift_reg[0]  ( .D(n158), .CLK(clk), .Q(tx_shift[0]), .QN(n18)
         );
  DFFX1_LVT tx_reg ( .D(n157), .CLK(clk), .Q(tx) );
  AO22X1_LVT U4 ( .A1(tx), .A2(n23), .A3(n20), .A4(n21), .Y(n157) );
  NAND3X0_LVT U5 ( .A1(n22), .A2(n18), .A3(sending), .Y(n20) );
  NAND2X0_RVT U6 ( .A1(n194), .A2(n195), .Y(n22) );
  AO221X1_LVT U7 ( .A1(tx_shift[1]), .A2(n3), .A3(tx_shift[0]), .A4(n24), .A5(
        n8), .Y(n158) );
  AO21X1_LVT U9 ( .A1(n26), .A2(n27), .A3(n8), .Y(n25) );
  AO221X1_LVT U11 ( .A1(data[95]), .A2(n32), .A3(data[87]), .A4(n33), .A5(n34), 
        .Y(n31) );
  AO22X1_LVT U12 ( .A1(data[71]), .A2(n35), .A3(data[79]), .A4(n36), .Y(n34)
         );
  AO221X1_LVT U13 ( .A1(data[111]), .A2(n37), .A3(data[103]), .A4(n38), .A5(
        n39), .Y(n30) );
  AO22X1_LVT U14 ( .A1(data[119]), .A2(n40), .A3(data[127]), .A4(n41), .Y(n39)
         );
  AO221X1_LVT U15 ( .A1(data[15]), .A2(n42), .A3(data[7]), .A4(n43), .A5(n44), 
        .Y(n29) );
  AO22X1_LVT U16 ( .A1(data[23]), .A2(n45), .A3(data[31]), .A4(n46), .Y(n44)
         );
  AO221X1_LVT U17 ( .A1(data[47]), .A2(n47), .A3(data[39]), .A4(n48), .A5(n49), 
        .Y(n28) );
  AO22X1_LVT U18 ( .A1(data[55]), .A2(n50), .A3(data[63]), .A4(n51), .Y(n49)
         );
  AO221X1_LVT U19 ( .A1(tx_shift[8]), .A2(n3), .A3(tx_shift[7]), .A4(n24), 
        .A5(n52), .Y(n160) );
  AO21X1_LVT U20 ( .A1(n26), .A2(n53), .A3(n8), .Y(n52) );
  AO221X1_LVT U22 ( .A1(data[94]), .A2(n32), .A3(data[86]), .A4(n33), .A5(n58), 
        .Y(n57) );
  AO22X1_LVT U23 ( .A1(data[70]), .A2(n35), .A3(data[78]), .A4(n36), .Y(n58)
         );
  AO221X1_LVT U24 ( .A1(data[110]), .A2(n37), .A3(data[102]), .A4(n38), .A5(
        n59), .Y(n56) );
  AO22X1_LVT U25 ( .A1(data[118]), .A2(n40), .A3(data[126]), .A4(n41), .Y(n59)
         );
  AO221X1_LVT U26 ( .A1(data[14]), .A2(n42), .A3(data[6]), .A4(n43), .A5(n60), 
        .Y(n55) );
  AO22X1_LVT U27 ( .A1(data[22]), .A2(n45), .A3(data[30]), .A4(n46), .Y(n60)
         );
  AO221X1_LVT U28 ( .A1(data[46]), .A2(n47), .A3(data[38]), .A4(n48), .A5(n61), 
        .Y(n54) );
  AO22X1_LVT U29 ( .A1(data[54]), .A2(n50), .A3(data[62]), .A4(n51), .Y(n61)
         );
  AO221X1_LVT U30 ( .A1(tx_shift[7]), .A2(n3), .A3(tx_shift[6]), .A4(n24), 
        .A5(n62), .Y(n161) );
  AO21X1_LVT U31 ( .A1(n26), .A2(n63), .A3(n8), .Y(n62) );
  AO221X1_LVT U33 ( .A1(data[93]), .A2(n32), .A3(data[85]), .A4(n33), .A5(n68), 
        .Y(n67) );
  AO22X1_LVT U34 ( .A1(data[69]), .A2(n35), .A3(data[77]), .A4(n36), .Y(n68)
         );
  AO221X1_LVT U35 ( .A1(data[109]), .A2(n37), .A3(data[101]), .A4(n38), .A5(
        n69), .Y(n66) );
  AO22X1_LVT U36 ( .A1(data[117]), .A2(n40), .A3(data[125]), .A4(n41), .Y(n69)
         );
  AO221X1_LVT U37 ( .A1(data[13]), .A2(n42), .A3(data[5]), .A4(n43), .A5(n70), 
        .Y(n65) );
  AO22X1_LVT U38 ( .A1(data[21]), .A2(n45), .A3(data[29]), .A4(n46), .Y(n70)
         );
  AO221X1_LVT U39 ( .A1(data[45]), .A2(n47), .A3(data[37]), .A4(n48), .A5(n71), 
        .Y(n64) );
  AO22X1_LVT U40 ( .A1(data[53]), .A2(n50), .A3(data[61]), .A4(n51), .Y(n71)
         );
  AO221X1_LVT U41 ( .A1(tx_shift[6]), .A2(n3), .A3(tx_shift[5]), .A4(n24), 
        .A5(n72), .Y(n162) );
  AO21X1_LVT U42 ( .A1(n26), .A2(n73), .A3(n8), .Y(n72) );
  AO221X1_LVT U44 ( .A1(data[92]), .A2(n32), .A3(data[84]), .A4(n33), .A5(n78), 
        .Y(n77) );
  AO22X1_LVT U45 ( .A1(data[68]), .A2(n35), .A3(data[76]), .A4(n36), .Y(n78)
         );
  AO221X1_LVT U46 ( .A1(data[108]), .A2(n37), .A3(data[100]), .A4(n38), .A5(
        n79), .Y(n76) );
  AO22X1_LVT U47 ( .A1(data[116]), .A2(n40), .A3(data[124]), .A4(n41), .Y(n79)
         );
  AO221X1_LVT U48 ( .A1(data[12]), .A2(n42), .A3(data[4]), .A4(n43), .A5(n80), 
        .Y(n75) );
  AO22X1_LVT U49 ( .A1(data[20]), .A2(n45), .A3(data[28]), .A4(n46), .Y(n80)
         );
  AO221X1_LVT U50 ( .A1(data[44]), .A2(n47), .A3(data[36]), .A4(n48), .A5(n81), 
        .Y(n74) );
  AO22X1_LVT U51 ( .A1(data[52]), .A2(n50), .A3(data[60]), .A4(n51), .Y(n81)
         );
  AO221X1_LVT U52 ( .A1(tx_shift[5]), .A2(n3), .A3(tx_shift[4]), .A4(n24), 
        .A5(n82), .Y(n163) );
  AO21X1_LVT U53 ( .A1(n26), .A2(n83), .A3(n8), .Y(n82) );
  AO221X1_LVT U55 ( .A1(data[91]), .A2(n32), .A3(data[83]), .A4(n33), .A5(n88), 
        .Y(n87) );
  AO22X1_LVT U56 ( .A1(data[67]), .A2(n35), .A3(data[75]), .A4(n36), .Y(n88)
         );
  AO221X1_LVT U57 ( .A1(data[107]), .A2(n37), .A3(data[99]), .A4(n38), .A5(n89), .Y(n86) );
  AO22X1_LVT U58 ( .A1(data[115]), .A2(n40), .A3(data[123]), .A4(n41), .Y(n89)
         );
  AO221X1_LVT U59 ( .A1(data[11]), .A2(n42), .A3(data[3]), .A4(n43), .A5(n90), 
        .Y(n85) );
  AO22X1_LVT U60 ( .A1(data[19]), .A2(n45), .A3(data[27]), .A4(n46), .Y(n90)
         );
  AO221X1_LVT U61 ( .A1(data[43]), .A2(n47), .A3(data[35]), .A4(n48), .A5(n91), 
        .Y(n84) );
  AO22X1_LVT U62 ( .A1(data[51]), .A2(n50), .A3(data[59]), .A4(n51), .Y(n91)
         );
  AO221X1_LVT U63 ( .A1(tx_shift[4]), .A2(n3), .A3(tx_shift[3]), .A4(n24), 
        .A5(n92), .Y(n164) );
  AO21X1_LVT U64 ( .A1(n26), .A2(n93), .A3(n8), .Y(n92) );
  AO221X1_LVT U66 ( .A1(data[90]), .A2(n32), .A3(data[82]), .A4(n33), .A5(n98), 
        .Y(n97) );
  AO22X1_LVT U67 ( .A1(data[66]), .A2(n35), .A3(data[74]), .A4(n36), .Y(n98)
         );
  AO221X1_LVT U68 ( .A1(data[106]), .A2(n37), .A3(data[98]), .A4(n38), .A5(n99), .Y(n96) );
  AO22X1_LVT U69 ( .A1(data[114]), .A2(n40), .A3(data[122]), .A4(n41), .Y(n99)
         );
  AO221X1_LVT U70 ( .A1(data[10]), .A2(n42), .A3(data[2]), .A4(n43), .A5(n100), 
        .Y(n95) );
  AO22X1_LVT U71 ( .A1(data[18]), .A2(n45), .A3(data[26]), .A4(n46), .Y(n100)
         );
  AO221X1_LVT U72 ( .A1(data[42]), .A2(n47), .A3(data[34]), .A4(n48), .A5(n101), .Y(n94) );
  AO22X1_LVT U73 ( .A1(data[50]), .A2(n50), .A3(data[58]), .A4(n51), .Y(n101)
         );
  AO221X1_LVT U74 ( .A1(tx_shift[3]), .A2(n3), .A3(tx_shift[2]), .A4(n24), 
        .A5(n102), .Y(n165) );
  AO21X1_LVT U75 ( .A1(n26), .A2(n103), .A3(n8), .Y(n102) );
  AO221X1_LVT U77 ( .A1(data[89]), .A2(n32), .A3(data[81]), .A4(n33), .A5(n108), .Y(n107) );
  AO22X1_LVT U78 ( .A1(data[65]), .A2(n35), .A3(data[73]), .A4(n36), .Y(n108)
         );
  AO221X1_LVT U79 ( .A1(data[105]), .A2(n37), .A3(data[97]), .A4(n38), .A5(
        n109), .Y(n106) );
  AO22X1_LVT U80 ( .A1(data[113]), .A2(n40), .A3(data[121]), .A4(n41), .Y(n109) );
  AO221X1_LVT U81 ( .A1(data[9]), .A2(n42), .A3(data[1]), .A4(n43), .A5(n110), 
        .Y(n105) );
  AO22X1_LVT U82 ( .A1(data[17]), .A2(n45), .A3(data[25]), .A4(n46), .Y(n110)
         );
  AO221X1_LVT U83 ( .A1(data[41]), .A2(n47), .A3(data[33]), .A4(n48), .A5(n111), .Y(n104) );
  AO22X1_LVT U84 ( .A1(data[49]), .A2(n50), .A3(data[57]), .A4(n51), .Y(n111)
         );
  AO221X1_LVT U85 ( .A1(tx_shift[2]), .A2(n3), .A3(tx_shift[1]), .A4(n24), 
        .A5(n112), .Y(n166) );
  AO21X1_LVT U86 ( .A1(n26), .A2(n113), .A3(n8), .Y(n112) );
  AO221X1_LVT U89 ( .A1(data[88]), .A2(n32), .A3(data[80]), .A4(n33), .A5(n119), .Y(n118) );
  AO22X1_LVT U90 ( .A1(data[64]), .A2(n35), .A3(data[72]), .A4(n36), .Y(n119)
         );
  AND2X1_LVT U91 ( .A1(n120), .A2(n121), .Y(n36) );
  AND2X1_LVT U92 ( .A1(n120), .A2(n122), .Y(n35) );
  AND2X1_LVT U93 ( .A1(n123), .A2(n122), .Y(n33) );
  AND2X1_LVT U94 ( .A1(n123), .A2(n121), .Y(n32) );
  AO221X1_LVT U95 ( .A1(data[104]), .A2(n37), .A3(data[96]), .A4(n38), .A5(
        n124), .Y(n117) );
  AO22X1_LVT U96 ( .A1(data[112]), .A2(n40), .A3(data[120]), .A4(n41), .Y(n124) );
  AND2X1_LVT U97 ( .A1(n121), .A2(n125), .Y(n41) );
  AND2X1_LVT U98 ( .A1(n122), .A2(n125), .Y(n40) );
  AND2X1_LVT U99 ( .A1(n126), .A2(n122), .Y(n38) );
  AND2X1_LVT U100 ( .A1(byte_index[0]), .A2(n127), .Y(n122) );
  AND2X1_LVT U101 ( .A1(n126), .A2(n121), .Y(n37) );
  AND2X1_LVT U102 ( .A1(n127), .A2(n7), .Y(n121) );
  AND2X1_LVT U103 ( .A1(n4), .A2(n2), .Y(n127) );
  AO221X1_LVT U104 ( .A1(data[8]), .A2(n42), .A3(data[0]), .A4(n43), .A5(n128), 
        .Y(n116) );
  AO22X1_LVT U105 ( .A1(data[16]), .A2(n45), .A3(data[24]), .A4(n46), .Y(n128)
         );
  AND2X1_LVT U106 ( .A1(n129), .A2(n123), .Y(n46) );
  AND2X1_LVT U107 ( .A1(n130), .A2(n123), .Y(n45) );
  AND2X1_LVT U108 ( .A1(byte_index[2]), .A2(n6), .Y(n123) );
  AND2X1_LVT U109 ( .A1(n130), .A2(n120), .Y(n43) );
  AND2X1_LVT U110 ( .A1(n129), .A2(n120), .Y(n42) );
  AND2X1_LVT U111 ( .A1(byte_index[2]), .A2(byte_index[1]), .Y(n120) );
  AO221X1_LVT U112 ( .A1(data[40]), .A2(n47), .A3(data[32]), .A4(n48), .A5(
        n131), .Y(n115) );
  AO22X1_LVT U113 ( .A1(data[48]), .A2(n50), .A3(data[56]), .A4(n51), .Y(n131)
         );
  AND2X1_LVT U114 ( .A1(n129), .A2(n125), .Y(n51) );
  AND2X1_LVT U115 ( .A1(n130), .A2(n125), .Y(n50) );
  AND2X1_LVT U116 ( .A1(n130), .A2(n126), .Y(n48) );
  AND2X1_LVT U117 ( .A1(n132), .A2(byte_index[0]), .Y(n130) );
  AND2X1_LVT U118 ( .A1(n129), .A2(n126), .Y(n47) );
  AND2X1_LVT U119 ( .A1(byte_index[1]), .A2(n5), .Y(n126) );
  AND2X1_LVT U120 ( .A1(n132), .A2(n7), .Y(n129) );
  AND2X1_LVT U121 ( .A1(byte_index[3]), .A2(n2), .Y(n132) );
  NOR2X0_LVT U122 ( .A1(n133), .A2(n24), .Y(n26) );
  NAND2X0_RVT U124 ( .A1(n194), .A2(n134), .Y(n133) );
  AO22X1_LVT U125 ( .A1(n135), .A2(byte_index[1]), .A3(N48), .A4(n136), .Y(
        n167) );
  AO22X1_LVT U126 ( .A1(n135), .A2(byte_index[2]), .A3(N49), .A4(n136), .Y(
        n168) );
  AO22X1_LVT U127 ( .A1(n135), .A2(byte_index[3]), .A3(N50), .A4(n136), .Y(
        n169) );
  AO22X1_LVT U128 ( .A1(n135), .A2(byte_index[0]), .A3(n7), .A4(n136), .Y(n170) );
  AO22X1_LVT U129 ( .A1(bit_cnt[1]), .A2(n137), .A3(n138), .A4(n139), .Y(n171)
         );
  AND2X1_LVT U130 ( .A1(bit_cnt[0]), .A2(n16), .Y(n138) );
  AO22X1_LVT U131 ( .A1(bit_cnt[2]), .A2(n140), .A3(n141), .A4(n142), .Y(n172)
         );
  AND2X1_LVT U132 ( .A1(n139), .A2(n15), .Y(n141) );
  AO22X1_LVT U133 ( .A1(baud_cnt[15]), .A2(n193), .A3(N141), .A4(n19), .Y(n173) );
  AO22X1_LVT U134 ( .A1(baud_cnt[14]), .A2(n143), .A3(N140), .A4(n23), .Y(n174) );
  AO22X1_LVT U135 ( .A1(baud_cnt[13]), .A2(n193), .A3(N139), .A4(n23), .Y(n175) );
  AO22X1_LVT U136 ( .A1(baud_cnt[12]), .A2(n143), .A3(N138), .A4(n19), .Y(n176) );
  AO22X1_LVT U137 ( .A1(baud_cnt[11]), .A2(n193), .A3(N137), .A4(n19), .Y(n177) );
  AO22X1_LVT U138 ( .A1(baud_cnt[10]), .A2(n143), .A3(N136), .A4(n23), .Y(n178) );
  AO22X1_LVT U139 ( .A1(baud_cnt[9]), .A2(n193), .A3(N135), .A4(n19), .Y(n179)
         );
  AO22X1_LVT U140 ( .A1(n143), .A2(baud_cnt[8]), .A3(N134), .A4(n19), .Y(n180)
         );
  AO22X1_LVT U141 ( .A1(n193), .A2(baud_cnt[7]), .A3(N133), .A4(n23), .Y(n181)
         );
  AO22X1_LVT U142 ( .A1(baud_cnt[6]), .A2(n143), .A3(N132), .A4(n19), .Y(n182)
         );
  AO22X1_LVT U143 ( .A1(n143), .A2(baud_cnt[5]), .A3(N131), .A4(n23), .Y(n183)
         );
  AO22X1_LVT U144 ( .A1(n193), .A2(baud_cnt[4]), .A3(N130), .A4(n23), .Y(n184)
         );
  AO22X1_LVT U145 ( .A1(baud_cnt[3]), .A2(n193), .A3(N129), .A4(n19), .Y(n185)
         );
  AO22X1_LVT U146 ( .A1(baud_cnt[2]), .A2(n143), .A3(N128), .A4(n23), .Y(n186)
         );
  AO22X1_LVT U147 ( .A1(n143), .A2(baud_cnt[0]), .A3(N126), .A4(n23), .Y(n187)
         );
  AO22X1_LVT U148 ( .A1(baud_cnt[1]), .A2(n193), .A3(N127), .A4(n19), .Y(n188)
         );
  OR2X1_LVT U149 ( .A1(n9), .A2(n144), .Y(n21) );
  NAND2X0_RVT U151 ( .A1(n146), .A2(n147), .Y(n189) );
  NAND3X0_LVT U152 ( .A1(sending), .A2(n148), .A3(n145), .Y(n146) );
  NAND3X0_LVT U153 ( .A1(n194), .A2(n195), .A3(n196), .Y(n148) );
  NAND4X0_LVT U154 ( .A1(byte_index[4]), .A2(n125), .A3(n7), .A4(n4), .Y(n134)
         );
  AND2X1_LVT U155 ( .A1(n6), .A2(n5), .Y(n125) );
  AO22X1_LVT U156 ( .A1(n135), .A2(byte_index[4]), .A3(N51), .A4(n136), .Y(
        n190) );
  AND2X1_LVT U157 ( .A1(n196), .A2(n194), .Y(n136) );
  OA21X1_LVT U158 ( .A1(n114), .A2(n149), .A3(n145), .Y(n135) );
  AO21X1_LVT U159 ( .A1(bit_cnt[3]), .A2(n150), .A3(n151), .Y(n191) );
  AND4X1_LVT U160 ( .A1(bit_cnt[2]), .A2(n142), .A3(n139), .A4(n13), .Y(n151)
         );
  AND2X1_LVT U161 ( .A1(bit_cnt[1]), .A2(bit_cnt[0]), .Y(n142) );
  AO21X1_LVT U162 ( .A1(n139), .A2(n15), .A3(n140), .Y(n150) );
  AO21X1_LVT U163 ( .A1(n139), .A2(n16), .A3(n137), .Y(n140) );
  AO21X1_LVT U164 ( .A1(n139), .A2(n17), .A3(n152), .Y(n137) );
  AO22X1_LVT U165 ( .A1(n152), .A2(bit_cnt[0]), .A3(n139), .A4(n17), .Y(n192)
         );
  AND2X1_LVT U166 ( .A1(n196), .A2(n149), .Y(n139) );
  NAND4X0_LVT U167 ( .A1(bit_cnt[3]), .A2(bit_cnt[0]), .A3(n16), .A4(n15), .Y(
        n149) );
  AND2X1_LVT U168 ( .A1(n145), .A2(n114), .Y(n152) );
  AND2X1_LVT U169 ( .A1(n197), .A2(n147), .Y(n145) );
  NAND3X0_LVT U170 ( .A1(n1), .A2(n9), .A3(btn_d3), .Y(n147) );
  NAND2X0_RVT U171 ( .A1(n197), .A2(n1), .Y(N37) );
  OR2X1_LVT U173 ( .A1(btn_send), .A2(rst), .Y(N35) );
  NAND2X0_RVT U174 ( .A1(n197), .A2(n114), .Y(N210) );
  NAND2X0_RVT U175 ( .A1(n144), .A2(sending), .Y(n114) );
  NOR4X1_LVT U176 ( .A1(n153), .A2(n154), .A3(n155), .A4(n156), .Y(n144) );
  NAND4X0_LVT U179 ( .A1(baud_cnt[8]), .A2(baud_cnt[7]), .A3(baud_cnt[5]), 
        .A4(baud_cnt[4]), .Y(n154) );
  UART_TX_DW01_inc_0_DW01_inc_3 add_82 ( .A(baud_cnt), .SUM({N141, N140, N139, 
        N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, 
        N126}) );
  HADDX1_LVT \add_67/U1_1_1  ( .A0(byte_index[1]), .B0(byte_index[0]), .C1(
        \add_67/carry[2] ), .SO(N48) );
  HADDX1_LVT \add_67/U1_1_2  ( .A0(byte_index[2]), .B0(\add_67/carry[2] ), 
        .C1(\add_67/carry[3] ), .SO(N49) );
  HADDX1_LVT \add_67/U1_1_3  ( .A0(byte_index[3]), .B0(\add_67/carry[3] ), 
        .C1(\add_67/carry[4] ), .SO(N50) );
  DFFSSRX1_RVT btn_d2_reg ( .D(btn_d1), .SETB(n197), .RSTB(1'b1), .CLK(clk), 
        .QN(n1) );
  AND2X1_LVT U3 ( .A1(n133), .A2(N210), .Y(n3) );
  AND2X1_LVT U8 ( .A1(N210), .A2(n114), .Y(n8) );
  INVX1_LVT U21 ( .A(N210), .Y(n24) );
  INVX1_LVT U32 ( .A(n21), .Y(n19) );
  INVX1_LVT U43 ( .A(n21), .Y(n23) );
  INVX1_LVT U54 ( .A(n149), .Y(n194) );
  INVX1_LVT U65 ( .A(n114), .Y(n196) );
  INVX1_LVT U76 ( .A(n14), .Y(n143) );
  INVX1_LVT U87 ( .A(n14), .Y(n193) );
  INVX1_LVT U88 ( .A(n134), .Y(n195) );
  INVX1_LVT U123 ( .A(rst), .Y(n197) );
  OR3X1_LVT U150 ( .A1(n25), .A2(n3), .A3(n11), .Y(n159) );
  AND2X1_LVT U172 ( .A1(tx_shift[8]), .A2(n24), .Y(n11) );
  OR4X1_LVT U177 ( .A1(n28), .A2(n29), .A3(n30), .A4(n31), .Y(n27) );
  OR4X1_LVT U178 ( .A1(baud_cnt[13]), .A2(baud_cnt[14]), .A3(baud_cnt[15]), 
        .A4(baud_cnt[1]), .Y(n156) );
  OR4X1_LVT U180 ( .A1(baud_cnt[2]), .A2(baud_cnt[3]), .A3(baud_cnt[6]), .A4(
        baud_cnt[9]), .Y(n155) );
  OR4X1_LVT U181 ( .A1(n12), .A2(baud_cnt[10]), .A3(baud_cnt[11]), .A4(
        baud_cnt[12]), .Y(n153) );
  OR4X1_LVT U182 ( .A1(n115), .A2(n116), .A3(n117), .A4(n118), .Y(n113) );
  OR4X1_LVT U183 ( .A1(n104), .A2(n105), .A3(n106), .A4(n107), .Y(n103) );
  OR4X1_LVT U184 ( .A1(n94), .A2(n95), .A3(n96), .A4(n97), .Y(n93) );
  OR4X1_LVT U185 ( .A1(n84), .A2(n85), .A3(n86), .A4(n87), .Y(n83) );
  OR4X1_LVT U186 ( .A1(n74), .A2(n75), .A3(n76), .A4(n77), .Y(n73) );
  OR4X1_LVT U187 ( .A1(n64), .A2(n65), .A3(n66), .A4(n67), .Y(n63) );
  OR4X1_LVT U188 ( .A1(n54), .A2(n55), .A3(n56), .A4(n57), .Y(n53) );
  NAND2X0_RVT U189 ( .A1(n145), .A2(n9), .Y(n14) );
  XOR2X1_HVT U190 ( .A1(\add_67/carry[4] ), .A2(byte_index[4]), .Y(N51) );
endmodule


module Test1 ( CLOCK_50, UART0_RX, UART0_TX, SPI_MOSI, CS, SPI_MISO, SPI_SCLK, 
        SPI_RST, LED, SW, KEY );
  output [3:0] CS;
  output [9:0] LED;
  input [4:0] SW;
  input [4:0] KEY;
  input CLOCK_50, UART0_RX, SPI_MISO;
  output UART0_TX, SPI_MOSI, SPI_SCLK, SPI_RST;
  wire   n2;
  wire   [31:0] UID;

  rc522_read_block RC522_read_block ( .clk(CLOCK_50), .rst_n(n2), .miso(
        SPI_MISO), .sclk(SPI_SCLK), .mosi(SPI_MOSI), .cs_n(CS[0]), .rst(
        SPI_RST), .card_OK(LED[1]), .block_addr({1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b0, 1'b0}), .UID(UID), .KeyA({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .LED(LED[9:2]) );
  UART_RX uart_receiver ( .clk(CLOCK_50), .rst(n2), .rx(UART0_RX) );
  UART_TX uart_transmitter ( .clk(CLOCK_50), .rst(n2), .btn_send(LED[1]), 
        .data({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, UID}), .tx(UART0_TX) );
  INVX1_LVT U4 ( .A(KEY[0]), .Y(n2) );
endmodule

