#include <iostream>
#include <stdio.h>
#include <windows.h>

using _funcPTR = double (*)(double, double, double, double);
using FT = double (*)(_funcPTR, double, double);

constexpr double g = 9.82;

double func(double x, double y, const double _m, const double _alpha)
{
    return ::g - _alpha*y/_m;
}

double _euler(double mass, double alpha)
{
    FT local_func;
    HMODULE hDLL = LoadLibrary("libeuler.dll");
    if (hDLL == NULL)
    {
        std::cout << "Unable to load lib";
        getchar();
        return 1;
    }
    local_func = (FT)GetProcAddress(hDLL, "_eulerMethod");
    if (local_func == NULL)
    {
        std::cout << "Error while getting function address" << std::endl;
        getchar();
        return 1;
    }
    auto _res = local_func(func, mass, alpha);
    return _res;
}

double _rungeKutta(double mass, double alpha)
{
    FT local_func;
    HMODULE hDLL = LoadLibrary("librunge_kutta.dll");
    if (hDLL == NULL)
    {
        std::cout << "Unable to load lib";
        getchar();
        return 1;
    }
    local_func = (FT)GetProcAddress(hDLL, "_rungeKuttaMethod");
    if (local_func == NULL)
    {
        std::cout << "Error while getting function address" << std::endl;
        getchar();
        return 1;
    }
    auto _res = local_func(func, mass, alpha);
    return _res;
}

int main()
{
    double _mass = 3;
    std::cout << "Enter the mass:    ";
    std::cin >> _mass;

    double _alpha = 0.7;
    std::cout << "\nEnter the alpha:    ";
    std::cin >> _alpha;

    std::cout <<_euler(_mass, _alpha) << std::endl << _rungeKutta(_mass, _alpha) << std::endl;
    getchar();
    return 0;
}