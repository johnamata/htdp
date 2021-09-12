# include <stdio.h>
//^tells the compiler to include information about the standard input/output library

int main()
//functions contain statements that specify the computing operations to be done. main is a function and ``main'' is special - your program begins executing at the beginning of main.
{
  //A function is called by naming it, followed by a parenthesized list of arguments, so this calls the function printf with the argument "hello, world\n".
  //we communicate data in functions via arguments, which are the ones inside the parentheses after a function name. printf is a function in the library and the "hello, world\n" is its argument
  printf("hello, world\n");
  //printf prints the argument to the console
  //the \n in the string is C notation for the newline character
}
