# bioinfo-translator
DNA-to-Protein Translator
# Bioinfo-Translator: DNA to Protein 🧬

## Overview
This repository contains a lightweight Python implementation of the **Central Dogma of Molecular Biology**. Specifically, it simulates the translation process, converting a DNA sequence (nucleotides) into an amino acid sequence (protein) based on the standard genetic code.



<img width="3999" height="3999" alt="image" src="https://github.com/user-attachments/assets/53ed3167-fc4e-4c4f-9da4-72789edcf20e" />


## Biological Context
In biology, translation is the process in which ribosomes in the cytoplasm or endoplasmic reticulum synthesize proteins after the process of transcription from DNA to RNA. 

This script simplifies the process by translating **DNA directly to Protein**, assuming:
1. The sequence is already in the correct reading frame.
2. Introns have been removed (cDNA).
3. The standard genetic code applies.

## Features
* **Codon Mapping:** Uses a dictionary lookup for all 64 possible codons.
* **Stop Codon Handling:** Identifies stop codons and marks them with an underscore (`_`).
* **Error Detection:** Returns a `?` for any incomplete or unrecognized triplets.

## Installation & Usage
To run this script, you just need Python installed on your machine.

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/YOUR_USERNAME/bioinfo-translator.git](https://github.com/YOUR_USERNAME/bioinfo-translator.git)
