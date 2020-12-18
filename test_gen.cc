/*!
 * @synopsis   Generate gravity_ENCoder for 6-bit signal
 * @author     b05901105, National Taiwan University, Department of Electrical Engineering
 * @verbatim   See also `sorting.v`
 */

#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

int main(int argc, char** argv){
    string input, output;
    if( argc == 1 ){
        input = "vec_63_bits", output = "vec_63_bits";
    }else{
        input  = argv[1];
        output = argv[2];
    }
    int d = 0;
    for( int i = 0; i <= 62; ++i ){
        int ddd = d, param_cnt = 0;
        for( int j = i+1; j <= 62; ++j, ++d ){
            cout << "    foobar f" << d << "( dummy[" << setw(2) << right << d << "], ";
            cout << input << "[" << setw(2) << right << j << "], ";
            cout << input << "[" << setw(2) << right << i << "] );\n";
        }

        cout << "    AN";

        if      ( d - ddd > 32 ) param_cnt = 64;
        else if ( d - ddd > 16 ) param_cnt = 32;
        else if ( d - ddd > 5 )  param_cnt = 16;
        else if ( d - ddd >= 2 ) param_cnt = d-ddd;
        else                     param_cnt = 2;

        cout << param_cnt;
        cout << "   g" << i << "( o[" << i << "], ";
        if( param_cnt > 5 ){
            cout << "{ ";
        }
        if( i != 62 ){
            for( int k = 0, j = i+1; k < param_cnt; ++j, ++ddd, ++k ){
                if( ddd < d ){
                    cout << "dummy[" << ddd << "]";
                }else{
                    cout << "1'b1";
                }
                if( k != param_cnt-1 ){
                    cout << ", ";
                }else{
                    if ( param_cnt > 5 ){
                        cout << " }";
                    }
                    cout << " );\n";
                }
            }
        }else{  // ( i==62 )
            cout << "vec_63_bits[62], 1'b1 );\n";
        }
    }
    return 0;
}
