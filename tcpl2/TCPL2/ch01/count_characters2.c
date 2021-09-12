#include <stdio.h>

//for loop implementation
//notice the for loop body is empty, as we've already done what we need onthe for loop initialisation and incrementation
//we use double this time too
int main(){
  double nc; //double precision float
  for (nc = 0; getchar() != EOF; ++nc)
    ; //isolated semicolon, called a null statement
  printf("%.0f\n", nc); //double uses %.0f for printf()
  //programs should act intelligently when given ZERO input, notice how while and for loop checks first if it's empty. they test at the top of the loop before proceeding to the body
}
