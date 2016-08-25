#include "sys/alt_stdio.h"
#define switches (volatile char *) 0x0003000
#define leds (volatile char *) 0x0003010

int main()
{ 
  alt_putstr("Hello from Nios II!\n");


  char c;
  c = alt_getchar();

  if (c == 'G') {
	  while (1) {
		  if (((*switches) & 1) == 1) {
			  *leds = 0 - (*switches >> 1);
		  } else {
			  *leds = *switches;
		  }
	  }
  }
  return 0;
}
