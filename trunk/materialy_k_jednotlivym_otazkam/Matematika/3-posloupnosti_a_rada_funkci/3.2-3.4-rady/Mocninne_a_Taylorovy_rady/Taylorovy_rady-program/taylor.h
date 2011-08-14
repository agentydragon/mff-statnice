
#include <string>  // 'string'
using namespace std;

class Function{
public:
  virtual double getValue(const int a) const{return 0;}
  virtual Function* getDerivation() const{}
  virtual string getName() const{return (string("zadna"));}
};


class ExpX: public Function{
  double getValue(const int a) const;
  Function* getDerivation() const;
  string getName() const;
};


class MyCos;


class MySin: public Function{
  short sign;
public:  
  MySin(const short _sign);
  double getValue(const int a) const;
  Function* getDerivation() const;
  string getName() const;
};


class MyCos: public Function{
  short sign;
public:  
  MyCos(const short _sign);
  double getValue(const int a) const;
  Function* getDerivation() const;
  string getName() const;
};


class Taylor{
  const Function* f;
  double a;  // center (point)
  int n;  // number of items
  double x;  // point of function
  
  int factorial(const int n) const; 
  // index must be always positive
  double power(const double base,int index) const;
public:
  Taylor(const Function* _f, const double _a, const int _n, const double _x);
  double calculate();
};
