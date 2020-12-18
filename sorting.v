`timescale 1ns/1ps

module sorting(rank0, rank1, rank2, rank3, rank4, i0, i1, i2, i3, i4);
//DO NOT CHANGE!
	input  [5:0] i0, i1, i2, i3, i4;
	output [5:0] rank0, rank1, rank2, rank3, rank4;
//---------------------------------------------------


endmodule

module ND6( o, i0, i1, i2, i3, i4, i5 );
    input      i0, i1, i2, i3, i4, i5;
    output reg o;
    wire       dummy0, dummy1;
    ND3 nd0( dummy0, i0, i1, i2 );
    ND3 nd1( dummy1, i3, i4, i5 );
    OR2 ret( o6,     dummy0,  dummy1 );
endmodule

module OR6( o, i0, i1, i2, i3, i4, i5 );
    input      i0, i1, i2, i3, i4, i5;
    output reg o;
    wire       dummy0, dummy1;
    OR3 or0( dummy0, i0, i1, i2 );
    OR3 or1( dummy1, i3, i4, i5 );
    OR2 ret( o,      dummy0,  dummy1 );
endmodule

module OR5( o, i0, i1, i2, i3, i4 );
    input      i0, i1, i2, i3, i4;
    output reg o;
    wire       dummy0, dummy1;
    OR3 or0( dummy0, i0, i1, i2 );
    OR2 or1( dummy1, i3, i4 );
    OR2 ret( o,      dummy0,  dummy1 );
endmodule

module AN5( o, i0, i1, i2, i3, i4 );
    input      i0, i1, i2, i3, i4;
    output reg o;
    wire       dummy0, dummy1;
    AN3 an0( dummy0, i0, i1, i2 );
    AN2 an1( dummy1, i3, i4 );
    AN2 ret( o,      dummy0,  dummy1 );
endmodule

module AN6( o, i0, i1, i2, i3, i4, i5 );
    input      i0, i1, i2, i3, i4, i5;
    output reg o;
    wire       dummy0, dummy1;
    AN3 an0( dummy0, i0, i1, i2 );
    AN3 an1( dummy1, i3, i4, i5 );
    AN2 ret( o,      dummy0,  dummy1 );
endmodule

module OR15( o, i );
    input [14:0] i;
    output       o;
    wire dummy0, dummy1, dummy2, dummy3;
    OR4 or_0_3( dummy0, i[0],   i[1],   i[2],   i[3]   );
    OR4 or_4_7( dummy1, i[4],   i[5],   i[6],   i[7]   );
    OR4 or_8_B( dummy2, i[8],   i[9],   i[10],  i[11]  );
    OR3 or_C_E( dummy3, i[12],  i[13],  i[14]          ); 
    OR4 ret   ( o,      dummy0, dummy1, dummy2, dummy3 );
endmodule

module OR20( o, i );
    input  [19:0] i;
    output        o;
    wire   [5:0]  dummy;
    OR4 or_0_3( dummy[0], i[0],     i[1],     i[2],     i[3]   );
    OR4 or_4_7( dummy[1], i[4],     i[5],     i[6],     i[7]   );
    OR4 or_8_B( dummy[2], i[8],     i[9],     i[10],    i[11]  );
    OR4 or_C_F( dummy[3], i[12],    i[13],    i[14],    i[15]  ); 
    OR4 or_G_J( dummy[4], i[16],    i[17],    i[18],    i[19]  );
    OR4 dummy ( dummy[5], dummy[0], dummy[1], dummy[2], dummy[3] );
    OR2 ret   ( o       , dummy[5], dummy[4] );
endmodule

`define wires_2_6 \
    wire  AB, AC, AD, AE, AF, BC, BD, BE, BF, CD, CE, CF, DE, DF, EF; \
    AN2 gate_AB ( AB, A, B ); \
    AN2 gate_AC ( AC, A, C ); \
    AN2 gate_AD ( AD, A, D ); \
    AN2 gate_AE ( AE, A, E ); \
    AN2 gate_AF ( AF, A, F ); \
    AN2 gate_BC ( BC, B, C ); \
    AN2 gate_BD ( BD, B, D ); \
    AN2 gate_BE ( BE, B, E ); \
    AN2 gate_BF ( BF, B, F ); \
    AN2 gate_CD ( CD, C, D ); \
    AN2 gate_CE ( CE, C, E ); \
    AN2 gate_CF ( CF, C, F ); \
    AN2 gate_DE ( DE, D, E ); \
    AN2 gate_DF ( DF, D, F ); \
    AN2 gate_EF ( EF, E, F );

