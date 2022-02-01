
`timescale 1 ns / 1 ps

/*@Deprecated (简陋)
module axis_v_shift_template
#(
	parameter BITS = 8,
	parameter DELAY = 2
)
(
	//Clock & Reset
	input aclk,
	input aresetn,

	//AXIS Input logic
	input [BITS-1:0] s_axis_tdata,
	input            s_axis_tvalid,
	output           s_axis_tready,
	input            s_axis_tlast, //EOF(End Of Line)
	input            s_axis_tuser, //fsync or SOF(Start Of Frame)

	//AXIS Output logic
	output [BITS-1:0] m_axis_tdata,
	output            m_axis_tvalid,
	input             m_axis_tready,
	output            m_axis_tlast, //EOF(End Of Line)
	output            m_axis_tuser //fsync or SOF(Start Of Frame)
);

	reg [BITS-1:0]  tdata_buf[DELAY-1:0];
	reg [DELAY-1:0] tlast_buf, tuser_buf;
	assign m_axis_tdata = tdata_buf[DELAY-1];
	assign m_axis_tvalid = s_axis_tvalid;
	assign s_axis_tready = m_axis_tready;
	assign m_axis_tlast = tlast_buf[DELAY-1];
	assign m_axis_tuser = tuser_buf[DELAY-1];
	
	integer i;
	always @ (posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
			tlast_buf <= 0;
			tuser_buf <= 0;
			for (i = 0; i < DELAY; i = i + 1'b1) begin
				tdata_buf[i] <= 0;
			end
		end else if (s_axis_tvalid & m_axis_tready) begin
			tlast_buf <= {tlast_buf[DELAY-2:0], s_axis_tlast};
			tuser_buf <= {tuser_buf[DELAY-2:0], s_axis_tuser};
			tdata_buf[0] <= s_axis_tdata;
			for (i = 1; i < DELAY; i = i + 1'b1) begin
				tdata_buf[i] <= tdata_buf[i-1];
			end
		end
	end
endmodule
*/

module axis_v_shift_template
#(
	parameter BITS = 8
)
(
	//Clock & Reset
	input aclk,
	input aresetn,

	//Parameters
	input [11:0] max_y_index, //height-1

	//AXIS Input logic
	input [BITS-1:0] s_axis_tdata,
	input            s_axis_tvalid,
	output           s_axis_tready,
	input            s_axis_tlast, //EOL(EndOfLine)
	input            s_axis_tuser, //SOF(StartOfFrame)

	//AXIS Output logic
	output [BITS-1:0] m_axis_tdata,
	output            m_axis_tvalid,
	input             m_axis_tready,
	output            m_axis_tlast, //EOL(EndOfLine)
	output            m_axis_tuser  //SOF(StartOfFrame)
);

	wire shift_enable, shift_in_valid;
	wire [11:0] shift_x_index, shift_y_index;

	localparam SHIFT_DELAY = 5;
	axis_v_shift_helper
		#(
			.SHIFT_DELAY(SHIFT_DELAY)
		)
		shift_helper
		(
			.aclk           (aclk),
			.aresetn        (aresetn),
			.max_y_index    (max_y_index),
			.s_axis_tvalid  (s_axis_tvalid),
			.s_axis_tready  (s_axis_tready),
			.s_axis_tlast   (s_axis_tlast),
			.s_axis_tuser   (s_axis_tuser),
			.m_axis_tvalid  (m_axis_tvalid),
			.m_axis_tready  (m_axis_tready),
			.m_axis_tlast   (m_axis_tlast),
			.m_axis_tuser   (m_axis_tuser),
			.shift_enable   (shift_enable),
			.shift_in_valid (shift_in_valid),
			.shift_x_index  (shift_x_index),
			.shift_y_index  (shift_y_index)
		);

	reg [BITS-1:0] tdata_buf [SHIFT_DELAY-1:0];
	assign m_axis_tdata = tdata_buf[SHIFT_DELAY-1];

	integer i;
	always @ (posedge aclk or negedge aresetn) begin
		if (!aresetn) begin
			for (i = 0; i < SHIFT_DELAY; i = i + 1) begin
				tdata_buf[i] <= 0;
			end
		end else if (shift_enable) begin
			for (i = 1; i < SHIFT_DELAY; i = i + 1) begin
				tdata_buf[i] <= tdata_buf[i-1];
			end
			if (shift_in_valid) begin
				tdata_buf[0] <= s_axis_tdata + shift_x_index;
			end else begin
				tdata_buf[0] <= 0;
			end
		end
	end
endmodule

module axis_v_shift_helper
#(
	parameter SHIFT_DELAY = 5 //range:[2,+)
)
(
	//Clock & Reset
	input aclk,
	input aresetn,
	
	//Parameters
	input [11:0] max_y_index, //height-1

	//AXIS Input logic
	input  s_axis_tvalid,
	output s_axis_tready,
	input  s_axis_tlast, //EOL(EndOfLine)
	input  s_axis_tuser, //SOF(StartOfFrame)

	//AXIS Output logic
	output m_axis_tvalid,
	input  m_axis_tready,
	output m_axis_tlast, //EOL(EndOfLine)
	output m_axis_tuser, //SOF(StartOfFrame)

	//Shift helper
	output        shift_enable,
	output        shift_in_valid,
	output [11:0] shift_x_index,
	output [11:0] shift_y_index
);

	reg [11:0] max_y_index_int;
	reg [11:0] shift_x_index_int;
	reg [11:0] shift_y_index_int;
	reg [SHIFT_DELAY-1:0] axis_tlast_buf, axis_tuser_buf;

	assign m_axis_tlast = axis_tlast_buf[SHIFT_DELAY-1];
	assign m_axis_tuser = axis_tuser_buf[SHIFT_DELAY-1];
	assign shift_x_index = shift_x_index_int;
	assign shift_y_index = shift_y_index_int;

	wire s_axis_eof = s_axis_tlast && (shift_y_index_int == max_y_index_int);
	wire m_axis_eof;

	axis_shift_helper
		#(
			.SHIFT_DELAY(SHIFT_DELAY)
		)
		shift_helper_inst
		(
			.aclk            (aclk),
			.aresetn         (aresetn),
			.s_axis_tvalid   (s_axis_tvalid),
			.s_axis_tready   (s_axis_tready),
			.s_axis_tlast    (s_axis_eof),
			.m_axis_tvalid   (m_axis_tvalid),
			.m_axis_tready   (m_axis_tready),
			.m_axis_tlast    (m_axis_eof),
			.shift_enable    (shift_enable),
			.shift_in_valid  (shift_in_valid)
		);

    always @ (posedge aclk or negedge aresetn) begin
		if (!aresetn) begin
			max_y_index_int <= 0;
			shift_x_index_int <= 0;
			shift_y_index_int <= 0;
			axis_tlast_buf <= 0;
			axis_tuser_buf <= 0;
		end else if (shift_enable) begin
			if (m_axis_eof) begin
				max_y_index_int <= 0;
				shift_x_index_int <= 0;
				shift_y_index_int <= 0;
				axis_tlast_buf <= 0;
				axis_tuser_buf <= 0;
			end else if (shift_in_valid) begin
                axis_tlast_buf <= {axis_tlast_buf[SHIFT_DELAY-2:0], s_axis_tlast};
				axis_tuser_buf <= {axis_tuser_buf[SHIFT_DELAY-2:0], s_axis_tuser};
				if (s_axis_tuser) begin
					max_y_index_int <= max_y_index;
					shift_x_index_int <= 1;
					shift_y_index_int <= 0;
				end else if (s_axis_tlast) begin
					max_y_index_int <= max_y_index_int;
					shift_x_index_int <= 0;
					shift_y_index_int <= shift_y_index_int + 1'b1;
				end else begin
					max_y_index_int <= max_y_index_int;
					shift_x_index_int <= shift_x_index_int + 1'b1;
					shift_y_index_int <= shift_y_index_int;
				end
			end else begin
				max_y_index_int <= max_y_index_int;
				shift_x_index_int <= 0;
				shift_y_index_int <= 0;
				axis_tlast_buf <= {axis_tlast_buf[SHIFT_DELAY-2:0], 1'b0};
				axis_tuser_buf <= {axis_tuser_buf[SHIFT_DELAY-2:0], 1'b0};
			end
		end else begin
			max_y_index_int <= max_y_index_int;
			shift_x_index_int <= shift_x_index_int;
			shift_y_index_int <= shift_y_index_int;
			axis_tlast_buf <= axis_tlast_buf;
			axis_tuser_buf <= axis_tuser_buf;
		end
	end

endmodule

module axis_shift_helper
#(
	parameter SHIFT_DELAY = 5 //range:[2,+)
)
(
	//Clock & Reset
	input aclk,
	input aresetn,

	//AXIS Input logic
	input  s_axis_tvalid,
	output s_axis_tready,
	input  s_axis_tlast,

	//AXIS Output logic
	output m_axis_tvalid,
	input  m_axis_tready,
	output m_axis_tlast,

	//Shift helper
	output shift_enable,
	output shift_in_valid
);

	localparam S_IDLE      = 5'b00001;
	localparam S_FILLING   = 5'b00010;
	localparam S_SHIFTING  = 5'b00100;
	localparam S_FLUSHING  = 5'b01000;
	localparam S_DONE      = 5'b10000;

	reg [4:0] current_state, next_state;
	reg [clogb2(SHIFT_DELAY)-1:0] shift_count;

    always @ (posedge aclk or negedge aresetn) begin
		if (!aresetn) begin
			current_state <= S_IDLE;
		end else begin
			current_state <= next_state;
		end
	end

	always @ (*) begin
		if (!aresetn) begin
			next_state = S_IDLE;
		end else begin
			case (current_state)
				S_IDLE: begin
					if (s_axis_tvalid) begin
						next_state = S_FILLING;
					end else begin
						next_state = S_IDLE;
					end
				end
				S_FILLING: begin
					if (s_axis_tvalid) begin
						if (s_axis_tlast) begin
							next_state = S_FLUSHING;
						end else if (shift_count + 1'b1 == SHIFT_DELAY) begin
							next_state = S_SHIFTING;
						end else begin
							next_state = S_FILLING;
						end
					end else begin
						next_state = S_FILLING;
					end
				end
				S_SHIFTING: begin
					if (s_axis_tvalid & m_axis_tready) begin
						if (s_axis_tlast) begin
							next_state = S_FLUSHING;
						end else begin
							next_state = S_SHIFTING;
						end
					end else begin
						next_state = S_SHIFTING;
					end
				end
				S_FLUSHING: begin
					if (m_axis_tready) begin
                        if (shift_count - 1'b1 == 1) begin
							next_state = S_DONE;
						end else begin
							next_state = S_FLUSHING;
						end
					end else begin
						next_state = S_FLUSHING;
					end
				end
				S_DONE: begin
					if (m_axis_tready) begin
						next_state = S_IDLE;
					end else begin
						next_state = S_DONE;
					end
				end
				default: begin
					next_state = S_IDLE;
				end
			endcase
		end
	end

    always @ (posedge aclk or negedge aresetn) begin
		if (!aresetn) begin
			shift_count <= 0;
		end else begin
			case (current_state)
				S_IDLE: begin
					shift_count <= 0;
				end
				S_FILLING: begin
					if (s_axis_tvalid) begin
						shift_count <= shift_count + 1'b1;
					end else begin
						shift_count <= shift_count;
					end
				end
				S_SHIFTING: begin
					shift_count <= shift_count;
				end
				S_FLUSHING: begin
					if (m_axis_tready) begin
						shift_count <= shift_count - 1'b1;
					end else begin
						shift_count <= shift_count;
					end
				end
				S_DONE: begin
					shift_count <= 0;
				end
				default: begin
					shift_count <= 0;
				end
			endcase
		end
	end

	reg s_axis_tready_int;
	reg m_axis_tvalid_int;
	reg m_axis_tlast_int;
	reg shift_enable_int;
	reg shift_in_valid_int;
	assign s_axis_tready  = s_axis_tready_int;
	assign m_axis_tvalid  = m_axis_tvalid_int;
	assign m_axis_tlast   = m_axis_tlast_int;
	assign shift_enable   = shift_enable_int;
	assign shift_in_valid = shift_in_valid_int;

	always @ (*) begin
		if (!aresetn) begin
			s_axis_tready_int  = 0;
			m_axis_tvalid_int  = 0;
			m_axis_tlast_int   = 0;
			shift_enable_int   = 0;
			shift_in_valid_int = 0;
		end else begin
			case (current_state)
				S_IDLE: begin
					s_axis_tready_int  = 0;
					m_axis_tvalid_int  = 0;
					m_axis_tlast_int   = 0;
					shift_enable_int   = 0;
					shift_in_valid_int = 0;
				end
				S_FILLING: begin
					s_axis_tready_int  = 1;
					m_axis_tvalid_int  = 0;
					m_axis_tlast_int   = 0;
					shift_enable_int   = s_axis_tvalid;
					shift_in_valid_int = s_axis_tvalid;
				end
				S_SHIFTING: begin
					s_axis_tready_int  = m_axis_tready;
					m_axis_tvalid_int  = s_axis_tvalid;
					m_axis_tlast_int   = 0;
					shift_enable_int   = m_axis_tready & s_axis_tvalid;
					shift_in_valid_int = m_axis_tready & s_axis_tvalid;
				end
				S_FLUSHING: begin
					s_axis_tready_int  = 0;
					m_axis_tvalid_int  = 1;
					m_axis_tlast_int   = 0;
					shift_enable_int   = m_axis_tready;
					shift_in_valid_int = 0;
				end
				S_DONE: begin
					s_axis_tready_int = 0;
					m_axis_tvalid_int = 1;
					m_axis_tlast_int  = 1;
					shift_enable_int   = m_axis_tready;
					shift_in_valid_int = 0;
				end
				default: begin
					s_axis_tready_int = 0;
					m_axis_tvalid_int = 0;
					m_axis_tlast_int  = 0;
					shift_enable_int   = 0;
					shift_in_valid_int = 0;
				end
			endcase
		end
	end

	function integer clogb2;
	input integer depth;
	begin
		for (clogb2 = 0; depth > 0; clogb2 = clogb2 + 1)
			depth = depth >> 1;
	end
	endfunction
endmodule
