/*
uses the formula oC=(5/9)(oF-32) to print the following table of Fahrenheit temperatures and their centigrade or Celsius equivalent

this program introduces

- comments (though i already used them in other programs0
- declarations
- variables
- arithmetic expressios
- loops
- formatted output
 */

#include <stdio.h>
/* print Fahrenheit-Celsius table
   for fahr = 0, 20, ..., 300 */
int main()
{
  //in the book, it says that in c, variables must be declared before they are used. I just tried and int add420 = 420 and it looks like I can declare and then initialise a variable in 1 line.
  //declaration is announcing the type of the variables
  int fahr, celsius; //int means variables are integers
  int lower, upper, step;
  lower = 0; //asignment statement where we set variables to their initial values, inthis case,0
  upper = 300;
  step = 20;
  /* lower limit of temperature scale */
  /* upper limit */
  /* step size */
  fahr = lower;
  //while loop
  //we test the condition (one in parentheses) inside the while loop and if true, it will do the statements/operations in the body of the while loop
  while (fahr <= upper) {
    //staements/operations to do if while loop condition is true
    //always indent statements by one tab to see which are inside the while loop
    celsius = 5 * (fahr-32) / 9;
    //btw, printf is not part of the C language but rather a function from a library of functions defined in the ANSI standard
    //printf() for output formatting
    printf("%d\t%d\n", fahr, celsius);
    //% indicates the argument to be sustituted in what form it is to be printed
    //%d stands for integer
    //\t means tab, and \n is newline
    //%d is for fahr, afterwards a tab, then the second %d is for celcius, followed by a newline character
    fahr = fahr + step;
    //indentation emphasises the LOGICAL STRUCTURE of the program
  }
}
