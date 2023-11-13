# RISC-V Single Cycle Core

RISC-V RV 32I is an open-source instruction set architecture that follows the principles of reduced instruction set computing (RISC). It's designed to be simple, modular, and extensible. This architecture is based on 32-bits implementation for base integer instruction set (extension I). A single-cycle core refers to a processor design where each instruction takes just one clock cycle to execute. <br><br>

### This core is specifically designed to perform load-word I-type instruction.
- I-Type instruction implemented : opcode | rs | rd | Immediate (load)<br><br>
<br>

### Elements used
- Pgrogram Counter (PC)
- PC Adder
- Sign Extender
- Instruction Memory
- Register file
- Data Memory
- Control Unit (comprising of main decoder and alu decoder) <br><br>
<br>

### Datapath for load-word
<br>

### ALU Design used
<br>

lab used for converting assembly language codes to machine language codes : https://venus.cs61c.org/<br>

