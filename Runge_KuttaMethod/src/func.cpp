#include <iostream>
#include <fstream>
#include <string>
#include <windows.h>

#define DLLEXPORT extern "C" __declspec(dllexport)

using namespace std;
using _funcPTR = double (*)(double, double, double, double);

DLLEXPORT double _rungeKuttaMethod(_funcPTR fcn, double _mass, double _alpha)
{
    double x = 0, y = 0;
    double h = 0.01;
    std::fstream _fstream;
    std::string _file_path;

    std::cout << "Enter the file name\n";
    std::cin >> _file_path;
    _fstream.open(_file_path + ".csv", std::fstream::out);

    if (!_fstream.is_open())
    {
        std::cout << "Couldn't open this file\n";
        return 1;
    }

    _fstream << "x:  y:\n"; 

    for (x = 0; x <= 1; x += h)
    {
        double k1 = fcn(x, y, _mass, _alpha);
        double k2 = fcn(x + h/2, y + h/2*k1, _mass, _alpha);
        double k3 = fcn(x + h/2, y + h/2*k2, _mass, _alpha);
        double k4 = fcn(x + h, y + h*k3, _mass, _alpha);

        y += h/6 * (k1 + 2*k2 + 2*k3 + k4);
        _fstream << std::to_string(x) << "," << std::to_string(y) << std::endl;
    }

    _fstream.close();

    return y;
}