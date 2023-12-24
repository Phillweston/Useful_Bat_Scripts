# Batch Rename Script

## Overview

This script is designed to rename files in a directory by modifying their filenames to start with a specified prefix. If a file already contains the prefix, the script will adjust the filename to begin exactly from the first occurrence of this prefix.

## Requirements

- Windows Operating System
- Command Prompt access
- Files to rename are located in the same directory as the script

## Usage

1. **Prepare the Script**: Save the provided code in a text file with a `.bat` extension, for example, `rename_files.bat`.

2. **Place the Script**: Ensure that `rename_files.bat` is in the same directory as the files you wish to rename.

3. **Run the Script**:
    - Open Command Prompt.
    - Navigate to the directory containing your files and the `rename_files.bat` script.
    - Execute the script with the desired prefix as a command-line argument. For example, if you want to process files with the prefix "MITRES", use the following command:
      ```
      rename_files.bat MITRES
      ```

## Functionality

- The script takes one argument: the prefix (e.g., "MITRES").
- It searches for files in its directory that contain this prefix in their filenames.
- The script then renames each file so that its filename starts exactly from this prefix, preserving the rest of the original filename.

## Important Notes

- **Backup Your Files**: Always ensure you have a backup of your files before running this script to avoid accidental loss or renaming errors.
- **Single Argument**: The script only takes one argument, which is the prefix. It won't work correctly if multiple arguments are passed.
- **Limitation**: The script is designed to work with files in its current directory and does not process files in subdirectories.

## Troubleshooting

- If the script does not run, check if you have the correct permissions and if the Command Prompt points to the script's directory.
- Ensure that the argument (prefix) is correctly passed. Without the argument, the script will not execute.
