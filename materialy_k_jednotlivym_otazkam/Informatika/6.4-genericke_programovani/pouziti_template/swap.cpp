
#include <string>	// bacause of 'string'
#include <iostream>	// bacause of 'cout'

using namespace std;

template<typename T> void Swap(T & a, T & b){ //"&" passes parameters by reference
	T temp = b;
	b = a;
	a = temp;
}


int main(){
	string hello = "world!", world = "Hello, ";
	Swap( world, hello );
	cout << hello << world << endl; //Output is "Hello, world!"
	// return 0; - zvlastni, ze tento radek zde byt nemusi
}
