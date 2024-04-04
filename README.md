Languages: HTML, CSS, PHP  
Dependencies: Apache, MySQL, PhpMyAdmin  

# Setup

1. Download and install XAMPP control panel  
[XAMPP Download](https://www.apachefriends.org/download.html)  

2. Start Apache and MySQL from XAMPP control panel

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/8901ddcd-b6c2-4945-bacb-f403a536073e)

3. Download ZIP file of the repository.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/75e60aaf-acfa-4032-9c9c-9a1b179ceeb5)

5. Extract the ZIP file contents to C:\xampp\htdocs\help

6. Open a new browser tab and go to http://localhost/phpmyadmin/

7. Create a new database, name it "help_db" and select "utf8_general_ci".

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/b9be8c23-cc31-4aaa-8051-6322540f5301)

9. Select the database and click on "Import"

10. Choose "help_db.sql" and proceed.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/7618a9a0-7b92-40c6-84be-2804e6467783)

12. If done correctly, data tables and entries will appear inside the database.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/750987c0-5e32-47c5-b6b3-3a50119bcb45)

14. To run the website, go to http://localhost/help/

# Features

Highly Effective Learning Platform (HELP) is a cloud based board exam question generator, which uses data from several years of past SSC and HSC question papers to generate a completely new question paper. 

For the purposes of our prototype, we have limited our scope to only SSC question papers for Physics and Higher Mathematics. For each of these two subjects, we have inserted seven different question papers into the database.

[ img ]

Generate Question Paper: After choosing the subject, a question paper will be generated in the style of an actual SSC exam paper. Each question will display the name of its chapter, which if clicked, will take the user to a page with chapter information. 

[ img ]

Below the paper will be a chart showing Marks Distribution, showing how many marks each chapter carried in the generated paper. Finally, at the bottom will be a table that lists the paper name and link from each each question was taken.

[ img ]

Past Question Papers: Similar to the generated paper, but here the user has the option to browse all past papers that have been added to the database. Chapter linking and Marks distribution features are also available here.

[ img ]

Syllabus: For our project we have added the chapter list and book PDF link for both the subjects. This is simply for the user's convenience and study.

[ img ]

Add Question Paper: This is an admin feature, which allows us to add a new question paper. The first page takes overall paper information such as SSC/HSC, year, subject etc. 

[ img ]

After the user clicks on Next, they will find a large form that takes individual question information such as its type, set, description and diagram. For now the question marks has been built into the code logic to simplify the process.

[ img ]
