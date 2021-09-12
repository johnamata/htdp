# include <stdio.h>

//write program where we output the input + replace each tab by \t, backspace by \b, and EACH backslash by \\
//

int main(){
  int i;
  //note, the else if statement still hasnt been introduced by this point in the book but i'm still gonna use it as the alternative is nesting some ifs
  while((i = getchar()) != EOF){    
    if(i == '\t')
      printf("\\t");
    else if(i == '\b')
      printf("\\b");
    else if(i == '\\')
      printf("\\\\");
    //because apparently in printf, 2 backslashes will print 1 backslash
    else
      putchar(i);
  }
}
