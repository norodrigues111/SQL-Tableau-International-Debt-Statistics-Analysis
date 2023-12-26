# SQL-International-Debt-Statistics-Analysis

 Welcome! This portfolio project involves a comprehensive analysis of 37,997 high school and college student records, aiming to present key insights through effective visualizations. The focus is on evaluating the factors influencing academic performance among students in high schools and colleges in the USA.
 
Project Overview:
The dataset comprises four CSV files containing student data provided by Entry Level for this report. These files include information on country details, student academic records, student family particulars, and student personal details for a total of 37,997 student records. Utilizing SQLite, the four datasets were merged to create a reporting table, serving as our database. Additional tables were then derived from this database to address specific research questions.

Key Column Variables:
The essential variables in the dataset and their details are as follows:

- Gender: Indicates the gender of the student.
- Ethnicity: Indicates the ethnicity of the student (African-American, Hispanic, Asian, or other).
- Academic Score: Represents the student's academic performance throughout high school and college.
- Student Tuition: Reflects the cost of tuition for the student.
- Education: Signifies the years of education the student has received.
- FCollege: Indicates whether the father is a college graduate.
- MCollege: Indicates whether the mother is a college graduate.
- Home: Indicates whether the family owns their home.
- Urban: Indicates whether the school is in an urban area.
- Unemployment: County unemployment rate in 2020.
- Income: Classifies households as high or low income based on county average.
- Wage: State hourly wage in manufacturing in 1980.
- Distance: Distance from a 4-year college (in 10 miles).
- Region: Indicates the region (West, East, or other).
- Avg_County_Tuition: Average state 4-year college tuition (in 1000 USD).

Root Cause Analysis Process:
To conduct a root cause analysis, we addressed the following questions using the newly created tables:

1. What is the proportion of educated students by ethnicity?
2. How can we evaluate the cost of college tuition against household income?
3. What is the effect of a student's parents' education on the education of the student?
4. Is the location of the school a determinant of tuition?
5. What are the differences in students' performance concerning the school's location?
6. Which ethnic group has a higher performance rate in schools, and which gender performs better on average?
7. Does the age of a student have an effect on their academic performance in school?
