# Audio_generator_FPGA

Audio Generator is the kind of project you are looking for, if you are wondering how to generate sound from the FPGA. 
This is a program developed in Verilog, which is a hardware design language. 
As I said before, this project was tested and made for FPGA, the base of the project is mapping the 4 integrated buttons that the FPGA has,
and according to a button make a musical note.

Based on what we learned in the class Digital Logic Design in UNITEC (Universidad Tecnologica de Centroamerica, for its name in spanish) 
we utilize the sine wave for every note, we divide the sine wave by 32 in order to make 32 samples, 
which are sent to the "data" output variable. 
The way we make to generate the different musical notes, in this case C-D-E-G, is changing the clock frequency to the frequency of each 
note. (e.g., C= 523 Hz, D=587Hz, E=659Hz, G=783Hz.) In this way, we create the necessary data to display in a speaker connected to the FPGA through a DAC (Digital to Analog Converter). 
Demontration: https://www.youtube.com/watch?v=dwsPJu7C0EQ

Developers:

-Lisaula

-KenyStev
