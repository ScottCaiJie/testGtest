#include "test.h"

#if 1 
TEST(FooTest,HandleNoneZeroInput)
{
   EXPECT_EQ(2,Foo(4,10));
   EXPECT_EQ(6,Foo(30,18));
}
int main(int argc,char*argv[])
{
   testing::InitGoogleTest(&argc,argv);
   std::cout<<__FILE__<<std::endl;
   return RUN_ALL_TESTS();
}

#endif
#if 0
int main(int agrc, char** argv){
	int x = 10;
	int y = 20;
	int result = Foo(x,y);
	std::cout<<result<<std::endl;
	std::cout<<"end 1"<<std::endl;
	std::cout<<"end 2"<<std::endl;
	std::cout<<"end 3"<<std::endl;
	std::cout<<"end 4"<<std::endl;
	std::cout<<"end 5"<<std::endl;
	std::cout<<"end 6"<<std::endl;
	return 0;
}
#endif 
