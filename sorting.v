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

module SELECT( o, A, B );
    input  A, B;
    output o;
    wire   a;
    NOT( a, A );
    AN2 ret( o, a, B );
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

module OR32( o, i );
    input  [31:0] i;
    output        o;
    wire   [9:0]  dummy;
    OR4 or_0_3( dummy[0], i[0],     i[1],     i[2],     i[3]   );
    OR4 or_4_7( dummy[1], i[4],     i[5],     i[6],     i[7]   );
    OR4 or_8_B( dummy[2], i[8],     i[9],     i[10],    i[11]  );
    OR4 or_C_F( dummy[3], i[12],    i[13],    i[14],    i[15]  ); 
    OR4 or_G_J( dummy[4], i[16],    i[17],    i[18],    i[19]  );
    OR4 or_K_N( dummy[5], i[20],    i[21],    i[22],    i[23]  );
    OR4 or_O_R( dummy[6], i[24],    i[25],    i[26],    i[27]  );
    OR4 or_S_V( dummy[7], i[28],    i[29],    i[30],    i[31]  );
    OR4 dddddd( dummy[8], dummy[0], dummy[1], dummy[2], dummy[3] );
    OR4 dddddD( dummy[9], dummy[4], dummy[5], dummy[6], dummy[7] );
    OR2 ret   ( o       , dummy[8], dummy[9] );
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
    OR6    o0(  o[0],  A, B, C, D, E, F );
    OR5    o1(  o[1],  E, D, C, B, A );
    OR5    o2(  o[2],  D, C, B, A, EF );
    OR4    o3(  o[3],  D, C, B, A );
    OR5    o4(  o[4],  C, B, A, DF, DE );
    OR4    o5(  o[5],  C, B, A, DE );
    OR4    o6(  o[6],  C, B, A, DEF );
    OR3    o7(  o[7],  C, B, A );
    OR5    o8(  o[8],  B, A, CF, CE, CD );
    OR4    o9(  o[9],  B, A, CE, CD );
    OR4    o10( o[10], B, A, CD, CEF );
    OR3    o11( o[11], B, A, CD );
    OR4    o12( o[12], B, A, CDF, CDE );
    OR3    o13( o[13], B, A, CDE );
    OR3    o14( o[14], B, A, CDEF );
    OR2    o15( o[15], B, A );
    OR5    o16( o[16], A, BF, BE, BD, BC );
    OR4    o17( o[17], A, BE, BD, BC );
    OR4    o18( o[18], A, BD, BC, BEF );
    OR3    o19( o[19], A, BD, BC );
    OR4    o20( o[20], A, BC, BDF, BDE );
    OR3    o21( o[21], A, BC, BDE );
    OR3    o22( o[22], A, BC, BDEF );
    OR2    o23( o[23], A, BC );
    OR4    o24( o[24], A, BCF, BCE, BCD );
    OR3    o25( o[25], A, BCE, BCD );
    OR3    o26( o[26], A, BCD, BCEF );
    OR2    o27( o[27], A, BCD );
    OR3    o28( o[28], A, BCDF, BCDE );
    OR2    o29( o[29], A, BCDE );
    OR2    o30( o[30], A, BCDEF );
    DRIVER o31( o[31], A );
    OR5    o32( o[32], AF, AE, AD, AC, AB );
    OR4    o33( o[33], AE, AD, AC, AB );
    OR4    o34( o[34], AD, AC, AB, AEF );
    OR3    o35( o[35], AD, AC, AB );
    OR4    o36( o[36], AC, AB, ADF, ADE );
    OR3    o37( o[37], AC, AB, ADE );
    OR3    o38( o[38], AC, AB, ADEF );
    OR2    o39( o[39], AC, AB );
    OR4    o40( o[40], AB, ACF, ACE, ACD );
    OR3    o41( o[41], AB, ACE, ACD );
    OR3    o42( o[42], AB, ACD, ACEF );
    OR2    o43( o[43], AB, ACD );
    OR3    o44( o[44], AB, ACDF, ACDE );
    OR2    o45( o[45], AB, ACDE );
    OR2    o46( o[46], AB, ACDEF );
    DRIVER o47( o[47], AB );
    OR4    o48( o[48], ABF, ABE, ABD, ABC );
    OR3    o49( o[49], ABE, ABD, ABC );
    OR3    o50( o[50], ABD, ABC, ABEF );
    OR2    o51( o[51], ABD, ABC );
    OR3    o52( o[52], ABC, ABDF, ABDE );
    OR2    o53( o[53], ABC, ABDE );
    OR2    o54( o[54], ABC, ABDEF );
    DRIVER o55( o[55], ABC );
    OR3    o56( o[56], ABCF, ABCE, ABCD );
    OR2    o57( o[57], ABCE, ABCD );
    OR2    o58( o[58], ABCD, ABCEF );
    DRIVER o59( o[59], ABCD );
    OR2    o60( o[60], ABCDF, ABCDE );
    DRIVER o61( o[61], ABCDE );
    DRIVER o62( o[62], ABCDEF );
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
    DRIVER ret( o, ABCDEF );
