Languages: HTML, CSS, PHP  
Dependencies: Apache, MySQL, PhpMyAdmin  

# Setup

1. Download and install XAMPP control panel  
[XAMPP Download](https://www.apachefriends.org/download.html)  

2. Start Apache and MySQL from XAMPP control panel

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/8901ddcd-b6c2-4945-bacb-f403a536073e)

3. Download ZIP file of the repository.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/75e60aaf-acfa-4032-9c9c-9a1b179ceeb5)

4. Extract the ZIP file contents to C:\xampp\htdocs\

5. Open a new browser window and go to http://localhost/phpmyadmin/

6. Create a new database, name it "help_db" and select "utf8_general_ci".

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/b9be8c23-cc31-4aaa-8051-6322540f5301)

7. Select the database and click on "Import"

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/50196b7f-c91a-4b85-845d-6da07b517a63)

8. Choose "help_db.sql" from the ZIP contents and proceed.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/7618a9a0-7b92-40c6-84be-2804e6467783)

9. If done correctly, data tables and entries will appear inside the database.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/750987c0-5e32-47c5-b6b3-3a50119bcb45)

10. To run the website, go to http://localhost/A3_Spring_2024-main

# Features

Highly Effective Learning Platform (HELP) is a cloud based board exam question generator, which uses data from several years of past SSC and HSC question papers to generate a completely new question paper. 

For the purposes of our prototype, we have limited our scope to only SSC question papers for Physics and Higher Mathematics. For each of these two subjects, we have inserted seven different question papers into the database.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/764751f6-a586-4719-8071-3b9835da944a)

**Generate Question Paper:** After choosing the subject, a question paper will be generated in the style of an actual SSC exam paper. Each question will display the name of its chapter, which if clicked, will take the user to a page with chapter information. 

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/a01b8e95-4cb2-4fda-bc0b-61c5ac5fea42)

Below the paper will be a chart showing Marks Distribution, showing how many marks each chapter carried in the generated paper. Finally, at the bottom will be a table that lists the paper name and link from which each question was taken.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/6d001b0f-07e4-438c-8668-22c0195864f2)

**Past Question Papers:** Similar to the generated paper feature. Here the user has the option to browse all past papers that have been added to the database. Chapter linking and Marks distribution features are also available here.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/690b2c88-76bf-4ec5-9c58-55859ec8a15e)

**Syllabus:** For our project we have added the chapter list and book PDF link for both the subjects. This is simply for the user's convenience and study.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/92bdbbe4-8a03-4f8f-b9b0-e1dfeaa233bf)

**Add Question Paper:** This is an admin feature, which allows us to add a new question paper. The first page takes overall paper information such as SSC/HSC, year, subject etc. 

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/d259d5d7-3319-4b04-902a-797f13d24bea)

After the user clicks on Next, they will find a large form that takes individual question information such as its set, chapter, description and diagram. For now the question marks has been built into the code logic to simplify the process.

![image](https://github.com/Zannatul-Iftear/A3_Spring_2024/assets/125757015/05035fd1-bcba-44f9-b561-c287447a0ade)

