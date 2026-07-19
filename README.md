# Parameterized FIR Filter Implementation using Verilog HDL

A parameterized Finite Impulse Response (FIR) filter implemented in Verilog HDL for digital signal processing applications. The project demonstrates fixed-point hardware implementation using Q15 coefficients, functional verification through ModelSim simulations, and Python-based coefficient generation for seamless DSP-to-hardware integration.

---

## Features

- Parameterized FIR filter architecture
- Fixed-point Q15 coefficient implementation
- Python utility for floating-point to Q15 coefficient conversion
- Shift register based delay-line architecture
- Parallel Multiply-Accumulate (MAC) implementation
- Functional verification using a dedicated Verilog testbench
- Simulation using impulse, step, and ramp input signals

---

## Tools & Technologies

- Verilog HDL
- ModelSim
- Python
- NumPy
- SciPy
- Digital Signal Processing (DSP)

---
## Simulation Results

### Generated coefficiants

<img width="868" height="88" alt="WhatsApp Image 2026-07-07 at 7 18 29 PM" src="https://github.com/user-attachments/assets/021eb846-fcbe-4195-9d06-9db4d3554532" />

### Impulse Response

<img width="1099" height="638" alt="WhatsApp Image 2026-07-07 at 7 22 57 PM" src="https://github.com/user-attachments/assets/d5861ed6-ad2c-4bad-89e9-2b029ab9ea9d" />

<img width="857" height="628" alt="WhatsApp Image 2026-07-07 at 7 23 22 PM" src="https://github.com/user-attachments/assets/8e16a8f3-b646-4ebd-9b62-b3425fb3b287" />

### Step Response

<img width="886" height="669" alt="WhatsApp Image 2026-07-07 at 7 49 37 PM" src="https://github.com/user-attachments/assets/3ea37688-d60e-4864-bb23-1c1cbe368f56" />

<img width="864" height="625" alt="WhatsApp Image 2026-07-07 at 8 10 48 PM" src="https://github.com/user-attachments/assets/a0f92c90-5c21-4222-a8f6-862c9db9a7d8" />

<img width="592" height="594" alt="WhatsApp Image 2026-07-07 at 8 11 13 PM" src="https://github.com/user-attachments/assets/ed9063f5-ce5b-410b-a660-2bd956103059" />

<img width="851" height="608" alt="WhatsApp Image 2026-07-07 at 8 11 59 PM" src="https://github.com/user-attachments/assets/ed4bb4d2-b53e-4e33-819a-f07853e00b7c" />

<img width="904" height="616" alt="WhatsApp Image 2026-07-07 at 8 12 44 PM" src="https://github.com/user-attachments/assets/85f6c931-d1f9-4be6-99e9-4f6bcd70fa36" />



### Ramp Response

<img width="853" height="618" alt="WhatsApp Image 2026-07-07 at 8 13 19 PM" src="https://github.com/user-attachments/assets/e414c6f4-99ee-473f-8b86-9dcbbfa3d3dc" />

<img width="865" height="662" alt="WhatsApp Image 2026-07-07 at 8 13 36 PM" src="https://github.com/user-attachments/assets/0ca034ef-45cc-44be-9762-1cb6112dc488" />

<img width="877" height="642" alt="WhatsApp Image 2026-07-07 at 8 14 26 PM" src="https://github.com/user-attachments/assets/83fd4e7e-5d95-4d95-a854-a55f4ee3de31" />

---

## Project Structure

```
Parameterized-FIR-Filter-Verilog
│
├── README.md
├── fir_filter.v
├── fir_filter_tb.v
├── coefficient_generator.py
```

---

## Design Overview

The FIR filter consists of:

- Parameterized tap architecture
- Delay-line implemented using shift registers
- Signed coefficient storage
- Multiply-Accumulate (MAC) computation
- Output scaling using arithmetic right shift (Q15 normalization)

Python is used to generate floating-point FIR coefficients using the SciPy signal processing library. These coefficients are converted into Q15 fixed-point format before being used inside the Verilog implementation.

---

## Verification

The filter functionality was verified in ModelSim using three standard DSP test cases:

- **Impulse Response**
- **Step Response**
- **Ramp Response**

These simulations validate the correctness of the filter implementation under different input conditions.

---

## Python Coefficient Generation

Floating-point FIR coefficients are generated using:

- SciPy FIR window design (`firwin`)
- NumPy numerical processing

The generated coefficients are automatically converted into signed Q15 fixed-point representation for hardware implementation.

Example workflow:

```
SciPy FIR Design
        │
        ▼
Floating-point Coefficients
        │
        ▼
Python Q15 Conversion
        │
        ▼
Verilog FIR Filter
        │
        ▼
ModelSim Verification
```

---

## Applications

- Audio Signal Processing
- Noise Filtering
- Communication Systems
- Embedded DSP
- FPGA-Based Digital Filtering

---

## Future Improvements

- Runtime programmable coefficients
- FPGA implementation and hardware validation
- Frequency response visualization
- Support for variable filter orders
- Pipelined architecture for higher throughput

---

## Author

**Jaydeviba Jadeja**

B.Tech Electronics and Communication Engineering

Nirma University
