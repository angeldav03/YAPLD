#include<iostream>
#include<chrono>

using namespace std;
using namespace std::chrono;

unsigned long fibon(unsigned long inp){
    if(inp == 0) return 0;
    if(inp == 1) return 1;
    else return fibon(inp - 1) + fibon(inp - 2);
}


int main(void){
    unsigned long var = 0;
    cout << "Enter the value: " << endl;
    cin >> var;
    auto start = high_resolution_clock::now();
    cout << "Result: " << fibon(var) << endl;
    auto stop = high_resolution_clock::now();

    auto msecs = duration_cast<milliseconds>(stop - start);
    cout << "The fibonacci took this much time: " << msecs.count() << endl;

    return 0;
}