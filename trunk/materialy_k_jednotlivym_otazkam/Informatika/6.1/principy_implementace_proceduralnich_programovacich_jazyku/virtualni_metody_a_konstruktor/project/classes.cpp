
#include <stdio.h>


class BaseClass{
public:
	BaseClass(){
		Test();
    }
	virtual void Test(){
        printf("From BaseClass\n");
    }
};

class DerivedClass: public BaseClass{
	/*virtual*/ void Test(){
        printf("From DerivedClass\n");
    }
};
