# include <stdio.h>

int main(){
  //produces same result as others but with for statement
  int fahr;
  //for is composed of 3 parts:
  //initialization; condition to control the loop; increment step
  for (fahr = 0; fahr <= 300; fahr = fahr + 20)
    printf("%3d %6.1f\n", fahr, (5.0/9.0) * (fahr-32));
}
