# Digital Logic Design Projects ⚡

This repository contains solutions for a Digital System Design assignment (ΣΨΣ) at Athens University of Economics and Business (AUEB). The project demonstrates the implementation of digital logic circuits using **Intel Quartus Prime**.

## 📖 Overview

The project consists of three distinct problems, each solving a boolean logic requirement using a different implementation method:
1.  **Structural VHDL:** A 5-variable Sum-of-Products (SOP) circuit.
2.  **Schematic Entry (.bdf):** A 4-variable logic circuit designed with gates.
3.  **Behavioral VHDL:** A simplified logic expression.

## 🛠️ Problems Analysis

### Problem 1: 5-Variable SOP (Structural VHDL)
**Objective:** Implement a function $f(X_1...X_5)$ derived from a Karnaugh Map optimization.
* [cite_start]**Logic:** The function includes a summation of minterms and "don't care" terms[cite: 183].
* **Implementation:**
    * Uses a **Structural** VHDL architecture (`structural`).
    * [cite_start]Defines custom components: `oros_2` (2-input AND), `oros_3` (3-input AND), and `SOP` (5-input OR)[cite: 36, 38, 40].
    * [cite_start]Maps signals to these components to form the final circuit[cite: 45].


### Problem 2: 4-Variable Gate Design (Schematic)
[cite_start]**Objective:** Design a circuit based on a specific Truth Table with "Don't Care" conditions[cite: 347].
* **Logic:** Derived from grouping 1s and Xs in the truth table to minimize gate count.
* **Implementation:**
    * Created using the Quartus **Block Editor** (`.bdf` file).
    * [cite_start]Utilizes primitive gates: `NOT`, `AND4`, and `OR4`[cite: 54, 58, 65].
    * Visual representation of the boolean logic flow.


### Problem 3: Simplified Expression (Behavioral VHDL)
[cite_start]**Objective:** Implement the optimized boolean function $f = X_1'X_2 + X_3X_4$[cite: 367].
* **Logic:** The simplified result from the K-Map analysis.
* **Implementation:**
    * Uses **Behavioral** VHDL architecture (`Behavior`).
    * [cite_start]Direct assignment using logical operators: `f <= (not x1 and x2) or (x3 and x4);`[cite: 134].

## 📊 Simulation

[cite_start]All designs were verified using **ModelSim-Altera** via Vector Waveform Files (`.vwf`)[cite: 22, 135].
* [cite_start]**Waveform 1:** Simulates the 5-variable inputs for Problem 1[cite: 442].
* [cite_start]**Waveform 2:** Simulates the gate-level logic for Problem 2[cite: 74].
* [cite_start]**Waveform 3:** Verifies the simplified behavioral logic for Problem 3[cite: 146].

## 🚀 Getting Started

### Prerequisites
* [cite_start]Intel Quartus Prime (Lite Edition 19.1 or compatible)[cite: 19].
* ModelSim-Altera for simulation.

### File Structure
* `*.vhd`: VHDL Source code files.
* `*.bdf`: Block Design (Schematic) files.
* `*.vwf`: Vector Waveform files for simulation timing diagrams.
* `*.qpf` / `*.qsf`: Quartus Project and Settings files.

## 👥 Contributors

* [cite_start]**Thomas Vasilas** [cite: 179]
* [cite_start]**Anna Nepiivonta** [cite: 179]
* [cite_start]**Taner Imam** [cite: 179]

---
*Disclaimer: This project was created for academic purposes for the "Digital System Design" course.*
