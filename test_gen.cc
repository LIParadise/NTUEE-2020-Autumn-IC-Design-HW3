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
        int ddd = d;
        for( int j = i+1; j <= 62; ++j, ++d ){
            cout << "    foobar f" << d << "( dummy[" << setw(2) << right << d << "], ";
            cout << input << "[" << setw(2) << right << j << "], ";
            cout << input << "[" << setw(2) << right << i << "] );\n";
        }
        cout << "    AN64 an" << i << "( o[" << i << "], {";
        for( int k = 0, j = i+1; k < 64; ++j, ++ddd, ++k ){
            if( ddd < d ){
                cout << "dummy[" << ddd << "]";
            }else{
                cout << "1'b1";
            }
            if( k != 64-1 ){
                cout << ", ";
            }else{
                cout << " } );\n";
            }
        }
    }
    return 0;
}
