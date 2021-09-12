//better version of fahrenheit_celcius.c
//this one has width formatting at printf
//it also is more accurate, because the previous one uses integer arithmetic
#include <stdio.h>
/* print Fahrenheit-Celsius table
   for fahr = 0, 20, ..., 300; floating-point version */
int main() {
  float fahr, celsius;
  float lower, upper, step;
  lower = 0;
  upper = 300;
  step = 20;
  /* lower limit of temperatuire scale */
  /* upper limit */
  /* step size */
  fahr = lower;
  while (fahr <= upper) {
    celsius = (5.0/9.0) * (fahr-32.0);
    //better formatting for printf
    //this time we augment each %d with a width, numbers are printed after the % will right-justify the fields
    //numbers represent characters
    //thus %6.2f means 6 characters wide and the 2 characters after the decimal point, meaning our result can be 104.44, and if we do %6.3f, the result can be 104.444
    printf("%3.0f %6.2f\n", fahr, celsius);
    //notice that %d is now %f, which means float
    //%6.2f means 
    //we use FLOATING POINT arithmetic instead of integer arithmetic from the 1st version (fahrenheit_celcius.c) for better accuracy
    //if int, the int is converted to float before the operation is done
    fahr = fahr + step;
  }
}
