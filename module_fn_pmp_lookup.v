//
// Generated by Bluespec Compiler, version 2022.01-5-ge3edf4b1 (build e3edf4b1)
//
// On Fri Apr 15 12:47:13 EDT 2022
//
//
// Ports:
// Name                         I/O  size props
// fn_pmp_lookup                  O     7
// fn_pmp_lookup_req              I    34
// fn_pmp_lookup_priv             I     2
// fn_pmp_lookup_pmpcfg           I    32
// fn_pmp_lookup_pmpaddr          I   116
//
// Combinational paths from inputs to outputs:
//   (fn_pmp_lookup_req,
//    fn_pmp_lookup_priv,
//    fn_pmp_lookup_pmpcfg,
//    fn_pmp_lookup_pmpaddr) -> fn_pmp_lookup
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

module module_fn_pmp_lookup(fn_pmp_lookup_req,
			    fn_pmp_lookup_priv,
			    fn_pmp_lookup_pmpcfg,
			    fn_pmp_lookup_pmpaddr,
			    fn_pmp_lookup);
  // value method fn_pmp_lookup
  input  [33 : 0] fn_pmp_lookup_req;
  input  [1 : 0] fn_pmp_lookup_priv;
  input  [31 : 0] fn_pmp_lookup_pmpcfg;
  input  [115 : 0] fn_pmp_lookup_pmpaddr;
  output [6 : 0] fn_pmp_lookup;

  // signals for module outputs
  wire [6 : 0] fn_pmp_lookup;

  // remaining internal signals
  reg [5 : 0] x__h2109;
  wire [28 : 0] mask__h1117,
		mask__h1118,
		mask__h1326,
		mask__h1327,
		mask__h409,
		mask__h410,
		mask__h908,
		mask__h909,
		start_address__h1116,
		start_address__h1325,
		start_address__h408,
		start_address__h907,
		x__h1056,
		x__h1082,
		x__h1265,
		x__h1291,
		x__h1474,
		x__h1500,
		x__h847,
		x__h874,
		y__h1057,
		y__h1266,
		y__h1475,
		y__h848;
  wire IF_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pm_ETC___d166,
       IF_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pm_ETC___d168,
       NOT_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_p_ETC___d169,
       NOT_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_p_ETC___d46,
       NOT_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_p_ETC___d88,
       fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d19,
       fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d41,
       fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d64,
       fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d17,
       fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d39,
       fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d62,
       fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d99,
       x__h1076,
       x__h1285,
       x__h1494,
       x__h868;

  // value method fn_pmp_lookup
  assign fn_pmp_lookup =
	     { NOT_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_p_ETC___d169,
	       x__h2109 } ;

  // remaining internal signals
  assign IF_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pm_ETC___d166 =
	     (fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d17 ||
	      !fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d19 ||
	      fn_pmp_lookup_pmpcfg[4:3] == 2'd0) ?
	       (fn_pmp_lookup_pmpcfg[15] || fn_pmp_lookup_priv != 2'd3) &&
	       (fn_pmp_lookup_req[1:0] == 2'd0 && !fn_pmp_lookup_pmpcfg[8] ||
		fn_pmp_lookup_req[1:0] == 2'd1 && !fn_pmp_lookup_pmpcfg[9] ||
		fn_pmp_lookup_req[1:0] == 2'd2 && !fn_pmp_lookup_pmpcfg[10]) :
	       (fn_pmp_lookup_pmpcfg[7] || fn_pmp_lookup_priv != 2'd3) &&
	       (fn_pmp_lookup_req[1:0] == 2'd0 && !fn_pmp_lookup_pmpcfg[0] ||
		fn_pmp_lookup_req[1:0] == 2'd1 && !fn_pmp_lookup_pmpcfg[1] ||
		fn_pmp_lookup_req[1:0] == 2'd2 && !fn_pmp_lookup_pmpcfg[2]) ;
  assign IF_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pm_ETC___d168 =
	     (fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d99 &&
	      (fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d62 ||
	       !fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d64 ||
	       fn_pmp_lookup_pmpcfg[20:19] == 2'd0)) ?
	       (fn_pmp_lookup_pmpcfg[31] || fn_pmp_lookup_priv != 2'd3) &&
	       (fn_pmp_lookup_req[1:0] == 2'd0 && !fn_pmp_lookup_pmpcfg[24] ||
		fn_pmp_lookup_req[1:0] == 2'd1 && !fn_pmp_lookup_pmpcfg[25] ||
		fn_pmp_lookup_req[1:0] == 2'd2 && !fn_pmp_lookup_pmpcfg[26]) :
	       (fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d99 ?
		  (fn_pmp_lookup_pmpcfg[23] || fn_pmp_lookup_priv != 2'd3) &&
		  (fn_pmp_lookup_req[1:0] == 2'd0 &&
		   !fn_pmp_lookup_pmpcfg[16] ||
		   fn_pmp_lookup_req[1:0] == 2'd1 &&
		   !fn_pmp_lookup_pmpcfg[17] ||
		   fn_pmp_lookup_req[1:0] == 2'd2 &&
		   !fn_pmp_lookup_pmpcfg[18]) :
		  IF_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pm_ETC___d166) ;
  assign NOT_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_p_ETC___d169 =
	     (NOT_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_p_ETC___d46 ||
	      !fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d62 &&
	      fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d64 &&
	      fn_pmp_lookup_pmpcfg[20:19] != 2'd0 ||
	      NOT_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_p_ETC___d88 &&
	      fn_pmp_lookup_pmpcfg[28:27] != 2'd0) &&
	     IF_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pm_ETC___d168 ;
  assign NOT_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_p_ETC___d46 =
	     !fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d17 &&
	     fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d19 &&
	     fn_pmp_lookup_pmpcfg[4:3] != 2'd0 ||
	     !fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d39 &&
	     fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d41 &&
	     fn_pmp_lookup_pmpcfg[12:11] != 2'd0 ;
  assign NOT_fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_p_ETC___d88 =
	     fn_pmp_lookup_req[33:5] >=
	     (start_address__h1325 & mask__h1327) &&
	     fn_pmp_lookup_req[33:5] <= fn_pmp_lookup_pmpaddr[115:87] ;
  assign fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d19 =
	     fn_pmp_lookup_req[33:5] <= fn_pmp_lookup_pmpaddr[28:0] ;
  assign fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d41 =
	     fn_pmp_lookup_req[33:5] <= fn_pmp_lookup_pmpaddr[57:29] ;
  assign fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d64 =
	     fn_pmp_lookup_req[33:5] <= fn_pmp_lookup_pmpaddr[86:58] ;
  assign fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d17 =
	     fn_pmp_lookup_req[33:5] < (start_address__h408 & mask__h410) ;
  assign fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d39 =
	     fn_pmp_lookup_req[33:5] < (start_address__h907 & mask__h909) ;
  assign fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d62 =
	     fn_pmp_lookup_req[33:5] < (start_address__h1116 & mask__h1118) ;
  assign fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d99 =
	     (fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d17 ||
	      !fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d19 ||
	      fn_pmp_lookup_pmpcfg[4:3] == 2'd0) &&
	     (fn_pmp_lookup_req_BITS_33_TO_5_ULT_IF_fn_pmp_l_ETC___d39 ||
	      !fn_pmp_lookup_req_BITS_33_TO_5_ULE_fn_pmp_look_ETC___d41 ||
	      fn_pmp_lookup_pmpcfg[12:11] == 2'd0) ;
  assign mask__h1117 = { fn_pmp_lookup_pmpaddr[85:58], x__h1285 } ;
  assign mask__h1118 =
	     (fn_pmp_lookup_pmpcfg[20:19] == 2'd3) ?
	       ~x__h1265 :
	       29'd536870911 ;
  assign mask__h1326 = { fn_pmp_lookup_pmpaddr[114:87], x__h1494 } ;
  assign mask__h1327 =
	     (fn_pmp_lookup_pmpcfg[28:27] == 2'd3) ?
	       ~x__h1474 :
	       29'd536870911 ;
  assign mask__h409 = { fn_pmp_lookup_pmpaddr[27:0], x__h868 } ;
  assign mask__h410 =
	     (fn_pmp_lookup_pmpcfg[4:3] == 2'd3) ? ~x__h847 : 29'd536870911 ;
  assign mask__h908 = { fn_pmp_lookup_pmpaddr[56:29], x__h1076 } ;
  assign mask__h909 =
	     (fn_pmp_lookup_pmpcfg[12:11] == 2'd3) ?
	       ~x__h1056 :
	       29'd536870911 ;
  assign start_address__h1116 =
	     (fn_pmp_lookup_pmpcfg[20:19] == 2'd1) ?
	       fn_pmp_lookup_pmpaddr[57:29] :
	       fn_pmp_lookup_pmpaddr[86:58] ;
  assign start_address__h1325 =
	     (fn_pmp_lookup_pmpcfg[28:27] == 2'd1) ?
	       fn_pmp_lookup_pmpaddr[86:58] :
	       fn_pmp_lookup_pmpaddr[115:87] ;
  assign start_address__h408 =
	     (fn_pmp_lookup_pmpcfg[4:3] == 2'd1) ?
	       29'd0 :
	       fn_pmp_lookup_pmpaddr[28:0] ;
  assign start_address__h907 =
	     (fn_pmp_lookup_pmpcfg[12:11] == 2'd1) ?
	       fn_pmp_lookup_pmpaddr[28:0] :
	       fn_pmp_lookup_pmpaddr[57:29] ;
  assign x__h1056 = mask__h908 & y__h1057 ;
  assign x__h1076 = ~(fn_pmp_lookup_pmpcfg[12:11] == 2'd2) ;
  assign x__h1082 = mask__h908 + 29'd1 ;
  assign x__h1265 = mask__h1117 & y__h1266 ;
  assign x__h1285 = ~(fn_pmp_lookup_pmpcfg[20:19] == 2'd2) ;
  assign x__h1291 = mask__h1117 + 29'd1 ;
  assign x__h1474 = mask__h1326 & y__h1475 ;
  assign x__h1494 = ~(fn_pmp_lookup_pmpcfg[28:27] == 2'd2) ;
  assign x__h1500 = mask__h1326 + 29'd1 ;
  assign x__h847 = mask__h409 & y__h848 ;
  assign x__h868 = ~(fn_pmp_lookup_pmpcfg[4:3] == 2'd2) ;
  assign x__h874 = mask__h409 + 29'd1 ;
  assign y__h1057 = ~x__h1082 ;
  assign y__h1266 = ~x__h1291 ;
  assign y__h1475 = ~x__h1500 ;
  assign y__h848 = ~x__h874 ;
  always@(fn_pmp_lookup_req)
  begin
    case (fn_pmp_lookup_req[1:0])
      2'd0: x__h2109 = 6'd5;
      2'd1: x__h2109 = 6'd7;
      default: x__h2109 = 6'd1;
    endcase
  end
endmodule  // module_fn_pmp_lookup

