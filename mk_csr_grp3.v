//
// Generated by Bluespec Compiler, version 2022.01-5-ge3edf4b1 (build e3edf4b1)
//
// On Fri Apr 15 12:46:44 EDT 2022
//
//
// Ports:
// Name                         I/O  size props
// RDY_ma_core_req                O     1
// mv_core_resp                   O    65 reg
// RDY_mv_core_resp               O     1 const
// mav_fwd_req                    O    80 reg
// RDY_mav_fwd_req                O     1 reg
// mv_mcounteren                  O    32 reg
// mv_mcountinhibit_grp4          O     7 reg
// mv_mhpminterrupten_grp4        O     7 reg
// mv_mcountinhibit_grp5          O     7 reg
// mv_mhpminterrupten_grp5        O     7 reg
// mv_mcountinhibit_grp6          O     7 reg
// mv_mhpminterrupten_grp6        O     7 reg
// mv_mcountinhibit_grp7          O     8 reg
// mv_mhpminterrupten_grp7        O     8 reg
// RDY_ma_clint_mtime             O     1 const
// RDY_ma_incr_minstret           O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// ma_core_req_req                I    80
// ma_clint_mtime_c_mtime         I    64 reg
// ma_upd_privilege_prv           I     2 unused
// EN_ma_core_req                 I     1
// EN_ma_clint_mtime              I     1
// EN_ma_incr_minstret            I     1
// EN_mav_fwd_req                 I     1
//
// Combinational paths from inputs to outputs:
//   EN_mav_fwd_req -> RDY_ma_core_req
//
//
// module : implementing read and write methods for group - 3 csrs and related side band            access
//
// Comments on the inlined module `wr_prv':
//   reg : store the information on curent privilege level
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mk_csr_grp3(CLK,
		   RST_N,

		   ma_core_req_req,
		   EN_ma_core_req,
		   RDY_ma_core_req,

		   mv_core_resp,
		   RDY_mv_core_resp,

		   EN_mav_fwd_req,
		   mav_fwd_req,
		   RDY_mav_fwd_req,

		   mv_mcounteren,

		   mv_mcountinhibit_grp4,

		   mv_mhpminterrupten_grp4,

		   mv_mcountinhibit_grp5,

		   mv_mhpminterrupten_grp5,

		   mv_mcountinhibit_grp6,

		   mv_mhpminterrupten_grp6,

		   mv_mcountinhibit_grp7,

		   mv_mhpminterrupten_grp7,

		   ma_clint_mtime_c_mtime,
		   EN_ma_clint_mtime,
		   RDY_ma_clint_mtime,

		   EN_ma_incr_minstret,
		   RDY_ma_incr_minstret,

		   ma_upd_privilege_prv);
  input  CLK;
  input  RST_N;

  // action method ma_core_req
  input  [79 : 0] ma_core_req_req;
  input  EN_ma_core_req;
  output RDY_ma_core_req;

  // value method mv_core_resp
  output [64 : 0] mv_core_resp;
  output RDY_mv_core_resp;

  // actionvalue method mav_fwd_req
  input  EN_mav_fwd_req;
  output [79 : 0] mav_fwd_req;
  output RDY_mav_fwd_req;

  // value method mv_mcounteren
  output [31 : 0] mv_mcounteren;

  // value method mv_mcountinhibit_grp4
  output [6 : 0] mv_mcountinhibit_grp4;

  // value method mv_mhpminterrupten_grp4
  output [6 : 0] mv_mhpminterrupten_grp4;

  // value method mv_mcountinhibit_grp5
  output [6 : 0] mv_mcountinhibit_grp5;

  // value method mv_mhpminterrupten_grp5
  output [6 : 0] mv_mhpminterrupten_grp5;

  // value method mv_mcountinhibit_grp6
  output [6 : 0] mv_mcountinhibit_grp6;

  // value method mv_mhpminterrupten_grp6
  output [6 : 0] mv_mhpminterrupten_grp6;

  // value method mv_mcountinhibit_grp7
  output [7 : 0] mv_mcountinhibit_grp7;

  // value method mv_mhpminterrupten_grp7
  output [7 : 0] mv_mhpminterrupten_grp7;

  // action method ma_clint_mtime
  input  [63 : 0] ma_clint_mtime_c_mtime;
  input  EN_ma_clint_mtime;
  output RDY_ma_clint_mtime;

  // action method ma_incr_minstret
  input  EN_ma_incr_minstret;
  output RDY_ma_incr_minstret;

  // action method ma_upd_privilege
  input  [1 : 0] ma_upd_privilege_prv;

  // signals for module outputs
  wire [79 : 0] mav_fwd_req;
  wire [64 : 0] mv_core_resp;
  wire [31 : 0] mv_mcounteren;
  wire [7 : 0] mv_mcountinhibit_grp7, mv_mhpminterrupten_grp7;
  wire [6 : 0] mv_mcountinhibit_grp4,
	       mv_mcountinhibit_grp5,
	       mv_mcountinhibit_grp6,
	       mv_mhpminterrupten_grp4,
	       mv_mhpminterrupten_grp5,
	       mv_mhpminterrupten_grp6;
  wire RDY_ma_clint_mtime,
       RDY_ma_core_req,
       RDY_ma_incr_minstret,
       RDY_mav_fwd_req,
       RDY_mv_core_resp;

  // inlined wires
  reg [64 : 0] rg_resp_to_core_1_wget;
  wire [129 : 0] csr_op_arg_wget;
  wire rg_resp_to_core_1_whas;

  // register rg_clint_mtime
  // reg : regsiter to store the timer value, updated by the core on sideband access
  reg [63 : 0] rg_clint_mtime;
  wire [63 : 0] rg_clint_mtime_D_IN;
  wire rg_clint_mtime_EN;

  // register rg_cy
  // reg : this register controls wether cycle-counters should increment or not,	           part of mcountinhibit register
  reg rg_cy;
  wire rg_cy_D_IN, rg_cy_EN;

  // register rg_hpm_enabler
  // reg : hpm_enabler controls which registers should increment, part of mcountinhibit 	           register
  reg [28 : 0] rg_hpm_enabler;
  wire [28 : 0] rg_hpm_enabler_D_IN;
  wire rg_hpm_enabler_EN;

  // register rg_ir
  // reg : this register control wether the instruction counter should increment or not,	           part of mcountinhibit register
  reg rg_ir;
  wire rg_ir_D_IN, rg_ir_EN;

  // register rg_mcounteren
  // reg : Machine COUNTER ENable, controls availibility of performance monitors to next 		         lowest privilege level
  reg [31 : 0] rg_mcounteren;
  wire [31 : 0] rg_mcounteren_D_IN;
  wire rg_mcounteren_EN;

  // register rg_mcycle
  // reg : Macine Cycle, increments its value every cycle
  reg [63 : 0] rg_mcycle;
  wire [63 : 0] rg_mcycle_D_IN;
  wire rg_mcycle_EN;

  // register rg_mhpminterrupten
  reg [31 : 0] rg_mhpminterrupten;
  wire [31 : 0] rg_mhpminterrupten_D_IN;
  wire rg_mhpminterrupten_EN;

  // register rg_minstret
  // reg : Macine INSTruction RETired, counts the total number of instructions retired by 	           hart
  reg [63 : 0] rg_minstret;
  wire [63 : 0] rg_minstret_D_IN;
  wire rg_minstret_EN;

  // register rg_resp_to_core
  // reg : register to hold the response of this group for a csr operation request
  reg [64 : 0] rg_resp_to_core;
  wire [64 : 0] rg_resp_to_core_D_IN;
  wire rg_resp_to_core_EN;

  // ports of submodule ff_fwd_request
  wire [79 : 0] ff_fwd_request_D_IN, ff_fwd_request_D_OUT;
  wire ff_fwd_request_CLR,
       ff_fwd_request_DEQ,
       ff_fwd_request_EMPTY_N,
       ff_fwd_request_ENQ,
       ff_fwd_request_FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_increment_cycle_counter,
       CAN_FIRE_RL_rg_resp_to_core__dreg_update,
       CAN_FIRE_ma_clint_mtime,
       CAN_FIRE_ma_core_req,
       CAN_FIRE_ma_incr_minstret,
       CAN_FIRE_ma_upd_privilege,
       CAN_FIRE_mav_fwd_req,
       WILL_FIRE_RL_increment_cycle_counter,
       WILL_FIRE_RL_rg_resp_to_core__dreg_update,
       WILL_FIRE_ma_clint_mtime,
       WILL_FIRE_ma_core_req,
       WILL_FIRE_ma_incr_minstret,
       WILL_FIRE_ma_upd_privilege,
       WILL_FIRE_mav_fwd_req;

  // inputs to muxes for submodule ports
  wire [63 : 0] MUX_rg_mcycle_write_1__VAL_2, MUX_rg_minstret_write_1__VAL_1;
  wire MUX_rg_mcycle_write_1__SEL_1, MUX_rg_minstret_write_1__SEL_1;

  // remaining internal signals
  reg [63 : 0] CASE_ma_core_req_req_BITS_79_TO_68_0xB00_rg_mc_ETC__q3,
	       CASE_ma_core_req_req_BITS_79_TO_68_0xC00_rg_mc_ETC__q1,
	       v__h1265;
  reg [31 : 0] CASE_ma_core_req_req_BITS_79_TO_68_0x306_rg_mc_ETC__q2;
  wire [63 : 0] x__h2525, x_wget_fst__h1381, x_wget_snd_fst__h1466;
  wire [31 : 0] x__h1187;
  wire [30 : 0] r1__read__h1200;
  wire [29 : 0] r1__read__h1202;
  wire [1 : 0] x_wget_snd_snd__h1467;

  // action method ma_core_req
  assign RDY_ma_core_req = ff_fwd_request_FULL_N ;
  assign CAN_FIRE_ma_core_req = ff_fwd_request_FULL_N ;
  assign WILL_FIRE_ma_core_req = EN_ma_core_req ;

  // value method mv_core_resp
  assign mv_core_resp = rg_resp_to_core ;
  assign RDY_mv_core_resp = 1'd1 ;

  // actionvalue method mav_fwd_req
  assign mav_fwd_req = ff_fwd_request_D_OUT ;
  assign RDY_mav_fwd_req = ff_fwd_request_EMPTY_N ;
  assign CAN_FIRE_mav_fwd_req = ff_fwd_request_EMPTY_N ;
  assign WILL_FIRE_mav_fwd_req = EN_mav_fwd_req ;

  // value method mv_mcounteren
  assign mv_mcounteren = rg_mcounteren ;

  // value method mv_mcountinhibit_grp4
  assign mv_mcountinhibit_grp4 = rg_hpm_enabler[6:0] ;

  // value method mv_mhpminterrupten_grp4
  assign mv_mhpminterrupten_grp4 = rg_mhpminterrupten[9:3] ;

  // value method mv_mcountinhibit_grp5
  assign mv_mcountinhibit_grp5 = rg_hpm_enabler[13:7] ;

  // value method mv_mhpminterrupten_grp5
  assign mv_mhpminterrupten_grp5 = rg_mhpminterrupten[16:10] ;

  // value method mv_mcountinhibit_grp6
  assign mv_mcountinhibit_grp6 = rg_hpm_enabler[20:14] ;

  // value method mv_mhpminterrupten_grp6
  assign mv_mhpminterrupten_grp6 = rg_mhpminterrupten[23:17] ;

  // value method mv_mcountinhibit_grp7
  assign mv_mcountinhibit_grp7 = rg_hpm_enabler[28:21] ;

  // value method mv_mhpminterrupten_grp7
  assign mv_mhpminterrupten_grp7 = rg_mhpminterrupten[31:24] ;

  // action method ma_clint_mtime
  assign RDY_ma_clint_mtime = 1'd1 ;
  assign CAN_FIRE_ma_clint_mtime = 1'd1 ;
  assign WILL_FIRE_ma_clint_mtime = EN_ma_clint_mtime ;

  // action method ma_incr_minstret
  assign RDY_ma_incr_minstret = 1'd1 ;
  assign CAN_FIRE_ma_incr_minstret = 1'd1 ;
  assign WILL_FIRE_ma_incr_minstret = EN_ma_incr_minstret ;

  // action method ma_upd_privilege
  assign CAN_FIRE_ma_upd_privilege = 1'd1 ;
  assign WILL_FIRE_ma_upd_privilege = 1'd1 ;

  // submodule ff_fwd_request
  // fifo : fifo to forward the core - request to the next group on a miss in the                      current group
  FIFOL1 #(.width(32'd80)) ff_fwd_request(.RST(RST_N),
					  .CLK(CLK),
					  .D_IN(ff_fwd_request_D_IN),
					  .ENQ(ff_fwd_request_ENQ),
					  .DEQ(ff_fwd_request_DEQ),
					  .CLR(ff_fwd_request_CLR),
					  .D_OUT(ff_fwd_request_D_OUT),
					  .FULL_N(ff_fwd_request_FULL_N),
					  .EMPTY_N(ff_fwd_request_EMPTY_N));

  // rule RL_increment_cycle_counter
  //   rule : the rule increments the cycle counter
  assign CAN_FIRE_RL_increment_cycle_counter = 1'd1 ;
  assign WILL_FIRE_RL_increment_cycle_counter = !EN_ma_core_req ;

  // rule RL_rg_resp_to_core__dreg_update
  assign CAN_FIRE_RL_rg_resp_to_core__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_rg_resp_to_core__dreg_update = 1'd1 ;

  // inputs to muxes for submodule ports
  assign MUX_rg_mcycle_write_1__SEL_1 =
	     EN_ma_core_req && ma_core_req_req[79:68] == 12'hB00 ;
  assign MUX_rg_minstret_write_1__SEL_1 = EN_ma_incr_minstret && !rg_ir ;
  assign MUX_rg_mcycle_write_1__VAL_2 = rg_mcycle + 64'd1 ;
  assign MUX_rg_minstret_write_1__VAL_1 = rg_minstret + 64'd1 ;

  // inlined wires
  always@(ma_core_req_req or
	  CASE_ma_core_req_req_BITS_79_TO_68_0xC00_rg_mc_ETC__q1 or
	  rg_mcounteren or
	  x__h1187 or rg_mhpminterrupten or rg_mcycle or rg_minstret)
  begin
    case (ma_core_req_req[79:68])
      12'h306: rg_resp_to_core_1_wget = { 33'h100000000, rg_mcounteren };
      12'h320: rg_resp_to_core_1_wget = { 33'h100000000, x__h1187 };
      12'h7C2: rg_resp_to_core_1_wget = { 33'h100000000, rg_mhpminterrupten };
      12'hB00: rg_resp_to_core_1_wget = { 1'd1, rg_mcycle };
      12'hB02: rg_resp_to_core_1_wget = { 1'd1, rg_minstret };
      12'hF11, 12'hF12, 12'hF13, 12'hF14:
	  rg_resp_to_core_1_wget = 65'h10000000000000000;
      default: rg_resp_to_core_1_wget =
		   { 1'd1,
		     CASE_ma_core_req_req_BITS_79_TO_68_0xC00_rg_mc_ETC__q1 };
    endcase
  end
  assign rg_resp_to_core_1_whas =
	     EN_ma_core_req &&
	     (ma_core_req_req[79:68] == 12'hF11 ||
	      ma_core_req_req[79:68] == 12'hF12 ||
	      ma_core_req_req[79:68] == 12'hF13 ||
	      ma_core_req_req[79:68] == 12'hF14 ||
	      ma_core_req_req[79:68] == 12'hB00 ||
	      ma_core_req_req[79:68] == 12'hB02 ||
	      ma_core_req_req[79:68] == 12'h306 ||
	      ma_core_req_req[79:68] == 12'h320 ||
	      ma_core_req_req[79:68] == 12'h7C2 ||
	      ma_core_req_req[79:68] == 12'hC00 ||
	      ma_core_req_req[79:68] == 12'hC01 ||
	      ma_core_req_req[79:68] == 12'hC02) ;
  assign csr_op_arg_wget =
	     { ma_core_req_req[67:4],
	       CASE_ma_core_req_req_BITS_79_TO_68_0xB00_rg_mc_ETC__q3,
	       ma_core_req_req[3:2] } ;

  // register rg_clint_mtime
  assign rg_clint_mtime_D_IN = ma_clint_mtime_c_mtime ;
  assign rg_clint_mtime_EN = EN_ma_clint_mtime ;

  // register rg_cy
  assign rg_cy_D_IN = v__h1265[0] ;
  assign rg_cy_EN = EN_ma_core_req && ma_core_req_req[79:68] == 12'h320 ;

  // register rg_hpm_enabler
  assign rg_hpm_enabler_D_IN = v__h1265[31:3] ;
  assign rg_hpm_enabler_EN =
	     EN_ma_core_req && ma_core_req_req[79:68] == 12'h320 ;

  // register rg_ir
  assign rg_ir_D_IN = v__h1265[2] ;
  assign rg_ir_EN = EN_ma_core_req && ma_core_req_req[79:68] == 12'h320 ;

  // register rg_mcounteren
  assign rg_mcounteren_D_IN = v__h1265[31:0] ;
  assign rg_mcounteren_EN =
	     EN_ma_core_req && ma_core_req_req[79:68] == 12'h306 ;

  // register rg_mcycle
  assign rg_mcycle_D_IN =
	     MUX_rg_mcycle_write_1__SEL_1 ?
	       v__h1265 :
	       MUX_rg_mcycle_write_1__VAL_2 ;
  assign rg_mcycle_EN =
	     EN_ma_core_req && ma_core_req_req[79:68] == 12'hB00 ||
	     WILL_FIRE_RL_increment_cycle_counter && !rg_cy ;

  // register rg_mhpminterrupten
  assign rg_mhpminterrupten_D_IN = v__h1265[31:0] ;
  assign rg_mhpminterrupten_EN =
	     EN_ma_core_req && ma_core_req_req[79:68] == 12'h7C2 ;

  // register rg_minstret
  assign rg_minstret_D_IN =
	     MUX_rg_minstret_write_1__SEL_1 ?
	       MUX_rg_minstret_write_1__VAL_1 :
	       v__h1265 ;
  assign rg_minstret_EN =
	     EN_ma_core_req && ma_core_req_req[79:68] == 12'hB02 ||
	     EN_ma_incr_minstret && !rg_ir ;

  // register rg_resp_to_core
  assign rg_resp_to_core_D_IN =
	     rg_resp_to_core_1_whas ? rg_resp_to_core_1_wget : 65'd0 ;
  assign rg_resp_to_core_EN = 1'd1 ;

  // submodule ff_fwd_request
  assign ff_fwd_request_D_IN = ma_core_req_req ;
  assign ff_fwd_request_ENQ =
	     EN_ma_core_req && ma_core_req_req[79:68] != 12'hF11 &&
	     ma_core_req_req[79:68] != 12'hF12 &&
	     ma_core_req_req[79:68] != 12'hF13 &&
	     ma_core_req_req[79:68] != 12'hF14 &&
	     ma_core_req_req[79:68] != 12'hB00 &&
	     ma_core_req_req[79:68] != 12'hB02 &&
	     ma_core_req_req[79:68] != 12'h306 &&
	     ma_core_req_req[79:68] != 12'h320 &&
	     ma_core_req_req[79:68] != 12'h7C2 &&
	     ma_core_req_req[79:68] != 12'hC00 &&
	     ma_core_req_req[79:68] != 12'hC01 &&
	     ma_core_req_req[79:68] != 12'hC02 ;
  assign ff_fwd_request_DEQ = EN_mav_fwd_req ;
  assign ff_fwd_request_CLR = 1'b0 ;

  // remaining internal signals
  module_fn_csr_op instance_fn_csr_op_0(.fn_csr_op_writedata(x_wget_fst__h1381),
					.fn_csr_op_readdata(x_wget_snd_fst__h1466),
					.fn_csr_op_op(x_wget_snd_snd__h1467),
					.fn_csr_op(x__h2525));
  assign r1__read__h1200 = { r1__read__h1202, 1'd0 } ;
  assign r1__read__h1202 = { rg_hpm_enabler, rg_ir } ;
  assign x__h1187 = { r1__read__h1200, rg_cy } ;
  assign x_wget_fst__h1381 = csr_op_arg_wget[129:66] ;
  assign x_wget_snd_fst__h1466 = csr_op_arg_wget[65:2] ;
  assign x_wget_snd_snd__h1467 = csr_op_arg_wget[1:0] ;
  always@(ma_core_req_req or rg_minstret or rg_mcycle or rg_clint_mtime)
  begin
    case (ma_core_req_req[79:68])
      12'hC00:
	  CASE_ma_core_req_req_BITS_79_TO_68_0xC00_rg_mc_ETC__q1 = rg_mcycle;
      12'hC01:
	  CASE_ma_core_req_req_BITS_79_TO_68_0xC00_rg_mc_ETC__q1 =
	      rg_clint_mtime;
      default: CASE_ma_core_req_req_BITS_79_TO_68_0xC00_rg_mc_ETC__q1 =
		   rg_minstret;
    endcase
  end
  always@(ma_core_req_req or rg_mhpminterrupten or rg_mcounteren or x__h1187)
  begin
    case (ma_core_req_req[79:68])
      12'h306:
	  CASE_ma_core_req_req_BITS_79_TO_68_0x306_rg_mc_ETC__q2 =
	      rg_mcounteren;
      12'h320:
	  CASE_ma_core_req_req_BITS_79_TO_68_0x306_rg_mc_ETC__q2 = x__h1187;
      default: CASE_ma_core_req_req_BITS_79_TO_68_0x306_rg_mc_ETC__q2 =
		   rg_mhpminterrupten;
    endcase
  end
  always@(ma_core_req_req or
	  CASE_ma_core_req_req_BITS_79_TO_68_0x306_rg_mc_ETC__q2 or
	  rg_mcycle or rg_minstret)
  begin
    case (ma_core_req_req[79:68])
      12'hB00:
	  CASE_ma_core_req_req_BITS_79_TO_68_0xB00_rg_mc_ETC__q3 = rg_mcycle;
      12'hB02:
	  CASE_ma_core_req_req_BITS_79_TO_68_0xB00_rg_mc_ETC__q3 =
	      rg_minstret;
      default: CASE_ma_core_req_req_BITS_79_TO_68_0xB00_rg_mc_ETC__q3 =
		   { 32'd0,
		     CASE_ma_core_req_req_BITS_79_TO_68_0x306_rg_mc_ETC__q2 };
    endcase
  end
  always@(ma_core_req_req or x__h2525)
  begin
    case (ma_core_req_req[79:68])
      12'h306, 12'hB00, 12'hB02: v__h1265 = x__h2525;
      default: v__h1265 = x__h2525;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_clint_mtime <= `BSV_ASSIGNMENT_DELAY 64'd0;
	rg_cy <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_hpm_enabler <= `BSV_ASSIGNMENT_DELAY 29'd0;
	rg_ir <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_mcounteren <= `BSV_ASSIGNMENT_DELAY 32'd0;
	rg_mcycle <= `BSV_ASSIGNMENT_DELAY 64'd0;
	rg_mhpminterrupten <= `BSV_ASSIGNMENT_DELAY 32'd0;
	rg_minstret <= `BSV_ASSIGNMENT_DELAY 64'd0;
	rg_resp_to_core <= `BSV_ASSIGNMENT_DELAY 65'd0;
      end
    else
      begin
        if (rg_clint_mtime_EN)
	  rg_clint_mtime <= `BSV_ASSIGNMENT_DELAY rg_clint_mtime_D_IN;
	if (rg_cy_EN) rg_cy <= `BSV_ASSIGNMENT_DELAY rg_cy_D_IN;
	if (rg_hpm_enabler_EN)
	  rg_hpm_enabler <= `BSV_ASSIGNMENT_DELAY rg_hpm_enabler_D_IN;
	if (rg_ir_EN) rg_ir <= `BSV_ASSIGNMENT_DELAY rg_ir_D_IN;
	if (rg_mcounteren_EN)
	  rg_mcounteren <= `BSV_ASSIGNMENT_DELAY rg_mcounteren_D_IN;
	if (rg_mcycle_EN) rg_mcycle <= `BSV_ASSIGNMENT_DELAY rg_mcycle_D_IN;
	if (rg_mhpminterrupten_EN)
	  rg_mhpminterrupten <= `BSV_ASSIGNMENT_DELAY rg_mhpminterrupten_D_IN;
	if (rg_minstret_EN)
	  rg_minstret <= `BSV_ASSIGNMENT_DELAY rg_minstret_D_IN;
	if (rg_resp_to_core_EN)
	  rg_resp_to_core <= `BSV_ASSIGNMENT_DELAY rg_resp_to_core_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_clint_mtime = 64'hAAAAAAAAAAAAAAAA;
    rg_cy = 1'h0;
    rg_hpm_enabler = 29'h0AAAAAAA;
    rg_ir = 1'h0;
    rg_mcounteren = 32'hAAAAAAAA;
    rg_mcycle = 64'hAAAAAAAAAAAAAAAA;
    rg_mhpminterrupten = 32'hAAAAAAAA;
    rg_minstret = 64'hAAAAAAAAAAAAAAAA;
    rg_resp_to_core = 65'h0AAAAAAAAAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mk_csr_grp3

