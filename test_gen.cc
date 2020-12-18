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
        input = "63_bit_vec", output = "63_bit_vec";
    }else{
        input = argv[1], output = argv[2];
    }
    int d = 0;
    for( int i = 0; i <= 62; ++i ){
        for( int j = i+1; j <= 62; ++j, ++d ){
            cout << "    SELECT( " << output << "[" << setw(2) << right << i << "], ";
            cout << input << "[" << setw(2) << right << j << "], ";
            cout << input << "[" << setw(2) << right << i << "] ); \\\n";
        }
    }
    return 0;
}
