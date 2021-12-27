This repository contains my project for Computer Organization (ECE352), in which we implemented a multicycle CPU with some starter code. 
The 8-bit CPU can perform 10 different instructions, such as load/store, add/nand/ori, shift l/r on 1-byte quantities.
The CPU can also perform load, store and add on 4 consecutive bytes using "vector" operations.

A compiler converts the assembly code into machine instructions, which is then executed by runninig a ModelSim simulation. 

The waveforms in the PDF file confirm that the processor loads vector (1,4,9,16) and adds it to (3,5,7,9) to get (4,9,16,25), storing the result at a desired location in memory.

![alt text](https://github.com/IliyaShofman/Multicycle-Processor/blob/main/ECE352%20CPU%20with%20Vector%20Operations.png)
