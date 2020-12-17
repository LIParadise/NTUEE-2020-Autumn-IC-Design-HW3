`timescale 1ns/1ps

module sorting(rank0, rank1, rank2, rank3, rank4, i0, i1, i2, i3, i4);
//DO NOT CHANGE!
	input  [5:0] i0, i1, i2, i3, i4;
	output [5:0] rank0, rank1, rank2, rank3, rank4;
//---------------------------------------------------


endmodule

module gravity_DECoder( i, o );
    input      [5:0]  i;
    output reg [63:0] o;
    wire       [63:0] ret;
    wire       [63:0] dummy;
    wire              A, B, C, D, E, F;
    wire              AB, AC, AD, AE, AF, BC, BD, BE, BF, CD, CE, CF, DE, DF, EF;
    wire              ABC, ABD, ABE, ABF, ACD, ACE, ACF, ADE, ADF, AEF;
    wire              BCD, BCE, BCF, BDE, BDF, BEF;
    wire              CDE, CDF, CEF;
    wire              DEF;
    wire              ABCD, ABCE, ABCF, ABDE, ABDF, ABEF, ACDE, ACDF, ACEF, ADEF, BCDE, BCDF, BCEF, BDEF, CDEF;
    assign A = i[5];
    assign B = i[4];
    assign C = i[3];
    assign D = i[2];
    assign E = i[1];
    assign F = i[0];
    AN2 gate_AB ( AB, A, B );
    AN2 gate_AC ( AC, A, C );
    AN2 gate_AD ( AD, A, D );
    AN2 gate_AE ( AE, A, E );
    AN2 gate_AF ( AF, A, F );
    AN2 gate_BC ( BC, B, C );
    AN2 gate_BD ( BD, B, D );
    AN2 gate_BE ( BE, B, E );
    AN2 gate_BF ( BF, B, F );
    AN2 gate_CD ( CD, C, D );
    AN2 gate_CE ( CE, C, E );
    AN2 gate_CF ( CF, C, F );
    AN2 gate_DE ( DE, D, E );
    AN2 gate_DF ( DF, D, F );
    AN2 gate_EF ( EF, E, F );
    AN3 gate_ABC( ABC, A, B, C );
    AN3 gate_ABD( ABD, A, B, D );
    AN3 gate_ABE( ABE, A, B, E );
    AN3 gate_ABF( ABF, A, B, F );
    AN3 gate_ACD( ACD, A, C, D );
    AN3 gate_ACE( ACE, A, C, E );
    AN3 gate_ACF( ACF, A, C, F );
    AN3 gate_ADE( ADE, A, D, E );
    AN3 gate_ADF( ADF, A, D, F );
    AN3 gate_AEF( AEF, A, E, F );
    AN3 gate_BCD( BCD, B, C, D );
    AN3 gate_BCE( BCE, B, C, E );
    AN3 gate_BCF( BCF, B, C, F );
    AN3 gate_BDE( BDE, B, D, E );
    AN3 gate_BDF( BDF, B, D, F );
    AN3 gate_BEF( BEF, B, E, F );
    AN3 gate_CDE( CDE, C, D, E );
    AN3 gate_CDF( CDF, C, D, F );
    AN3 gate_CEF( CEF, C, E, F );
    AN3 gate_DEF( DEF, D, E, F );
    AN4 gate_ABCD( ABCD, A, B, C, D);
    AN4 gate_ABCE( ABCE, A, B, C, E);
    AN4 gate_ABCF( ABCF, A, B, C, F);
    AN4 gate_ABDE( ABDE, A, B, D, E);
    AN4 gate_ABDF( ABDF, A, B, D, F);
    AN4 gate_ABEF( ABEF, A, B, E, F);
    AN4 gate_ACDE( ACDE, A, C, D, E);
    AN4 gate_ACDF( ACDF, A, C, D, F);
    AN4 gate_ACEF( ACEF, A, C, E, F);
    AN4 gate_ADEF( ADEF, A, D, E, F);
    AN4 gate_BCDE( BCDE, B, C, D, E);
    AN4 gate_BCDF( BCDF, B, C, D, F);
    AN4 gate_BCEF( BCEF, B, C, E, F);
    AN4 gate_BDEF( BDEF, B, D, E, F);
    AN4 gate_CDEF( CDEF, C, D, E, F);

    OR6 ret0(  ret[0],  A, B, C, D, E, F );
    OR5 ret1(  ret[1],  E, D, C, B, A );
    OR5 ret2(  ret[2],  D, C, B, A, EF );
    OR4 ret3(  ret[3],  D, C, B, A );
    OR5 ret4(  ret[4],  C, B, A, DF, DE );
    OR4 ret5(  ret[5],  C, B, A, DE );
    OR4 ret6(  ret[6],  C, B, A, DEF );
    OR3 ret7(  ret[7],  C, B, A );
    OR5 ret8(  ret[8],  B, A, CF, CE, CD );
    OR4 ret9(  ret[9],  B, A, CE, CD );
    OR4 ret10( ret[10], B, A, CD, CEF );
    OR3 ret11( ret[11], B, A, CD );
    OR4 ret12( ret[12], B, A, CDF, CDE );
    OR3 ret13( ret[13], B, A, CDE );
    OR3 ret14( ret[14], B, A, CDEF );
    OR2 ret15( ret[15], B, A );
    OR5 ret16( ret[16], A, BF, BE, BD, BC );

endmodule

module gravity_ENCoder( i, o );
    input      [63:0] i;
    output reg [5:0]  o;
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
