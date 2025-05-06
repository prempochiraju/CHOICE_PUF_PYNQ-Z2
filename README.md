# CHOICE_PUF_PYNQ-Z2

This repository contains the implementation and evaluation of the CHOICE Physical Unclonable Function (PUF) on the PYNQ-Z2 FPGA platform.

## Project Overview

CHOICE PUF is a tunable hardware security primitive that uses Addressable Shift Registers (ASRs) and glitch detectors to generate device-unique responses. This project ports the CHOICE PUF to the PYNQ-Z2 board and evaluates its performance.

# CHOICE_PUF_PYNQ-Z2

This repository contains the implementation and evaluation of the CHOICE Physical Unclonable Function (PUF) on the PYNQ-Z2 FPGA platform.

## Requirements

- Xilinx Vivado (latest version recommended)
- PYNQ-Z2 FPGA board
- Python 3.x with pyserial
- Jupyter notebooks (optional, for data analysis)

## How to Use

1. **Set up Vivado Project**  
   - Open Vivado and create a new project.
   - Add all source files (`.v`, `.vhd`, etc.) to the project.
   - Add the constraint files (`.xdc`) to the project.
   - Set up simulation sources if desired.
   - Run synthesis, implementation, and generate the bitstream.

2. **Program the FPGA**  
   - Use Vivado Hardware Manager or PYNQ tools to load the bitstream onto the PYNQ-Z2 board.

3. **Run Python Script**  
   - Use `SerialComm_with_bits.py` to send challenges and read responses:
   ```bash
   python SerialComm_with_bits.py
