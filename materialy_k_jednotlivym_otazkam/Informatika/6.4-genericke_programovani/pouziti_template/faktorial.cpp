
template<int N> class factorial {
public:
  enum {value=N*factorial<N-1>::value};
};

template<> class factorial<0> {
public:
  enum {value=1};
};

#include <iostream>

using namespace std;

#define n 4


int main() {
  const int c = factorial<n>::value;
  cout << "Faktorial " << n << " = " << c << endl;
}
