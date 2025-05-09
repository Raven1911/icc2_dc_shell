/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : T-2022.03-SP4
// Date      : Tue May  6 10:28:19 2025
/////////////////////////////////////////////////////////////


module Test1 ( CLOCK_50, UART0_RX, UART0_TX, SPI_MOSI, CS, SPI_MISO, SPI_SCLK, 
        LED, SW, KEY );
  output [3:0] CS;
  output [9:0] LED;
  input [4:0] SW;
  input [4:0] KEY;
  input CLOCK_50, UART0_RX, SPI_MISO;
  output UART0_TX, SPI_MOSI, SPI_SCLK;

  tri   \*Logic1* ;
  tri   \*Logic0* ;
  tri   CLOCK_50;
  tri   UART0_RX;
  tri   UART0_TX;
  tri   SPI_MOSI;
  tri   [0:0] CS;
  tri   SPI_MISO;
  tri   SPI_SCLK;
  tri   [9:1] LED;
  tri   [0:0] SW;
  tri   _0_net_;
  tri   SPI_RST;
  tri   [31:0] UID;
  tri   [127:0] DataSPI;
  tri   read_block_ok;
  tri   [127:0] Data;
  tri   _1_net_;
  tri   [127:0] cipherText;
  tri   AES_Flag;

  rc522_read_block RC522_read_block ( .clk(CLOCK_50), .rst_n(_0_net_), .miso(
        SPI_MISO), .sclk(SPI_SCLK), .mosi(SPI_MOSI), .cs_n(CS[0]), .rst(
        SPI_RST), .card_OK(LED[1]), .block_addr({1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b0, 1'b0}), .UID(UID), .KeyA({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .block_data(DataSPI), 
        .read_block_OK(read_block_ok), .LED(LED[9:2]) );
  UART_RX uart_receiver ( .clk(CLOCK_50), .rx(UART0_RX), .Data(Data) );
  UART_TX uart_transmitter ( .clk(CLOCK_50), .btn_send(LED[1]), .data(UID), 
        .tx(UART0_TX) );
  AES_Security AES ( .clk(CLOCK_50), .rst(_1_net_), .start(LED[1]), .select(
        SW[0]), .in(UID), .key({1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1}), .out(cipherText), .done(AES_Flag) );
  GTECH_NOT I_0 ( .A(KEY[0]), .Z(_0_net_) );
  GTECH_NOT I_1 ( .A(KEY[0]), .Z(_1_net_) );
endmodule

