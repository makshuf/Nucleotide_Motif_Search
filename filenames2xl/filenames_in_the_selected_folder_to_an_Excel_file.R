# Load the required libraries
library(openxlsx)
library(tcltk)

# Prompt the user to select the folder
folder_path <- tk_choose.dir(caption = "Select the folder containing the files")

# Check if the user canceled the selection
if (is.na(folder_path) || folder_path == "") {
  stop("Folder selection canceled.")
}

# Get a list of all files in the selected folder
file_names <- list.files(path = folder_path, full.names = FALSE)

# Create a data frame from the list of file names
df <- data.frame("File Names" = file_names)

# Prompt the user to choose a save location and file name for the Excel file
excel_path <- tclvalue(tkgetSaveFile(
  filetypes = "{{Excel Files} {.xlsx}} {{All files} *}",
  defaultextension = ".xlsx",
  initialfile = "file_list.xlsx",
  title = "Save Excel File As"
))

# Check if the user canceled the save dialog
if (excel_path == "") {
  stop("Save location selection canceled.")
}

# Write the data frame to an Excel file
write.xlsx(df, file = excel_path, rowNames = FALSE)

cat("File names have been written to", excel_path)
