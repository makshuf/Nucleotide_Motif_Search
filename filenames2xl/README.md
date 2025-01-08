# Filenames to Excel Script

This R script allows users to **select a folder**, retrieve the **names of all files** within that folder, and **save the list to an Excel file**. The script provides an interactive GUI for folder and file selection using the `tcltk` package.

## Features
- Prompts the user to select a folder containing files.
- Extracts the names of all files in the selected folder.
- Allows the user to choose the save location and filename for the output Excel file.
- Saves the list of filenames into an Excel file with a single column: **File Names**.

---

## Prerequisites

### 1. Required R Libraries
Ensure the following R libraries are installed:
- `openxlsx`: For writing the file names to an Excel file.
- `tcltk`: For the interactive folder and file save dialog.

Install them with:
```r
install.packages("openxlsx")
install.packages("tcltk")


### 2. Environment
- This script is compatible with R version 3.6+.
- Works on systems with GUI support (required for `tcltk` dialogs).

---

## Usage

1. **Run the script**:
   - Save the script as `filenames_in_the_selected_folder_to_an_Excel_file.R`.
   - Open R or RStudio and execute the script.

2. **Select a folder**:
   - When prompted, select the folder containing the files you want to list.

3. **Choose save location**:
   - Another dialog will appear. Choose the location and name for the Excel file (default: `file_list.xlsx`).

4. **View results**:
   - After running, the Excel file will contain a single column, listing all file names from the selected folder.

### Example Output
If the folder contains:

file1.txt
image.png
report.pdf


The resulting Excel file will look like this:

| File Names   |
|--------------|
| file1.txt    |
| image.png    |
| report.pdf   |

---
```
## Code Overview

### Step 1: Load Libraries
The script uses the `openxlsx` library to write data to Excel and `tcltk` for GUI dialogs.

### Step 2: Folder Selection
The user selects a folder interactively using `tk_choose.dir()`.

### Step 3: File Retrieval
The script retrieves all file names (excluding folder paths) from the selected directory using `list.files()`.

### Step 4: Save File Dialog
The user is prompted to choose the save location and file name using `tkgetSaveFile()`.

### Step 5: Export to Excel
The list of filenames is saved to an Excel file with one column: **File Names**.

---

## Potential Use Cases

1. **File Management**:
   - Quickly list all files in a folder for cataloging or reference.

2. **Data Processing**:
   - Use the Excel file as input for further processing, such as batch renaming or filtering specific files.

3. **Archiving**:
   - Generate a record of files in a directory for audits or backups.

4. **Team Collaboration**:
   - Share a structured list of files in a folder with team members.

---

## Contributing

If you'd like to improve this script, feel free to fork the repository, make changes, and submit a pull request.

---

## License

This script is licensed under the MIT License. Feel free to use and modify it as needed.