`define wires_3_6 \
    wire  ABC, ABD, ABE, ABF, ACD, ACE, ACF, ADE, ADF, AEF, BCD, BCE, BCF, BDE, BDF, BEF, CDE, CDF, CEF, DEF; \
    AN3 gate_ABC( ABC, A, B, C ); \
    AN3 gate_ABD( ABD, A, B, D ); \
    AN3 gate_ABE( ABE, A, B, E ); \
    AN3 gate_ABF( ABF, A, B, F ); \
    AN3 gate_ACD( ACD, A, C, D ); \
    AN3 gate_ACE( ACE, A, C, E ); \
    AN3 gate_ACF( ACF, A, C, F ); \
    AN3 gate_ADE( ADE, A, D, E ); \
    AN3 gate_ADF( ADF, A, D, F ); \
    AN3 gate_AEF( AEF, A, E, F ); \
    AN3 gate_BCD( BCD, B, C, D ); \
    AN3 gate_BCE( BCE, B, C, E ); \
    AN3 gate_BCF( BCF, B, C, F ); \
    AN3 gate_BDE( BDE, B, D, E ); \
    AN3 gate_BDF( BDF, B, D, F ); \
    AN3 gate_BEF( BEF, B, E, F ); \
    AN3 gate_CDE( CDE, C, D, E ); \
    AN3 gate_CDF( CDF, C, D, F ); \
    AN3 gate_CEF( CEF, C, E, F ); \
    AN3 gate_DEF( DEF, D, E, F );

`define wires_4_6 \
    wire  ABCD, ABCE, ABCF, ABDE, ABDF, ABEF, ACDE, ACDF, ACEF, ADEF, BCDE, BCDF, BCEF, BDEF, CDEF; \
    AN4 gate_ABCD( ABCD, A, B, C, D); \
    AN4 gate_ABCE( ABCE, A, B, C, E); \
    AN4 gate_ABCF( ABCF, A, B, C, F); \
    AN4 gate_ABDE( ABDE, A, B, D, E); \
    AN4 gate_ABDF( ABDF, A, B, D, F); \
    AN4 gate_ABEF( ABEF, A, B, E, F); \
    AN4 gate_ACDE( ACDE, A, C, D, E); \
    AN4 gate_ACDF( ACDF, A, C, D, F); \
    AN4 gate_ACEF( ACEF, A, C, E, F); \
    AN4 gate_ADEF( ADEF, A, D, E, F); \
    AN4 gate_BCDE( BCDE, B, C, D, E); \
    AN4 gate_BCDF( BCDF, B, C, D, F); \
    AN4 gate_BCEF( BCEF, B, C, E, F); \
    AN4 gate_BDEF( BDEF, B, D, E, F); \
    AN4 gate_CDEF( CDEF, C, D, E, F);

`define wires_5_6 \
    wire  BCDEF, ACDEF, ABDEF, ABCEF, ABCDF, ABCDE; \
    AN5 gate_BCDEF( BCDEF, B, C, D, E, F ); \
    AN5 gate_ACDEF( ACDEF, A, C, D, E, F ); \
    AN5 gate_ABDEF( ABDEF, A, B, D, E, F ); \
    AN5 gate_ABCEF( ABCEF, A, B, C, E, F ); \
    AN5 gate_ABCDF( ABCDF, A, B, C, D, F ); \
    AN5 gate_ABCDE( ABCDE, A, B, C, D, E );

`define wires_6_6 \
    wire  ABCDEF; \
    AN6 gate_ABCDEF( ABCDEF, A, B, C, D, E, F );

