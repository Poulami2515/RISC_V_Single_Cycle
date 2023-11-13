# RISC-V Single Cycle Core

RISC-V RV 32I is an open-source instruction set architecture that follows the principles of reduced instruction set computing (RISC). It's designed to be simple, modular, and extensible. This architecture is based on 32-bits implementation for base integer instruction set (extension I). A single-cycle core refers to a processor design where each instruction takes just one clock cycle to execute. <br><br>

### This core is specifically designed to perform load-word I-type instruction.
- I-Type instruction implemented : opcode | rs | rd | Immediate (load)<br><br>
<br>![I-Type](https://github.com/Poulami2515/RISC_V_Single_Cycle/assets/91011865/b5b67d6b-b3de-4734-96a6-f9580eb33fe8)


### Elements used
- Pgrogram Counter (PC)
- PC Adder
- Sign Extender
- Instruction Memory
- Register file
- Data Memory
- Control Unit (comprising of main decoder and alu decoder) <br><br>
<br>![elements](https://github.com/Poulami2515/RISC_V_Single_Cycle/assets/91011865/1097cc5c-5b19-4fb9-a833-2ff24cc35bfc)


### Datapath for load-word
<br>![Datapath](https://github.com/Poulami2515/RISC_V_Single_Cycle/assets/91011865/9cfcdff4-87c6-48eb-9a5c-f8c0b92a1f6e)


### ALU Design used
<br>![ALU](https://github.com/Poulami2515/RISC_V_Single_Cycle/assets/91011865/c0600e6a-17f4-41f6-ba38-196fef6848ba)

### Simulation Results
<br>![Waveform](https://github.com/Poulami2515/RISC_V_Single_Cycle/assets/91011865/d51d8f93-2102-45cf-b2c0-507082315d1c)

### Resources and Tech Stack
- lab used for converting assembly language codes to machine language codes : https://venus.cs61c.org/<br>
- hardware description language used : Verilog
- simulator used : icarus verilog
- waveform generator used : GTKWave
- resources and design reference : merldsu
- others : " Digital Design and Computer Architecture RISC-V Edition " by Sarah L Harris and David M Harris.

