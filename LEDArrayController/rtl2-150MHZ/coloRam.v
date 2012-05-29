module coloRam (Address, DataIN, DataOUT, WE);

parameter AddressSize = 8; // Need addresses for 3 colors per LED
parameter WordSize = 24;		// 8 Bits per color

input [AddressSize-1:0] Address;
input [WordSize-1:0] DataIN;
output [WordSize-1:0] DataOUT;
input WE;

reg [WordSize-1:0] Mem [0:1<<AddressSize];

assign DataOUT = (!WE) ? Mem[Address] : {WordSize{1'bz}};

always @(WE)
  if (WE)
    Mem[Address] = DataIN;
	 
endmodule