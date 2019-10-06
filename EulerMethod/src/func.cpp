#include <iostream>
#include <windows.h>

#define DLLEXPORT extern "C" __declspec(dllexport)

using namespace std;
using _funcPTR = double (*)(double, double, double, double);

DLLEXPORT double _eulerMethod(_funcPTR fcn, double _mass, double _alpha)
{
    int n;
    double x, y, h;

    h = .01;
    n = 10;
    x = 0;
    y = 0;

    for (int i = 0; i < 100; i++)
    {
        y += h * fcn(x, y, _mass, _alpha);
        x += h;
    }
    return y;
}