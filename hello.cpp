//hello.cpp
#include <iostream>
#include "hello.h"
using namespace std;

Sayhello::Sayhello()
    {
    cout << "HelloWorld!\n";
    }

void Sayhello::Version()
    {
    cout << "Compile date / time=" << __DATE__;
    cout << " / " << __TIME__ << ".\n";

#ifdef DEBUG
    cout << "Running in debug build" << std::endl;
#endif

#ifdef RELEASE
    cout << "Running in release build" << std::endl;
#endif
    }