module gravity_DECoder( o, A, B, C, D, E, F );
    output reg [62:0] o;
    input A, B, C, D, E, F;
    `wires_2_6
    `wires_3_6
    `wires_4_6
    `wires_5_6
    `wires_6_6
    OR6 o0(  o[0],  A, B, C, D, E, F );
    OR5 o1(  o[1],  E, D, C, B, A );
    OR5 o2(  o[2],  D, C, B, A, EF );
    OR4 o3(  o[3],  D, C, B, A );
    OR5 o4(  o[4],  C, B, A, DF, DE );
    OR4 o5(  o[5],  C, B, A, DE );
    OR4 o6(  o[6],  C, B, A, DEF );
    OR3 o7(  o[7],  C, B, A );
    OR5 o8(  o[8],  B, A, CF, CE, CD );
    OR4 o9(  o[9],  B, A, CE, CD );
    OR4 o10( o[10], B, A, CD, CEF );
    OR3 o11( o[11], B, A, CD );
    OR4 o12( o[12], B, A, CDF, CDE );
    OR3 o13( o[13], B, A, CDE );
    OR3 o14( o[14], B, A, CDEF );
    OR2 o15( o[15], B, A );
    OR5 o16( o[16], A, BF, BE, BD, BC );
    OR4 o17( o[17], A, BE, BD, BC );
    OR4 o18( o[18], A, BD, BC, BEF );
    OR3 o19( o[19], A, BD, BC );
    OR4 o20( o[20], A, BC, BDF, BDE );
    OR3 o21( o[21], A, BC, BDE );
    OR3 o22( o[22], A, BC, BDEF );
    OR2 o23( o[23], A, BC );
    OR4 o24( o[24], A, BCF, BCE, BCD );
    OR3 o25( o[25], A, BCE, BCD );
    OR3 o26( o[26], A, BCD, BCEF );
    OR2 o27( o[27], A, BCD );
    OR3 o28( o[28], A, BCDF, BCDE );
    OR2 o29( o[29], A, BCDE );
    OR2 o30( o[30], A, BCDEF );
    BUF o31( o[31], A );
    OR5 o32( o[32], AF, AE, AD, AC, AB );
    OR4 o33( o[33], AE, AD, AC, AB );
    OR4 o34( o[34], AD, AC, AB, AEF );
    OR3 o35( o[35], AD, AC, AB );
    OR4 o36( o[36], AC, AB, ADF, ADE );
    OR3 o37( o[37], AC, AB, ADE );
    OR3 o38( o[38], AC, AB, ADEF );
    OR2 o39( o[39], AC, AB );
    OR4 o40( o[40], AB, ACF, ACE, ACD );
    OR3 o41( o[41], AB, ACE, ACD );
    OR3 o42( o[42], AB, ACD, ACEF );
    OR2 o43( o[43], AB, ACD );
    OR3 o44( o[44], AB, ACDF, ACDE );
    OR2 o45( o[45], AB, ACDE );
    OR2 o46( o[46], AB, ACDEF );
    BUF o47( o[47], AB );
    OR4 o48( o[48], ABF, ABE, ABD, ABC );
    OR3 o49( o[49], ABE, ABD, ABC );
    OR3 o50( o[50], ABD, ABC, ABEF );
    OR2 o51( o[51], ABD, ABC );
    OR3 o52( o[52], ABC, ABDF, ABDE );
    OR2 o53( o[53], ABC, ABDE );
    OR2 o54( o[54], ABC, ABDEF );
    BUF o55( o[55], ABC );
    OR3 o56( o[56], ABCF, ABCE, ABCD );
    OR2 o57( o[57], ABCE, ABCD );
    OR2 o58( o[58], ABCD, ABCEF );
    BUF o59( o[59], ABCD );
    OR2 o60( o[60], ABCDF, ABCDE );
    BUF o61( o[61], ABCDE );
    BUF o62( o[62], ABCDEF );
endmodule

module gravity_ENCoder( o, i );
    input      [62:0] i;
    output reg [5:0]  o;
    always @* begin
        case (i)
            63'b000000000000000000000000000000000000000000000000000000000000000: o = 6'b000000;
            63'b000000000000000000000000000000000000000000000000000000000000001: o = 6'b000001;
            63'b000000000000000000000000000000000000000000000000000000000000011: o = 6'b000010;
            63'b000000000000000000000000000000000000000000000000000000000000111: o = 6'b000011;
            63'b000000000000000000000000000000000000000000000000000000000001111: o = 6'b000100;
            63'b000000000000000000000000000000000000000000000000000000000011111: o = 6'b000101;
            63'b000000000000000000000000000000000000000000000000000000000111111: o = 6'b000110;
            63'b000000000000000000000000000000000000000000000000000000001111111: o = 6'b000111;
            63'b000000000000000000000000000000000000000000000000000000011111111: o = 6'b001000;
            63'b000000000000000000000000000000000000000000000000000000111111111: o = 6'b001001;
            63'b000000000000000000000000000000000000000000000000000001111111111: o = 6'b001010;
            63'b000000000000000000000000000000000000000000000000000011111111111: o = 6'b001011;
            63'b000000000000000000000000000000000000000000000000000111111111111: o = 6'b001100;
            63'b000000000000000000000000000000000000000000000000001111111111111: o = 6'b001101;
            63'b000000000000000000000000000000000000000000000000011111111111111: o = 6'b001110;
            63'b000000000000000000000000000000000000000000000000111111111111111: o = 6'b001111;
            63'b000000000000000000000000000000000000000000000001111111111111111: o = 6'b010000;
            63'b000000000000000000000000000000000000000000000011111111111111111: o = 6'b010001;
            63'b000000000000000000000000000000000000000000000111111111111111111: o = 6'b010010;
            63'b000000000000000000000000000000000000000000001111111111111111111: o = 6'b010011;
            63'b000000000000000000000000000000000000000000011111111111111111111: o = 6'b010100;
            63'b000000000000000000000000000000000000000000111111111111111111111: o = 6'b010101;
            63'b000000000000000000000000000000000000000001111111111111111111111: o = 6'b010110;
            63'b000000000000000000000000000000000000000011111111111111111111111: o = 6'b010111;
            63'b000000000000000000000000000000000000000111111111111111111111111: o = 6'b011000;
            63'b000000000000000000000000000000000000001111111111111111111111111: o = 6'b011001;
            63'b000000000000000000000000000000000000011111111111111111111111111: o = 6'b011010;
            63'b000000000000000000000000000000000000111111111111111111111111111: o = 6'b011011;
            63'b000000000000000000000000000000000001111111111111111111111111111: o = 6'b011100;
            63'b000000000000000000000000000000000011111111111111111111111111111: o = 6'b011101;
            63'b000000000000000000000000000000000111111111111111111111111111111: o = 6'b011110;
            63'b000000000000000000000000000000001111111111111111111111111111111: o = 6'b011111;
            63'b000000000000000000000000000000011111111111111111111111111111111: o = 6'b100000;
            63'b000000000000000000000000000000111111111111111111111111111111111: o = 6'b100001;
            63'b000000000000000000000000000001111111111111111111111111111111111: o = 6'b100010;
            63'b000000000000000000000000000011111111111111111111111111111111111: o = 6'b100011;
            63'b000000000000000000000000000111111111111111111111111111111111111: o = 6'b100100;
            63'b000000000000000000000000001111111111111111111111111111111111111: o = 6'b100101;
            63'b000000000000000000000000011111111111111111111111111111111111111: o = 6'b100110;
            63'b000000000000000000000000111111111111111111111111111111111111111: o = 6'b100111;
            63'b000000000000000000000001111111111111111111111111111111111111111: o = 6'b101000;
            63'b000000000000000000000011111111111111111111111111111111111111111: o = 6'b101001;
            63'b000000000000000000000111111111111111111111111111111111111111111: o = 6'b101010;
            63'b000000000000000000001111111111111111111111111111111111111111111: o = 6'b101011;
            63'b000000000000000000011111111111111111111111111111111111111111111: o = 6'b101100;
            63'b000000000000000000111111111111111111111111111111111111111111111: o = 6'b101101;
            63'b000000000000000001111111111111111111111111111111111111111111111: o = 6'b101110;
            63'b000000000000000011111111111111111111111111111111111111111111111: o = 6'b101111;
            63'b000000000000000111111111111111111111111111111111111111111111111: o = 6'b110000;
            63'b000000000000001111111111111111111111111111111111111111111111111: o = 6'b110001;
            63'b000000000000011111111111111111111111111111111111111111111111111: o = 6'b110010;
            63'b000000000000111111111111111111111111111111111111111111111111111: o = 6'b110011;
            63'b000000000001111111111111111111111111111111111111111111111111111: o = 6'b110100;
            63'b000000000011111111111111111111111111111111111111111111111111111: o = 6'b110101;
            63'b000000000111111111111111111111111111111111111111111111111111111: o = 6'b110110;
            63'b000000001111111111111111111111111111111111111111111111111111111: o = 6'b110111;
            63'b000000011111111111111111111111111111111111111111111111111111111: o = 6'b111000;
            63'b000000111111111111111111111111111111111111111111111111111111111: o = 6'b111001;
            63'b000001111111111111111111111111111111111111111111111111111111111: o = 6'b111010;
            63'b000011111111111111111111111111111111111111111111111111111111111: o = 6'b111011;
            63'b000111111111111111111111111111111111111111111111111111111111111: o = 6'b111100;
            63'b001111111111111111111111111111111111111111111111111111111111111: o = 6'b111101;
            63'b011111111111111111111111111111111111111111111111111111111111111: o = 6'b111110;
            63'b111111111111111111111111111111111111111111111111111111111111111: o = 6'b111111;
            default: 0;
        endcase
endmodule

module THRES_1_6( o, A, B, C, D, E, F );
    input  A, B, C, D, E, F;
    output o;
    OR6    ( o, A, B, C, D, E, F );
endmodule

module THRES_2_6( o, A, B, C, D, E, F );
    input  A, B, C, D, E, F;
    output o;
    `wires_2_6
    OR15 ret( o, {AB, AC, AD, AE, AF, BC, BD, BE, BF, CD, CE, CF, DE, DF, EF} );
