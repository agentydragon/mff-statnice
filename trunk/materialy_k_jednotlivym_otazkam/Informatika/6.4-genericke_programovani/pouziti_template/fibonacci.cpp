
template<int N> class fibonacci {
public:
  enum {value = fibonacci<N-1>::value + fibonacci<N-2>::value};
};

template<> class fibonacci<0> {
public:
  enum {value=0};
};

template<> class fibonacci<1> {
public:
  enum {value=1};
};

#include <iostream>

using namespace std;

#define n 7


int main() {
/*  
  fibonacci<n> fibInstance;
  const int c = fibInstance.value;
*/  
  const int c = fibonacci<n>::value;
  cout << n << ". Fibonacciho cislo = " << c << endl;
}
