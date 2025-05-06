# CHOICE_PUF_PYNQ-Z2

This repository contains the implementation and evaluation of the CHOICE Physical Unclonable Function (PUF) on the PYNQ-Z2 FPGA platform.

## Project Overview

CHOICE PUF is a tunable hardware security primitive that uses Addressable Shift Registers (ASRs) and glitch detectors to generate device-unique responses. This project ports the CHOICE PUF to the PYNQ-Z2 board and evaluates its performance.

## ⚙️ Repository Contents

- `PUFconfigScript.txt` — Example configuration script with challenges and patterns.
- `SerialComm_with_bits.py` — Python script to communicate with the board and collect response data.
- `README.md` — This file.

## 💻 Requirements

- Xilinx Vivado latest version
- PYNQ-Z2 FPGA board
- Python 3.x with pyserial
- Jupyter notebooks (optional, for data analysis)

## 🚀 How to Use

1. **Setup Vivado Project**  
   Run the TCL script:
   ```bash
   vivado -mode batch -source create_CHOICE_design.tcl
