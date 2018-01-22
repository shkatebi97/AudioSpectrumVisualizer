## This is the begining of My FPGA Projects :)

* This Code now produce FFT of input ADC Signal and shows it on the screen!
* To use it you can connect ADC_in (This is Receiver) to any input pin you want.

## You MUST specify the baud rate of input in modules.

## The bit file only work on Posedge Posedge-One:
* Rev 1.1 ([public domain](http://posedge.ir/product/posedge-one/))([.UCF rev1.3](https://raw.githubusercontent.com/mhaghighi/posedge_one/master/Posedge_One/ucf/PosedgeOne_1V3.ucf))([Schema](https://raw.githubusercontent.com/mhaghighi/posedge_one/eeb0cc58cbb8c0771e513168f4aac55a2217c5c0/Posedge_One/schematics/posedgeone_1V1_sch.pdf))
* With Posedge MegaWing LogiX-1 rev 1.2 ([public domain](http://posedge.ir/product/logix-1_megawing/))([.UCF](https://raw.githubusercontent.com/mhaghighi/posedge_one/master/Wings/LogiX1_MegaWing/docs/ucf/Posedge_logiX1_megawing_1V2.ucf))([Schema](https://github.com/mhaghighi/posedge_one/raw/master/Wings/LogiX1_MegaWing/docs/schematic/posedge-LogiX1_megawing_1v1_sch.pdf)) connected.
* If you want to use it on other FPGA you should easily change the main_module.ucf and Generate Programming File again.