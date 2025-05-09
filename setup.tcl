set_host_options -max_cores 8
set dir [pwd]
set search_path $dir
set target_library "[glob $dir/db/saed32*.db]"
set link_path $target_library
set TOP_MODULE Test1
set DESIGN_PATH "./RC-main"
analyze -format verilog ./RC-main/UART_TX.v
analyze -format verilog ./RC-main/UART_RX.v
analyze -format verilog ./RC-main/rc522_read_block.v
analyze -format verilog ./RC-main/addRoundKey.v
analyze -format verilog ./RC-main/AES_Decrypt.v
analyze -format verilog ./RC-main/sbox.v
analyze -format verilog ./RC-main/AES_Encrypt.v
analyze -format verilog ./RC-main/AES_Security.v
analyze -format verilog ./RC-main/decryptRound.v
analyze -format verilog ./RC-main/encryptRound.v
analyze -format verilog ./RC-main/inverseMixColumns.v
analyze -format verilog ./RC-main/inverseSbox.v
analyze -format verilog ./RC-main/inverseShiftRows.v
analyze -format verilog ./RC-main/inverseSubBytes.v
analyze -format verilog ./RC-main/keyExpansion.v
analyze -format verilog ./RC-main/mixColumns.v
analyze -format verilog ./RC-main/shiftRows.v
analyze -format verilog ./RC-main/spi.v
analyze -format verilog ./RC-main/subBytes.v
elaborate $TOP_MODULE
source ./contraint.tcl
compile
report_qor > report_qor.txt
write -hierarchy -format verilog -output ./mapped.v
exit
