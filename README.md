# ds-skill-assess
## Phase II technical assessment for data scientist candidates

This repository contains a short, notional example of SQL & R files designed to test your technical knowledge of basic data wrangling and version control.

### Ground Rules
* You will have 1 hour to clone the repo, create your own branch, and push your branch back to the remote repo.
* Please keep all work on your branch. Do not submit a pull request for main.
* The errors are simple; do not over-think them.
* Describe your approach in the ReadMe file's section below, as opposed to in-line comments.

### Instructions
1. Clone the repo
2. From `main`, create your own branch with `[your last name]/submission`
3. Correct errors in the SQL and R script as follows:
  * The SQL contains an error that will not generate correct output to be received by the R file. Please correct the SQL so that its output will match what the R file requires.
  * The R file contains a single series of steps that could be separated into more descriptive functions or otherwise condensed to improve readability and maintainability. Please re-factor the R code to reflect cleaner, more maintainable code without altering functionality. *Please feel free to add separate function script files if you think this would help.*
  * In the ReadMe file, modify the below section to explain your overall approach. Write as if speaking to a non-technical audience.

**NOTE**: When making corrections in the SQL or R file, please also consider formatting adjustments that more closely conform to generally accepted style guidance (e.g., indentation, vertical alignment, etc.).

**IMPORTANT: You should NOT need to create sample data and you do NOT need to compile your code to ensure it runs.** This is not a test of syntax, but of your ability to discover and streamline inefficiency in the data pipeline.

4. Commit your edits and push your branch back to the remote repo within 1 hour

*GOOD LUCK!*
  
## About My Submission: JaMaur Lyons
Made Changes in models-main.R and sql-query-from-database.sql
In sql-query-from-database.sql:
  Fixed the error where 'fiscal_year' and 'fiscal_month' was not part of the grouping
  Added alias to 'SUM(applicants)' for clarity
  Changed formating of 'SELECT' for readibility

In models-main.R
  Created a function for fitting and writting models for resusability
    Added an option for plotting in the function because the comment doesn't say it has to plot
  Removed library mentions because they are unnecessary if the libraries are lodaded
  Replaced 'paste' with 'str_c' because the have a similar purpose but str_c was made to work specifically with mutate
  Combined the select into one statement
  
  Notes:
    I believe we could replace all of the library statements with 'library(tidyverse)', but i didn't because there are libraries in tidyverse that aren't used.