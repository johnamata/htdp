# include <stdio.h>

#define YES 1
#define NO 0

//gets a string and prints input the input words, one word per line
int main()
{
  int character, ifWord;
  ifWord = NO; //tracks if we're on a word, for now it's not
  while ((character = getchar()) != EOF){
    if(character == ' ' || character =='\n' || character == '\t'){
      ifWord = NO;
      printf("\n");
    } else {	    
      ifWord = YES;
      printf("%c", character);
    }
  }
}
