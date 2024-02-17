# CSV-Matcher
# Duplicates Finder

This script allows you to compare two CSV files and identify duplicate entries based on a specified column.

## Prerequisites

- PowerShell installed on your system.

## Usage

1. Clone the repository or download the script file.

2. Open the script file in a text editor of your choice.

3. Set the paths for the following variables:
   - `$csv1Path`: Path to the first CSV file.
   - `$csv2Path`: Path to the second CSV file.
   - `$filterdObjectsFile`: Path where the filtered data should be saved (CSV file).

4. Run the script using PowerShell.

## Script Overview

- The script imports data from two CSV files specified by `$csv1Path` and `$csv2Path`, respectively.
- It compares the entries in the "Anzeigename" column of both CSV files.
- If a duplicate entry is found, it exports it to a new CSV file specified by `$filterdObjectsFile`.
- Finally, it displays the number of duplicate records found.

## Example

Suppose you have two CSV files:

- `file1.csv`:

  ```
  Anzeigename
  John Doe
  Jane Smith
  ```

- `file2.csv`:

  ```
  Anzeigename
  Jane Smith
  Bob Johnson
  ```

Running the script with these files would result in a new CSV file (`filteredObjects.csv`) containing:

```
Anzeigename
Jane Smith
```

And the script output would be:

```
Duplicates successfully exported. Found 1 records.
```

## Note

- Ensure that the column name used for comparison (`Anzeigename` in this case) exists in both CSV files.
- The comparison is case-sensitive. Make sure the data in both columns follows the same format for accurate results.

Feel free to modify the script according to your specific requirements!