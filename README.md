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

## Project Structure

```
Parameterized-FIR-Filter-Verilog
│
├── fir_filter2.v            # FIR filter implementation
├── fir_tb3.v                # Testbench
├── coefficient_generator.py # Floating-point to Q15 conversion
├── Simulation.png           # ModelSim simulation waveform
└── README.md
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
