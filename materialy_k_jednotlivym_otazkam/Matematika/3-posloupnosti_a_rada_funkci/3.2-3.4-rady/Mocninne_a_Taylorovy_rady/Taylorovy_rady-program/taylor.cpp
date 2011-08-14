#include <iostream>  // 'cout',...
#include <stdio.h>  // 'printf'
#include <math.h>  // 'cos', 'sin'
#include "taylor.h"

#define PI 3.14159265
#define ERRORNUMBER -1000


double ExpX::getValue(const int a) const{
  if (a == 0){
    return 1;
  }else return ERRORNUMBER;
}

Function* ExpX::getDerivation() const{
  return (new ExpX());
}

string ExpX::getName() const{
  return (string("expX"));
}


  
MySin::MySin(const short _sign){
  if ((_sign != -1) && (_sign != 1)){
    std::cerr << "Incorrect parameter of MySin constructor." << std::endl;
  }
  sign = _sign;
}
  
// angle 'a' is in radians
double MySin::getValue(const int a) const{
  return sign*(sin(a));
}
  
Function* MySin::getDerivation() const{
  return (new MyCos(sign));
}

string MySin::getName() const{
  return (string("sinus"));
}



MyCos::MyCos(const short _sign){
  if ((_sign != -1) && (_sign != 1)){
    std::cerr << "Incorrect parameter of MySin constructor." << std::endl;
  }
  sign = _sign;
}
  
// angle 'a' is in radians
double MyCos::getValue(const int a) const{
  return sign*(cos(a));
}
  
Function* MyCos::getDerivation() const{
  short sinSign = (-1)*sign;
  return (new MySin(sinSign));
}

string MyCos::getName() const{
  return (string("cosinus"));
}



Taylor::Taylor(const Function* _f, const double _a, const int _n, const double _x){
  f = _f;
  a = _a;
  n = _n;
  x = _x;
}

int Taylor::factorial(const int n) const{
  if (n == 0){
    return 1;
  }else{
    return n*factorial(n-1);
  }
}
  
// index must be always positive
double Taylor::power(const double base,int index) const{
  if (index == 0){
    return 1;
  }
    
  double result = base;
  while(index != 1){
    result = result * base;
    index--;
  }
  return result;
}
  
double Taylor::calculate(){
  double sum = 0;
  double derivationValue = f->getValue(a);
  for(int i = 0; i <= n; i++){
    double powerValue = power(x-a,i);
    sum = sum + (derivationValue*powerValue)/factorial(i);

    // printing of actual results
//    printf("%2d.step - %.20f; derivationValue=%f; factorial(%2d)=%d\n",i,sum,derivationValue,i,factorial(i));
//    printf("powerValue=%f (x-a=%f), i=%d\n",powerValue,x-a,i);

    // next derivation
    Function* fDer = f->getDerivation();
    delete f;
    f = fDer;
    derivationValue = f->getValue(a);
  }
  return sum;
}
