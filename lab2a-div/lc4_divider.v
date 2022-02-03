/* TODO: INSERT NAME AND PENNKEY HERE */

`timescale 1ns / 1ps
`default_nettype none

module lc4_divider(input  wire [15:0] i_dividend,
                   input  wire [15:0] i_divisor,
                   output wire [15:0] o_remainder,
                   output wire [15:0] o_quotient);

      /*** YOUR CODE HERE ***/

      genvar i;
      for (i = 0; i < 16; i = i+1) begin
            lc4_divider_one_iter
      end

endmodule // lc4_divider

module lc4_divider_one_iter(input  wire [15:0] i_dividend,
                            input  wire [15:0] i_divisor,
                            input  wire [15:0] i_remainder,
                            input  wire [15:0] i_quotient,
                            output wire [15:0] o_dividend,
                            output wire [15:0] o_remainder,
                            output wire [15:0] o_quotient);

      /*** YOUR CODE HERE ***/
      o_remainder = i_remainder << 1;
      o_dividend = (i_dividend >> 15) & 1b1;
      wire i_rem_div = o_dividend | o_remainder;
      begin
            if (i_remainder < i_divisor)
                  o_quotient = i_quotient << 1;
            else 
                  o_quotient = (i_quotient << 1) | 1b1;
                  wire remainder_copy = o_remainder;
                  o_remainder = remainder_copy - i_divisor - skhfglaoegfsd
      end
      wire dividend_copy = o_dividend;
      o_dividend = dividend_copy << 1;

endmodule
