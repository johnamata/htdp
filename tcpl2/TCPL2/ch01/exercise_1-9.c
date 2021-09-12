# include <stdio.h>

//copies input to its output, replacing each string of one or more blanks by a single blank

int main(){
  int i, blankcount;
  blankcount = 0;
  //copy characters 1 by 1
  //if we see a blank, we have 1 blank
  //then check if there are more blanks, ignore them til we have a non-blank
  //print the next letter then reset the blank count
  while ((i=getchar()) != EOF){
    if (i != ' '){
      putchar(i);
      blankcount = 0;
    } else {
      if(blankcount <= 0)
	printf(" ");
      blankcount++;
    }
  }
  printf("\n");
}
