##This is the begining of My FPGA Projects :)

*Untill now my Project just show a circule on the screen and send back everythings you send with RS232 (UART) using ASync FIFO.
*To use it you can connect ADC_in (This is Receiver) to any input pin you want.
*connect PC_out (This is Transmitter) to any pin output you want.
**this moudule will Forward every things from input to output.

##you MUST specify the baud rate of both input and output in modules.

##The bit file only work on Posedge Posedge-One:
*rev 1.1
*With Posedge MegaWing LogiX-1 rev 1.2