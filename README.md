## Audio Spectrum Visualizer
This Code can be used for visualization of audio spectrum into a VGA monitor using D-Sub adaptor.

The input audio should be sent to the module using UART protocol.

This module produces FFT of input audio signal in real-time and sends it to VGA controller module to send the new frequency spectrum, to the monitor.

To use it you can connect ADC_in (UART Receiver) to any input pin you want and then you have to connect the 6-bit VGA port to the pins you have specified in your UCF file.

**You MUST specify the baud rate of input in the main module.**

## The existing bit file only work on Posedge Posedge-One board:
* Rev 1.1 ([public domain](http://posedge.ir/product/posedge-one/))([.UCF rev1.3](https://raw.githubusercontent.com/mhaghighi/posedge_one/master/Posedge_One/ucf/PosedgeOne_1V3.ucf))([Schema](https://raw.githubusercontent.com/mhaghighi/posedge_one/eeb0cc58cbb8c0771e513168f4aac55a2217c5c0/Posedge_One/schematics/posedgeone_1V1_sch.pdf))
* With Posedge MegaWing LogiX-1 rev 1.2 ([public domain](http://posedge.ir/product/logix-1_megawing/))([.UCF](https://raw.githubusercontent.com/mhaghighi/posedge_one/master/Wings/LogiX1_MegaWing/docs/ucf/Posedge_logiX1_megawing_1V2.ucf))([Schema](https://github.com/mhaghighi/posedge_one/raw/master/Wings/LogiX1_MegaWing/docs/schematic/posedge-LogiX1_megawing_1v1_sch.pdf)) connected.
* If you want to use it on other FPGAs you should be able to change the main_module.ucf according to your board schema and generate the bit file again.
