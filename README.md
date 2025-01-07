# Nucleotide Motif Search

This repository contains:
- A Perl script (`motif_search.pl`) to search for a user-provided motif (substring) in a file of nucleotide sequences.
- Example data files (`Exp.txt`, `MT_human.txt`, `MT_mouse.txt`) under `data/`.

## Repository Structure
### 1. The `data/` folder
Contains text files with DNA-like sequences:
- **Exp.txt**: A shorter test file for quick checks.
- **MT_human.txt**: Human mitochondrial genome (or partial sequences).
- **MT_mouse.txt**: Mouse mitochondrial genome (or partial sequences).

### 2. The `scripts/` folder
- **motif_search.pl**: A Perl script that:
  1. Prompts for the sequence file name (e.g., `Exp.txt`).
  2. Prompts for a motif to search for.
  3. Searches each line of the file for occurrences of the motif and prints the line number and positions.

### 3. Usage

To run the motif search script, open a terminal (or command prompt), navigate to this repository’s folder, and type:

```bash
perl scripts/motif_search.pl
