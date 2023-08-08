This is a working build of TI's Captivate library using their opensource compiler
instead of CCS.
I believe everything's under the BSD license

The bulk of the work was in figuring out the build flags and linker script to get it to compile,
along with a few minor source code modifications.
The biggest change was manually discarding a lot of the unused functions from the Captivate library, which is done in the linker script.
A bunch of libgcc functions were also for some reason being garbage collected even though they were used, so the linker script intentionally keeps those now too.
If you end up using more functions they'll need to be removed from the DISCARD section to get it to build properly, I guess the CCS compiler somehow keeps track of all this better

TI's nonopensource compiler apparently uses a different calling convention for accessing functions in ROM, but apparently the opensource one uses the same calling convention for all functions, and it hasn't given me issues so far.
I've also got the UART communication disabled, but you can reenable it by just using the config and commenting out the appropriate lines in the linker script to get it to build properly

If you're looking into using this for other MSP430 chips, it should be possible to just copy their linker script and add in the DISCARD section like it's done here.
This obviously does not produce the same build as with TI's CCS but it seems to function identically, and it builds within about a KB of the CCS build
