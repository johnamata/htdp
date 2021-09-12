# include <stdio.h>

//the ff next 3 uncommented lines of code are symbolic names or constants
//format to define them is
//define name replacement list
#define LOWER 0 //lower limit
#define UPPER 300 //upper limit
#define STEP 20 //stepsize
//thet're written in UPPERCASE to be distinct from variables
int main()
{
  int fahr;
  for(fahr = LOWER; fahr <= UPPER; fahr = fahr + STEP)
    printf("%3d %6.1f\n", fahr, (5.0/9.0)*(fahr-32));
}
