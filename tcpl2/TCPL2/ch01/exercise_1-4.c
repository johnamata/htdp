#include <stdio.h>

int main(){
  float fahr, celsius;
  float lower, upper, step;

  //i probably should change this one to match for celsius
  lower = 0;
  upper = 300;
  step = 20;

  fahr = lower;
  printf("celsius fahrenheit \n");
  while (fahr <= upper) {
    //formula: Formula	(0°C × 9/5) + 32 = 32°F
    fahr = celsius * (9.0 / 5.0) + 32.0;
    printf("%6.2f\t%2.1f\n", celsius, fahr);
    celsius = celsius + step;
  }
}
