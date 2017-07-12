#include "./bsg_ip_cores/bsg_dataflow/bsg_fifo_1r1w_small.v"
#include "./bsg_ip_cores/bsg_dataflow/bsg_round_robin_n_to_1.v"

module FT600_Interface
(
//FT600
input clk,
input RXF_N,
input TXE_N,
output WR_N,
output RD_N,
output OE_N,
output SIWU_N,
inout BE[3:0],
inout DATA[31:0],

//ASIC interface

);

bsg_round_robin_n_to_1 scheduler #(parameter width_p = -1
                                ,parameter num_in_p = -1
                                ,parameter strict_p = "inv"
                                ,parameter tag_width_lp = `BSG_SAFE_CLOG2(num_in_p)
                                )
   (input  clk_i
    , input  reset_i

    // to fifos
    , input  [num_in_p-1:0][width_p-1:0] data_i
    , input  [num_in_p-1:0] v_i
    , output [num_in_p-1:0] yumi_o

    // to downstream
    , output v_o
    , output [width_p-1:0]     data_o
    , output [tag_width_lp-1:0] tag_o
    , input  yumi_i
    );




endmodule
