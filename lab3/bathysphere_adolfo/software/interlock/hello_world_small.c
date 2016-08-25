/* 
 * "Small Hello World" example. 
 * 
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example 
 * designs. It requires a STDOUT  device in your system's hardware. 
 *
 * The purpose of this example is to demonstrate the smallest possible Hello 
 * World application, using the Nios II HAL library.  The memory footprint
 * of this hosted application is ~332 bytes by default using the standard 
 * reference design.  For a more fully featured Hello World application
 * example, see the example titled "Hello World".
 *
 * The memory footprint of this example has been reduced by making the
 * following changes to the normal "Hello World" example.
 * Check in the Nios II Software Developers Manual for a more complete 
 * description.
 * 
 * In the SW Application project (small_hello_world):
 *
 *  - In the C/C++ Build page
 * 
 *    - Set the Optimization Level to -Os
 * 
 * In System Library project (small_hello_world_syslib):
 *  - In the C/C++ Build page
 * 
 *    - Set the Optimization Level to -Os
 * 
 *    - Define the preprocessor option ALT_NO_INSTRUCTION_EMULATION 
 *      This removes software exception handling, which means that you cannot 
 *      run code compiled for Nios II cpu with a hardware multiplier on a core 
 *      without a the multiply unit. Check the Nios II Software Developers 
 *      Manual for more details.
 *
 *  - In the System Library page:
 *    - Set Periodic system timer and Timestamp timer to none
 *      This prevents the automatic inclusion of the timer driver.
 *
 *    - Set Max file descriptors to 4
 *      This reduces the size of the file handle pool.
 *
 *    - Check Main function does not exit
 *    - Uncheck Clean exit (flush buffers)
 *      This removes the unneeded call to exit when main returns, since it
 *      won't.
 *
 *    - Check Don't use C++
 *      This builds without the C++ support code.
 *
 *    - Check Small C library
 *      This uses a reduced functionality C library, which lacks  
 *      support for buffering, file IO, floating point and getch(), etc. 
 *      Check the Nios II Software Developers Manual for a complete list.
 *
 *    - Check Reduced device drivers
 *      This uses reduced functionality drivers if they're available. For the
 *      standard design this means you get polled UART and JTAG UART drivers,
 *      no support for the LCD driver and you lose the ability to program 
 *      CFI compliant flash devices.
 *
 *    - Check Access device drivers directly
 *      This bypasses the device file system to access device drivers directly.
 *      This eliminates the space required for the device file system services.
 *      It also provides a HAL version of libc services that access the drivers
 *      directly, further reducing space. Only a limited number of libc
 *      functions are available in this configuration.
 *
 *    - Use ALT versions of stdio routines:
 *
 *           Function                  Description
 *        ===============  =====================================
 *        alt_printf       Only supports %s, %x, and %c ( < 1 Kbyte)
 *        alt_putstr       Smaller overhead than puts with direct drivers
 *                         Note this function doesn't add a newline.
 *        alt_putchar      Smaller overhead than putchar with direct drivers
 *        alt_getchar      Smaller overhead than getchar with direct drivers
 *
 */

#include "sys/alt_stdio.h"
#include <time.h>

#define filling (volatile char *) 0x30e0 //input
#define draining (volatile char *) 0x30d0 //input
#define innerDoor (volatile char *) 0x30c0 //input
#define outerDoor (volatile char *) 0x30b0 //input
#define resetLeds (volatile char *) 0x30a0 //input
#define waiting (volatile char *) 0x3000 //input

#define bathLeaving (volatile char *) 0x3090 //output
#define bathArriving (volatile char *) 0x3080 //output
#define personCheck (volatile char *) 0x3070 //output
#define pressureCheck (volatile char *) 0x3060 //output
#define innerDoorSwitch (volatile char *) 0x3050 //output
#define outerDoorSwitch (volatile char *) 0x3040 //output
#define drainFinished (volatile char *) 0x3030 //output
#define fillFinished (volatile char *) 0x3020 //output
#define waitFinished (volatile char *) 0x3010 //output


int main() {
	 *fillFinished = 0;
	 *fillFinished = 0;
	 *fillFinished = 0;
	 *fillFinished = 0;
	 *fillFinished = 0;
	 *fillFinished = 0;

	 *bathArriving = 0;
	 *bathLeaving = 0;
	 *personCheck = 0;
	 *pressureCheck = 0;
	 *innerDoorSwitch = 0;
	 *outerDoorSwitch = 0;
	 *drainFinished = 0;
	 *fillFinished = 0;
	 *waitFinished = 0;

	 int input = 0;

	 alt_putstr("Wassup fool\n");
	 alt_putstr("This shit is the interlock control system puto\n");
	 while(1) {
		 *bathArriving = 0;
		 *bathLeaving = 0;

		 alt_putstr("The fuck is the bathysphere doing?\n");
		 alt_printf("Arriving? - a\n");
		 alt_printf("Departing? - d\n");
		 input = alt_getchar();
		 switch (input) {
		 case 'a' :
			 //usleep(1000000);
			 *bathArriving = 1;
			 usleep(1000000);
			 alt_printf("open outer door\n" );

			 break;

		 case 'd' :
			 *bathLeaving = 1;
			 alt_printf("open inner door\n" );
			 break;

		 case '\n' :
			 break;

		 default :
			 alt_printf("Invalid input bitchass\n" );

		 }

	 }
		//*bathArriving = 0;
		/*while(1) {
		usleep(1000000);
		alt_printf("ye\n");
		*bathArriving = !*bathArriving;
		}*/

	 return 1;
}
