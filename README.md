## This is the begining of My FPGA Projects :)

* Untill now my Project just show a circule on the screen and send back everythings you send with RS232 (UART) using ASync FIFO.
* To use it you can connect ADC_in (This is Receiver) to any input pin you want.
* Connect PC_out (This is Transmitter) to any pin output you want.
* ! This moudule will Forward every things from input to output. !

## You MUST specify the baud rate of both input and output in modules.

## The bit file only work on Posedge Posedge-One:
* Rev 1.1 ([public domain](http://posedge.ir/product/posedge-one/))([.UCF rev1.3](https://raw.githubusercontent.com/mhaghighi/posedge_one/master/Posedge_One/ucf/PosedgeOne_1V3.ucf))([Schema](https://raw.githubusercontent.com/mhaghighi/posedge_one/eeb0cc58cbb8c0771e513168f4aac55a2217c5c0/Posedge_One/schematics/posedgeone_1V1_sch.pdf))
* With Posedge MegaWing LogiX-1 rev 1.2 connected.([.UCF](https://raw.githubusercontent.com/mhaghighi/posedge_one/master/Wings/LogiX1_MegaWing/docs/ucf/Posedge_logiX1_megawing_1V2.ucf))([Schema](https://github.com/mhaghighi/posedge_one/raw/master/Wings/LogiX1_MegaWing/docs/schematic/posedge-LogiX1_megawing_1v1_sch.pdf))
* If you want to use it on other FPGA you should easily change the main_module.ucf and Generate Programming File again.