endmodule


module THRES_3_6( o, A, B, C, D, E, F );
    input  A, B, C, D, E, F;
    output o;
    `wires_3_6
    OR20 ret( o, {ABC, ABD, ABE, ABF, ACD, ACE, ACF, ADE, ADF, AEF, BCD, BCE, BCF, BDE, BDF, BEF, CDE, CDF, CEF, DEF} );
endmodule


module THRES_4_6( o, A, B, C, D, E, F );
    input  A, B, C, D, E, F;
    output o;
    `wires_4_6
    OR15 ret( o, {ABCD, ABCE, ABCF, ABDE, ABDF, ABEF, ACDE, ACDF, ACEF, ADEF, BCDE, BCDF, BCEF, BDEF, CDEF} );
endmodule

module THRES_5_6( o, A, B, C, D, E, F );
    input  A, B, C, D, E, F;
    output o;
    `wires_5_6
    OR6 ret( o, BCDEF, ACDEF, ABDEF, ABCEF, ABCDF, ABCDE );
endmodule

module THRES_6_6( o, A, B, C, D, E, F );
    input  A, B, C, D, E, F;
    output o;
    `wires_6_6
    BUF ret( o, ABCDEF );
endmodule

module BUF( o, i );
    input      i;
    output reg o;
    assign o = i;
endmodule
