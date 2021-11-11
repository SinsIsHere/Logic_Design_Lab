module Led7_Decoder_Module (enable, bcd_in, out_7seg);
	input enable;
	input [3:0] bcd_in;
	output reg [0:6] out_7seg;
	always @(enable, bcd_in) begin
		if (enable) begin
			case (bcd_in)
				0: out_7seg = 7'b0000001;
				1: out_7seg = 7'b1001111;
            2: out_7seg = 7'b0010010;
            3: out_7seg = 7'b0000110;
            4: out_7seg = 7'b1001100;
            5: out_7seg = 7'b0100100;
            6: out_7seg = 7'b0100000;
            7: out_7seg = 7'b0001111;
            8: out_7seg = 7'b0000000;
            9: out_7seg = 7'b0000100;
				default: out_7seg = 7'b1111111;
			endcase
		end else out_7seg = 7'b1111111;
	end
endmodule
