
#include <stdio.h>  // 'printf'
#include "taylor.h"

#define PI 3.14159265

int main()
{

  // example of Euler's number
  Function* f1 = new ExpX();
  double a = 0;
  int n = 12;  // max 12 because of factorial
  double x = 2;


/*
  // example of sinus
  short sign = +1;
  Function* f1 = new MySin(sign);
  double a = 0;
  int n = 12;  // max is 12 because of factorial
  double x = PI/2;  // = 90 angles; we must use radians, otherwise we'll get a big number
*/

/*
  // example of cosinus
  short sign = +1;
  Function* f1 = new MyCos(sign);
  double a = 0;
  int n = 12;  // max is 12 because of factorial
  double x = PI/2; // = 90 angles; we must use radians, otherwise we'll get a big number
*/

  string functionName = f1->getName();

  Taylor taylor_serie(f1, a, n, x);
  double eulers_number = taylor_serie.calculate();

  //outputs results to screen
  printf("\nEulerovo cislo funkce '%s' o stredu '%f' jako vysledek Taylorova polynomu radu '%d' v bode '%f': %.20f\n",functionName.c_str(),a,n,x,eulers_number);
  
  return 0;
}
