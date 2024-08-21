Here's a README for the GitHub project:

---

# Audit File Processing Automation

## Overview
This project automates key parts of the audit file processing workflow after audits are completed. The solution addresses the manual formatting required before sending files to the Operations Managers (OMs) and the SDG team for review.

### Key Problems
Before sending audit files for review, several formatting tasks are needed:
- Creating two copies of the audit files: one for OMs, one for the SDG team. The manual process involves copying the downloaded file and renaming it accordingly.
- Formatting within the Excel files:
  - Removing empty audit tabs.
  - Removing additional columns and notes added by the audit team.
  - Renaming the aging remarks column to match the team receiving the file.
  - Determining the number of impacts per audit.

## Solutions

### Batch File for Copying Files
The batch file automates the process of copying the downloaded audit file into two appropriately renamed files.

#### How to Use:
1. Download the batch file.
2. Move the batch file and the completed audit Excel file to an empty folder.
3. Run the batch file. This will generate three files: the original, a copy for SDG Review, and a copy for OM Review.

**Important:** The original file name should not be changed after download for the script to work correctly.

### Excel Scripts for Audit Formatting
These scripts automate the following tasks:
- Remove empty and irrelevant audit tabs based on the receiving team.
- Remove columns and notes not needed by the receiving team.
- Rename the aging remarks column to align with the receiving team.
- Add a summary tab with the count of impacts for each report, providing an accurate total.

#### Workflow
1. Process the audits and leave comments as needed.
2. Move the audit file to a folder with the batch file mentioned above. Ensure there are no other files in this folder, although subfolders for archiving are allowed.
3. Run the batch file to generate the two additional files needed for review.

### Audit Formatting

#### Script Setup:
1. Go to the Automation Tab > All Scripts > View More Scripts.
2. Navigate to the appropriate document location, and select the scripts to install.

#### Running the Scripts:
1. Open the individual audit files.
2. Go to the Automate tab and run the corresponding scripts.
3. Save the formatted files.

### Finalizing Results:
Once the formatting is complete, send the files to the appropriate parties using the provided templates.
