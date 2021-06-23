#include "test.h"

#if 1
int Foo(int a,int b)
{
   if(0 == a||0 == b)
   throw "don't do that";
   int c = a%b;
   if (0 == c)
  {
     return b;
  }
  return Foo(b,c);
}
#endif

#if 0
int Foo(int a, int b){
	
	return a*b;
}
#endif
