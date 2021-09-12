# include <stdio.h>
int main(){
  //this program is more compact
  //we put c = getchar() inside the while condition
  //
  int c;
  //note that in the absence of parentheses, != has a higher precedence than = assignment
  //thus, c = getchar() != EOF is equal to
  //c = (getchar() != EOF)
  while ((c = getchar()) != EOF)
    putchar(c);
}
/*
to compare from our previous version:

int main(){
  int c;
  c = getchar();
  while (c!=EOF){
    putchar(c);
    c=getchar();
  }
}
 */
