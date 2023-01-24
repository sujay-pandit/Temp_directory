//
// Generated by Bluespec Compiler, version 2022.01-5-ge3edf4b1 (build e3edf4b1)
//
// On Fri Apr 15 12:45:58 EDT 2022
//
//
// Ports:
// Name                         I/O  size props
// hasCSRPermission               O     1
// hasCSRPermission_address       I    12
// hasCSRPermission_write         I     1
// hasCSRPermission_prv           I     2
//
// Combinational paths from inputs to outputs:
//   (hasCSRPermission_address,
//    hasCSRPermission_write,
//    hasCSRPermission_prv) -> hasCSRPermission
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

module module_hasCSRPermission(hasCSRPermission_address,
			       hasCSRPermission_write,
			       hasCSRPermission_prv,
			       hasCSRPermission);
  // value method hasCSRPermission
  input  [11 : 0] hasCSRPermission_address;
  input  hasCSRPermission_write;
  input  [1 : 0] hasCSRPermission_prv;
  output hasCSRPermission;

  // signals for module outputs
  wire hasCSRPermission;

  // value method hasCSRPermission
  assign hasCSRPermission =
	     hasCSRPermission_prv >= hasCSRPermission_address[9:8] &&
	     (!hasCSRPermission_write ||
	      hasCSRPermission_address[11:10] != 2'b11) ;
endmodule  // module_hasCSRPermission