endmodule

module gravity_CALculation( o0, o1, o2, o3, o4, o5, i0, i1, i2, i3, i4, i5 );
    input  [62:0] i0, i1, i2, i3, i4, i5;
    output [5:0]  o0, o1, o2, o3, o4, o5;
    wire   [62:0] w0, w1, w2, w3, w4, w5;
    module THRES_1_6 rank0( w0, i0, i1, i2, i3, i4, i5 );
    module THRES_2_6 rank1( w1, i0, i1, i2, i3, i4, i5 );
    module THRES_3_6 rank2( w2, i0, i1, i2, i3, i4, i5 );
    module THRES_4_6 rank3( w3, i0, i1, i2, i3, i4, i5 );
    module THRES_5_6 rank4( w4, i0, i1, i2, i3, i4, i5 );
    module THRES_6_6 rank5( w5, i0, i1, i2, i3, i4, i5 );
    module gravity_ENCoder( o0, w0 );
    module gravity_ENCoder( o1, w1 );
    module gravity_ENCoder( o2, w2 );
    module gravity_ENCoder( o3, w3 );
    module gravity_ENCoder( o4, w4 );
    module gravity_ENCoder( o5, w5 );
endmodule

`define sanitize(63_bit_vec) \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[ 1], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[ 2], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[ 3], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[ 4], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[ 5], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[ 6], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[ 7], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[ 8], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[ 9], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[10], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[11], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[12], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[13], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[14], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[15], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[16], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[17], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[18], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[19], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[20], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[21], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[22], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[23], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[24], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[25], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[26], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[27], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[28], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[29], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[30], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[31], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[32], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[33], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[34], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[35], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[36], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[37], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[38], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[39], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[40], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[41], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[42], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[43], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[44], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[45], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[46], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[47], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[48], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[49], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[50], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[51], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[52], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[53], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[54], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[55], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[56], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[57], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[58], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[59], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[60], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[61], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 0], 63_bit_vec[62], 63_bit_vec[ 0] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[ 2], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[ 3], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[ 4], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[ 5], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[ 6], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[ 7], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[ 8], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[ 9], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[10], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[11], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[12], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[13], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[14], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[15], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[16], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[17], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[18], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[19], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[20], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[21], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[22], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[23], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[24], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[25], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[26], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[27], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[28], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[29], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[30], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[31], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[32], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[33], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[34], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[35], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[36], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[37], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[38], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[39], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[40], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[41], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[42], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[43], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[44], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[45], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[46], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[47], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[48], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[49], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[50], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[51], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[52], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[53], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[54], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[55], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[56], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[57], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[58], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[59], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[60], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[61], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 1], 63_bit_vec[62], 63_bit_vec[ 1] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[ 3], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[ 4], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[ 5], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[ 6], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[ 7], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[ 8], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[ 9], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[10], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[11], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[12], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[13], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[14], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[15], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[16], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[17], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[18], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[19], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[20], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[21], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[22], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[23], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[24], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[25], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[26], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[27], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[28], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[29], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[30], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[31], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[32], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[33], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[34], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[35], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[36], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[37], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[38], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[39], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[40], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[41], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[42], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[43], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[44], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[45], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[46], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[47], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[48], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[49], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[50], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[51], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[52], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[53], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[54], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[55], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[56], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[57], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[58], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[59], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[60], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[61], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 2], 63_bit_vec[62], 63_bit_vec[ 2] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[ 4], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[ 5], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[ 6], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[ 7], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[ 8], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[ 9], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[10], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[11], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[12], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[13], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[14], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[15], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[16], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[17], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[18], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[19], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[20], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[21], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[22], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[23], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[24], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[25], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[26], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[27], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[28], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[29], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[30], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[31], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[32], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[33], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[34], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[35], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[36], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[37], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[38], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[39], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[40], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[41], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[42], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[43], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[44], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[45], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[46], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[47], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[48], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[49], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[50], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[51], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[52], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[53], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[54], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[55], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[56], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[57], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[58], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[59], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[60], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[61], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 3], 63_bit_vec[62], 63_bit_vec[ 3] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[ 5], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[ 6], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[ 7], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[ 8], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[ 9], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[10], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[11], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[12], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[13], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[14], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[15], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[16], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[17], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[18], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[19], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[20], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[21], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[22], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[23], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[24], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[25], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[26], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[27], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[28], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[29], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[30], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[31], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[32], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[33], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[34], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[35], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[36], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[37], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[38], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[39], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[40], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[41], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[42], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[43], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[44], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[45], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[46], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[47], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[48], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[49], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[50], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[51], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[52], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[53], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[54], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[55], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[56], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[57], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[58], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[59], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[60], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[61], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 4], 63_bit_vec[62], 63_bit_vec[ 4] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[ 6], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[ 7], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[ 8], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[ 9], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[10], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[11], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[12], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[13], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[14], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[15], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[16], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[17], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[18], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[19], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[20], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[21], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[22], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[23], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[24], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[25], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[26], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[27], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[28], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[29], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[30], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[31], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[32], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[33], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[34], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[35], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[36], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[37], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[38], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[39], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[40], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[41], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[42], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[43], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[44], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[45], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[46], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[47], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[48], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[49], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[50], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[51], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[52], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[53], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[54], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[55], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[56], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[57], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[58], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[59], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[60], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[61], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 5], 63_bit_vec[62], 63_bit_vec[ 5] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[ 7], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[ 8], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[ 9], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[10], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[11], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[12], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[13], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[14], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[15], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[16], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[17], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[18], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[19], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[20], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[21], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[22], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[23], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[24], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[25], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[26], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[27], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[28], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[29], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[30], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[31], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[32], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[33], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[34], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[35], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[36], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[37], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[38], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[39], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[40], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[41], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[42], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[43], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[44], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[45], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[46], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[47], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[48], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[49], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[50], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[51], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[52], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[53], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[54], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[55], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[56], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[57], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[58], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[59], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[60], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[61], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 6], 63_bit_vec[62], 63_bit_vec[ 6] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[ 8], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[ 9], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[10], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[11], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[12], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[13], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[14], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[15], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[16], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[17], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[18], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[19], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[20], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[21], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[22], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[23], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[24], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[25], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[26], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[27], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[28], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[29], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[30], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[31], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[32], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[33], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[34], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[35], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[36], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[37], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[38], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[39], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[40], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[41], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[42], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[43], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[44], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[45], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[46], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[47], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[48], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[49], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[50], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[51], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[52], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[53], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[54], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[55], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[56], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[57], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[58], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[59], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[60], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[61], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 7], 63_bit_vec[62], 63_bit_vec[ 7] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[ 9], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[10], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[11], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[12], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[13], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[14], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[15], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[16], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[17], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[18], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[19], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[20], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[21], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[22], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[23], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[24], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[25], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[26], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[27], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[28], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[29], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[30], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[31], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[32], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[33], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[34], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[35], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[36], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[37], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[38], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[39], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[40], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[41], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[42], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[43], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[44], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[45], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[46], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[47], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[48], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[49], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[50], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[51], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[52], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[53], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[54], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[55], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[56], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[57], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[58], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[59], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[60], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[61], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 8], 63_bit_vec[62], 63_bit_vec[ 8] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[10], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[11], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[12], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[13], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[14], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[15], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[16], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[17], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[18], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[19], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[20], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[21], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[22], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[23], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[24], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[25], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[26], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[27], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[28], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[29], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[30], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[31], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[32], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[33], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[34], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[35], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[36], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[37], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[38], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[39], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[40], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[41], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[42], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[43], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[44], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[45], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[46], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[47], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[48], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[49], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[50], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[51], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[52], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[53], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[54], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[55], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[56], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[57], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[58], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[59], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[60], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[61], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[ 9], 63_bit_vec[62], 63_bit_vec[ 9] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[11], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[12], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[13], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[14], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[15], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[16], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[17], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[18], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[19], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[20], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[21], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[22], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[23], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[24], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[25], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[26], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[27], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[28], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[29], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[30], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[31], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[32], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[33], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[34], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[35], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[36], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[37], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[38], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[39], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[40], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[41], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[42], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[43], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[44], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[45], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[46], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[47], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[48], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[49], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[50], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[51], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[52], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[53], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[54], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[55], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[56], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[57], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[58], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[59], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[60], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[61], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[10], 63_bit_vec[62], 63_bit_vec[10] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[12], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[13], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[14], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[15], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[16], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[17], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[18], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[19], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[20], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[21], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[22], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[23], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[24], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[25], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[26], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[27], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[28], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[29], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[30], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[31], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[32], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[33], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[34], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[35], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[36], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[37], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[38], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[39], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[40], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[41], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[42], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[43], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[44], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[45], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[46], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[47], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[48], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[49], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[50], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[51], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[52], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[53], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[54], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[55], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[56], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[57], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[58], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[59], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[60], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[61], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[11], 63_bit_vec[62], 63_bit_vec[11] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[13], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[14], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[15], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[16], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[17], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[18], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[19], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[20], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[21], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[22], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[23], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[24], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[25], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[26], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[27], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[28], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[29], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[30], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[31], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[32], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[33], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[34], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[35], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[36], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[37], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[38], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[39], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[40], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[41], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[42], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[43], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[44], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[45], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[46], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[47], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[48], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[49], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[50], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[51], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[52], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[53], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[54], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[55], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[56], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[57], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[58], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[59], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[60], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[61], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[12], 63_bit_vec[62], 63_bit_vec[12] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[14], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[15], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[16], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[17], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[18], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[19], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[20], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[21], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[22], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[23], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[24], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[25], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[26], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[27], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[28], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[29], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[30], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[31], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[32], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[33], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[34], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[35], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[36], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[37], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[38], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[39], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[40], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[41], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[42], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[43], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[44], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[45], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[46], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[47], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[48], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[49], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[50], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[51], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[52], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[53], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[54], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[55], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[56], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[57], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[58], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[59], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[60], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[61], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[13], 63_bit_vec[62], 63_bit_vec[13] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[15], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[16], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[17], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[18], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[19], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[20], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[21], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[22], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[23], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[24], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[25], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[26], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[27], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[28], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[29], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[30], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[31], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[32], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[33], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[34], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[35], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[36], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[37], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[38], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[39], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[40], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[41], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[42], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[43], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[44], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[45], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[46], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[47], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[48], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[49], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[50], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[51], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[52], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[53], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[54], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[55], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[56], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[57], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[58], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[59], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[60], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[61], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[14], 63_bit_vec[62], 63_bit_vec[14] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[16], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[17], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[18], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[19], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[20], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[21], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[22], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[23], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[24], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[25], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[26], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[27], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[28], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[29], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[30], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[31], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[32], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[33], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[34], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[35], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[36], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[37], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[38], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[39], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[40], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[41], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[42], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[43], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[44], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[45], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[46], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[47], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[48], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[49], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[50], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[51], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[52], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[53], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[54], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[55], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[56], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[57], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[58], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[59], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[60], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[61], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[15], 63_bit_vec[62], 63_bit_vec[15] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[17], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[18], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[19], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[20], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[21], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[22], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[23], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[24], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[25], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[26], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[27], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[28], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[29], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[30], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[31], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[32], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[33], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[34], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[35], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[36], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[37], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[38], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[39], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[40], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[41], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[42], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[43], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[44], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[45], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[46], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[47], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[48], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[49], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[50], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[51], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[52], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[53], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[54], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[55], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[56], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[57], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[58], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[59], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[60], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[61], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[16], 63_bit_vec[62], 63_bit_vec[16] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[18], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[19], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[20], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[21], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[22], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[23], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[24], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[25], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[26], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[27], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[28], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[29], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[30], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[31], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[32], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[33], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[34], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[35], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[36], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[37], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[38], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[39], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[40], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[41], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[42], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[43], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[44], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[45], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[46], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[47], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[48], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[49], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[50], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[51], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[52], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[53], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[54], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[55], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[56], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[57], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[58], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[59], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[60], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[61], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[17], 63_bit_vec[62], 63_bit_vec[17] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[19], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[20], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[21], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[22], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[23], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[24], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[25], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[26], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[27], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[28], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[29], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[30], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[31], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[32], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[33], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[34], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[35], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[36], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[37], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[38], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[39], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[40], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[41], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[42], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[43], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[44], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[45], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[46], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[47], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[48], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[49], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[50], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[51], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[52], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[53], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[54], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[55], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[56], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[57], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[58], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[59], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[60], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[61], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[18], 63_bit_vec[62], 63_bit_vec[18] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[20], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[21], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[22], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[23], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[24], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[25], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[26], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[27], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[28], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[29], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[30], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[31], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[32], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[33], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[34], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[35], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[36], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[37], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[38], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[39], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[40], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[41], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[42], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[43], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[44], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[45], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[46], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[47], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[48], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[49], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[50], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[51], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[52], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[53], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[54], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[55], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[56], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[57], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[58], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[59], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[60], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[61], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[19], 63_bit_vec[62], 63_bit_vec[19] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[21], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[22], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[23], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[24], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[25], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[26], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[27], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[28], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[29], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[30], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[31], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[32], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[33], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[34], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[35], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[36], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[37], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[38], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[39], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[40], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[41], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[42], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[43], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[44], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[45], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[46], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[47], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[48], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[49], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[50], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[51], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[52], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[53], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[54], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[55], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[56], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[57], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[58], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[59], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[60], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[61], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[20], 63_bit_vec[62], 63_bit_vec[20] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[22], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[23], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[24], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[25], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[26], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[27], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[28], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[29], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[30], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[31], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[32], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[33], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[34], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[35], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[36], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[37], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[38], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[39], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[40], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[41], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[42], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[43], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[44], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[45], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[46], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[47], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[48], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[49], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[50], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[51], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[52], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[53], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[54], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[55], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[56], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[57], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[58], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[59], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[60], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[61], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[21], 63_bit_vec[62], 63_bit_vec[21] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[23], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[24], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[25], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[26], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[27], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[28], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[29], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[30], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[31], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[32], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[33], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[34], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[35], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[36], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[37], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[38], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[39], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[40], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[41], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[42], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[43], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[44], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[45], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[46], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[47], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[48], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[49], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[50], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[51], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[52], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[53], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[54], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[55], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[56], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[57], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[58], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[59], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[60], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[61], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[22], 63_bit_vec[62], 63_bit_vec[22] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[24], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[25], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[26], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[27], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[28], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[29], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[30], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[31], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[32], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[33], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[34], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[35], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[36], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[37], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[38], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[39], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[40], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[41], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[42], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[43], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[44], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[45], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[46], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[47], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[48], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[49], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[50], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[51], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[52], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[53], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[54], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[55], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[56], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[57], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[58], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[59], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[60], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[61], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[23], 63_bit_vec[62], 63_bit_vec[23] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[25], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[26], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[27], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[28], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[29], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[30], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[31], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[32], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[33], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[34], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[35], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[36], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[37], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[38], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[39], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[40], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[41], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[42], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[43], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[44], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[45], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[46], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[47], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[48], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[49], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[50], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[51], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[52], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[53], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[54], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[55], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[56], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[57], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[58], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[59], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[60], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[61], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[24], 63_bit_vec[62], 63_bit_vec[24] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[26], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[27], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[28], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[29], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[30], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[31], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[32], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[33], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[34], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[35], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[36], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[37], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[38], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[39], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[40], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[41], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[42], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[43], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[44], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[45], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[46], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[47], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[48], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[49], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[50], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[51], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[52], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[53], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[54], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[55], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[56], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[57], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[58], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[59], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[60], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[61], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[25], 63_bit_vec[62], 63_bit_vec[25] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[27], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[28], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[29], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[30], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[31], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[32], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[33], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[34], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[35], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[36], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[37], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[38], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[39], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[40], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[41], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[42], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[43], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[44], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[45], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[46], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[47], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[48], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[49], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[50], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[51], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[52], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[53], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[54], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[55], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[56], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[57], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[58], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[59], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[60], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[61], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[26], 63_bit_vec[62], 63_bit_vec[26] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[28], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[29], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[30], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[31], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[32], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[33], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[34], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[35], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[36], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[37], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[38], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[39], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[40], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[41], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[42], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[43], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[44], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[45], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[46], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[47], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[48], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[49], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[50], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[51], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[52], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[53], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[54], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[55], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[56], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[57], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[58], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[59], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[60], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[61], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[27], 63_bit_vec[62], 63_bit_vec[27] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[29], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[30], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[31], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[32], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[33], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[34], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[35], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[36], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[37], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[38], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[39], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[40], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[41], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[42], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[43], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[44], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[45], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[46], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[47], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[48], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[49], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[50], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[51], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[52], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[53], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[54], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[55], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[56], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[57], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[58], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[59], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[60], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[61], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[28], 63_bit_vec[62], 63_bit_vec[28] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[30], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[31], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[32], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[33], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[34], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[35], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[36], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[37], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[38], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[39], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[40], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[41], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[42], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[43], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[44], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[45], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[46], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[47], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[48], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[49], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[50], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[51], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[52], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[53], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[54], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[55], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[56], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[57], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[58], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[59], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[60], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[61], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[29], 63_bit_vec[62], 63_bit_vec[29] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[31], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[32], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[33], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[34], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[35], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[36], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[37], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[38], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[39], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[40], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[41], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[42], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[43], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[44], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[45], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[46], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[47], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[48], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[49], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[50], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[51], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[52], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[53], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[54], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[55], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[56], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[57], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[58], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[59], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[60], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[61], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[30], 63_bit_vec[62], 63_bit_vec[30] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[32], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[33], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[34], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[35], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[36], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[37], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[38], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[39], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[40], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[41], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[42], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[43], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[44], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[45], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[46], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[47], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[48], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[49], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[50], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[51], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[52], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[53], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[54], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[55], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[56], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[57], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[58], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[59], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[60], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[61], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[31], 63_bit_vec[62], 63_bit_vec[31] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[33], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[34], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[35], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[36], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[37], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[38], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[39], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[40], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[41], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[42], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[43], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[44], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[45], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[46], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[47], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[48], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[49], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[50], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[51], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[52], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[53], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[54], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[55], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[56], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[57], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[58], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[59], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[60], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[61], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[32], 63_bit_vec[62], 63_bit_vec[32] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[34], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[35], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[36], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[37], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[38], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[39], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[40], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[41], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[42], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[43], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[44], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[45], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[46], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[47], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[48], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[49], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[50], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[51], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[52], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[53], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[54], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[55], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[56], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[57], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[58], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[59], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[60], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[61], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[33], 63_bit_vec[62], 63_bit_vec[33] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[35], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[36], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[37], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[38], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[39], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[40], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[41], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[42], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[43], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[44], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[45], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[46], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[47], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[48], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[49], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[50], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[51], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[52], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[53], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[54], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[55], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[56], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[57], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[58], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[59], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[60], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[61], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[34], 63_bit_vec[62], 63_bit_vec[34] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[36], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[37], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[38], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[39], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[40], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[41], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[42], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[43], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[44], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[45], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[46], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[47], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[48], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[49], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[50], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[51], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[52], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[53], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[54], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[55], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[56], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[57], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[58], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[59], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[60], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[61], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[35], 63_bit_vec[62], 63_bit_vec[35] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[37], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[38], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[39], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[40], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[41], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[42], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[43], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[44], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[45], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[46], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[47], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[48], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[49], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[50], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[51], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[52], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[53], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[54], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[55], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[56], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[57], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[58], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[59], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[60], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[61], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[36], 63_bit_vec[62], 63_bit_vec[36] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[38], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[39], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[40], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[41], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[42], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[43], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[44], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[45], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[46], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[47], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[48], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[49], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[50], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[51], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[52], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[53], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[54], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[55], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[56], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[57], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[58], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[59], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[60], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[61], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[37], 63_bit_vec[62], 63_bit_vec[37] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[39], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[40], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[41], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[42], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[43], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[44], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[45], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[46], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[47], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[48], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[49], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[50], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[51], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[52], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[53], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[54], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[55], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[56], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[57], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[58], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[59], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[60], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[61], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[38], 63_bit_vec[62], 63_bit_vec[38] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[40], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[41], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[42], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[43], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[44], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[45], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[46], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[47], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[48], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[49], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[50], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[51], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[52], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[53], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[54], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[55], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[56], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[57], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[58], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[59], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[60], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[61], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[39], 63_bit_vec[62], 63_bit_vec[39] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[41], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[42], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[43], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[44], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[45], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[46], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[47], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[48], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[49], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[50], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[51], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[52], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[53], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[54], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[55], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[56], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[57], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[58], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[59], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[60], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[61], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[40], 63_bit_vec[62], 63_bit_vec[40] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[42], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[43], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[44], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[45], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[46], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[47], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[48], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[49], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[50], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[51], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[52], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[53], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[54], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[55], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[56], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[57], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[58], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[59], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[60], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[61], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[41], 63_bit_vec[62], 63_bit_vec[41] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[43], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[44], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[45], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[46], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[47], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[48], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[49], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[50], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[51], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[52], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[53], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[54], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[55], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[56], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[57], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[58], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[59], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[60], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[61], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[42], 63_bit_vec[62], 63_bit_vec[42] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[44], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[45], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[46], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[47], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[48], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[49], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[50], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[51], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[52], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[53], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[54], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[55], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[56], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[57], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[58], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[59], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[60], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[61], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[43], 63_bit_vec[62], 63_bit_vec[43] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[45], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[46], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[47], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[48], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[49], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[50], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[51], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[52], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[53], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[54], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[55], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[56], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[57], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[58], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[59], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[60], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[61], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[44], 63_bit_vec[62], 63_bit_vec[44] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[46], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[47], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[48], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[49], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[50], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[51], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[52], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[53], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[54], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[55], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[56], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[57], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[58], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[59], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[60], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[61], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[45], 63_bit_vec[62], 63_bit_vec[45] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[47], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[48], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[49], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[50], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[51], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[52], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[53], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[54], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[55], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[56], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[57], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[58], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[59], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[60], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[61], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[46], 63_bit_vec[62], 63_bit_vec[46] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[48], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[49], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[50], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[51], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[52], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[53], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[54], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[55], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[56], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[57], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[58], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[59], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[60], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[61], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[47], 63_bit_vec[62], 63_bit_vec[47] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[49], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[50], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[51], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[52], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[53], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[54], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[55], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[56], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[57], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[58], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[59], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[60], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[61], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[48], 63_bit_vec[62], 63_bit_vec[48] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[50], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[51], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[52], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[53], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[54], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[55], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[56], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[57], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[58], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[59], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[60], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[61], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[49], 63_bit_vec[62], 63_bit_vec[49] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[51], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[52], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[53], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[54], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[55], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[56], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[57], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[58], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[59], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[60], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[61], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[50], 63_bit_vec[62], 63_bit_vec[50] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[52], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[53], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[54], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[55], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[56], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[57], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[58], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[59], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[60], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[61], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[51], 63_bit_vec[62], 63_bit_vec[51] ); \
    SELECT( 63_bit_vec[52], 63_bit_vec[53], 63_bit_vec[52] ); \
    SELECT( 63_bit_vec[52], 63_bit_vec[54], 63_bit_vec[52] ); \
    SELECT( 63_bit_vec[52], 63_bit_vec[55], 63_bit_vec[52] ); \
    SELECT( 63_bit_vec[52], 63_bit_vec[56], 63_bit_vec[52] ); \
    SELECT( 63_bit_vec[52], 63_bit_vec[57], 63_bit_vec[52] ); \
    SELECT( 63_bit_vec[52], 63_bit_vec[58], 63_bit_vec[52] ); \
    SELECT( 63_bit_vec[52], 63_bit_vec[59], 63_bit_vec[52] ); \
    SELECT( 63_bit_vec[52], 63_bit_vec[60], 63_bit_vec[52] ); \
    SELECT( 63_bit_vec[52], 63_bit_vec[61], 63_bit_vec[52] ); \
    SELECT( 63_bit_vec[52], 63_bit_vec[62], 63_bit_vec[52] ); \
    SELECT( 63_bit_vec[53], 63_bit_vec[54], 63_bit_vec[53] ); \
    SELECT( 63_bit_vec[53], 63_bit_vec[55], 63_bit_vec[53] ); \
    SELECT( 63_bit_vec[53], 63_bit_vec[56], 63_bit_vec[53] ); \
    SELECT( 63_bit_vec[53], 63_bit_vec[57], 63_bit_vec[53] ); \
    SELECT( 63_bit_vec[53], 63_bit_vec[58], 63_bit_vec[53] ); \
    SELECT( 63_bit_vec[53], 63_bit_vec[59], 63_bit_vec[53] ); \
    SELECT( 63_bit_vec[53], 63_bit_vec[60], 63_bit_vec[53] ); \
    SELECT( 63_bit_vec[53], 63_bit_vec[61], 63_bit_vec[53] ); \
    SELECT( 63_bit_vec[53], 63_bit_vec[62], 63_bit_vec[53] ); \
    SELECT( 63_bit_vec[54], 63_bit_vec[55], 63_bit_vec[54] ); \
    SELECT( 63_bit_vec[54], 63_bit_vec[56], 63_bit_vec[54] ); \
    SELECT( 63_bit_vec[54], 63_bit_vec[57], 63_bit_vec[54] ); \
    SELECT( 63_bit_vec[54], 63_bit_vec[58], 63_bit_vec[54] ); \
    SELECT( 63_bit_vec[54], 63_bit_vec[59], 63_bit_vec[54] ); \
    SELECT( 63_bit_vec[54], 63_bit_vec[60], 63_bit_vec[54] ); \
    SELECT( 63_bit_vec[54], 63_bit_vec[61], 63_bit_vec[54] ); \
    SELECT( 63_bit_vec[54], 63_bit_vec[62], 63_bit_vec[54] ); \
    SELECT( 63_bit_vec[55], 63_bit_vec[56], 63_bit_vec[55] ); \
    SELECT( 63_bit_vec[55], 63_bit_vec[57], 63_bit_vec[55] ); \
    SELECT( 63_bit_vec[55], 63_bit_vec[58], 63_bit_vec[55] ); \
    SELECT( 63_bit_vec[55], 63_bit_vec[59], 63_bit_vec[55] ); \
    SELECT( 63_bit_vec[55], 63_bit_vec[60], 63_bit_vec[55] ); \
    SELECT( 63_bit_vec[55], 63_bit_vec[61], 63_bit_vec[55] ); \
    SELECT( 63_bit_vec[55], 63_bit_vec[62], 63_bit_vec[55] ); \
    SELECT( 63_bit_vec[56], 63_bit_vec[57], 63_bit_vec[56] ); \
    SELECT( 63_bit_vec[56], 63_bit_vec[58], 63_bit_vec[56] ); \
    SELECT( 63_bit_vec[56], 63_bit_vec[59], 63_bit_vec[56] ); \
    SELECT( 63_bit_vec[56], 63_bit_vec[60], 63_bit_vec[56] ); \
    SELECT( 63_bit_vec[56], 63_bit_vec[61], 63_bit_vec[56] ); \
    SELECT( 63_bit_vec[56], 63_bit_vec[62], 63_bit_vec[56] ); \
    SELECT( 63_bit_vec[57], 63_bit_vec[58], 63_bit_vec[57] ); \
    SELECT( 63_bit_vec[57], 63_bit_vec[59], 63_bit_vec[57] ); \
    SELECT( 63_bit_vec[57], 63_bit_vec[60], 63_bit_vec[57] ); \
    SELECT( 63_bit_vec[57], 63_bit_vec[61], 63_bit_vec[57] ); \
    SELECT( 63_bit_vec[57], 63_bit_vec[62], 63_bit_vec[57] ); \
    SELECT( 63_bit_vec[58], 63_bit_vec[59], 63_bit_vec[58] ); \
    SELECT( 63_bit_vec[58], 63_bit_vec[60], 63_bit_vec[58] ); \
    SELECT( 63_bit_vec[58], 63_bit_vec[61], 63_bit_vec[58] ); \
    SELECT( 63_bit_vec[58], 63_bit_vec[62], 63_bit_vec[58] ); \
    SELECT( 63_bit_vec[59], 63_bit_vec[60], 63_bit_vec[59] ); \
    SELECT( 63_bit_vec[59], 63_bit_vec[61], 63_bit_vec[59] ); \
    SELECT( 63_bit_vec[59], 63_bit_vec[62], 63_bit_vec[59] ); \
    SELECT( 63_bit_vec[60], 63_bit_vec[61], 63_bit_vec[60] ); \
    SELECT( 63_bit_vec[60], 63_bit_vec[62], 63_bit_vec[60] ); \
    SELECT( 63_bit_vec[61], 63_bit_vec[62], 63_bit_vec[61] );

module gravity_ENCoder( o, i );
    input      [62:0]   i;
    output     [ 5:0]   o;
    `sanitize(i)
    OR32 o0( { o[0], \
    i[0],  i[2],  i[4],  i[6],  i[8],  i[10], i[12], i[14], \
    i[16], i[18], i[20], i[22], i[24], i[26], i[28], i[30], \
    i[32], i[34], i[36], i[38], i[40], i[42], i[44], i[46], \
    i[48], i[50], i[52], i[54], i[56], i[58], i[60], i[62]
    } );
    OR32 o1( { o[1], \
    i[1],  i[2],  i[5],  i[6],  i[9],  i[10], i[13], i[14], \
    i[17], i[18], i[21], i[22], i[25], i[26], i[29], i[30], \
    i[33], i[34], i[37], i[38], i[41], i[42], i[45], i[46], \
    i[49], i[50], i[53], i[54], i[57], i[58], i[61], i[62]
    } );
    OR32 o2( { o[2], \
    i[3],  i[4],  i[5],  i[6],  i[11], i[12], i[13], i[14], \
    i[19], i[20], i[21], i[22], i[27], i[28], i[29], i[30], \
    i[35], i[36], i[37], i[38], i[43], i[44], i[45], i[46], \
    i[51], i[52], i[53], i[54], i[59], i[60], i[61], i[62]
    } );
    OR32 o3( { o[3], \
    i[7],  i[8],  i[9],  i[10], i[11], i[12], i[13], i[14], \
    i[23], i[24], i[25], i[26], i[27], i[28], i[29], i[30], \
    i[39], i[40], i[41], i[42], i[43], i[44], i[45], i[46], \
    i[55], i[56], i[57], i[58], i[59], i[60], i[61], i[62]
    } );
    OR32 o4( { o[4], \
    i[15], i[16], i[17], i[18], i[19], i[20], i[21], i[22], \
    i[23], i[24], i[25], i[26], i[27], i[28], i[29], i[30], \
    i[47], i[48], i[49], i[50], i[51], i[52], i[53], i[54], \
    i[55], i[56], i[57], i[58], i[59], i[60], i[61], i[62]
    } );
    OR32 o5( { o[5], \
    i[31], i[32], i[33], i[34], i[35], i[36], i[37], i[38], \
    i[39], i[40], i[41], i[42], i[43], i[44], i[45], i[46], \
    i[47], i[48], i[49], i[50], i[51], i[52], i[53], i[54], \
    i[55], i[56], i[57], i[58], i[59], i[60], i[61], i[62]
    } );
endmodule
