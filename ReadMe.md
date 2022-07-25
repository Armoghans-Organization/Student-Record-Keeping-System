# Student Record Keeping Software 
  ### <p align="center"> *Department of Digital Forensics and Cyber Security, LGU* </p>
   ####  <p align="center"> **Under the Guidance of: Imran Khalid & Saud Farooq** </p>



### **Team Members:**
  * Armoghan-Ul-Mohmin (Fa-21/BS DFCS/010)
  * Aftab Hussain  (Fa-21/BS DFCS/033)

### **ABSTRACT:**
   <p> This project is basically creating a database management system for Student Record Keeping Software. Aim of the project is to creating a backend program of the processes taking place using SQL. This model deals with the relationship between Students, Teachers, Departments, and Exams. The other entities play a supportive weak role. So basically this helps the Students , Teacchers and Uniersity to keep records.</p>

### **Er Diagram:**
<p align="center">
  <img src="/Er-Diagram/Er-Diagram-Dark.png"  title="Er Diagram(Dark)">
</p>

### **Tables:**
1. Admin <br>

2. Student <br>

3. Fee <br>

4. Department <br>

5. Course <br>

6. Teacher <br>

7. Exam <br>

### **Attributes:**

  Admin Table

     | Admin_Id | Student_Id   | Student_Name    | Student_Password  |
     | -------- | ------------ |--------------   |-------------------|
     |          |              |                 |                   |
     |          |              |                 |                   |
     |          |              |                 |                   |
<br>

  Student Table

     |Student_Id | Student_Name | Address | Contact_No | Department_ID | Course_ID|
     |-----------|------------|---------|------------|---------------|----------|
     |           |            |         |            |               |          | 
     |           |            |         |            |               |          |
     |           |            |         |            |               |          |
<br>

  Teacher Table

       | Teacher_ID | Teacher_Name | Student_Id |
       |------------|--------------|------------|
       |            |              |            |
       |            |              |            |
       |            |              |            |
<br>

  Course Table

       | Course_ID | Course_Name | Teacher_ID | Student_Id |
       |-----------|-------------|------------|------------|
       |           |             |            |            |
       |           |             |            |            |
       |           |             |            |            |
<br>

  Department Table

       | Department_ID | Department_Name | Course_ID  | Exam_ID   |
       |---------------|-----------------|------------|-----------|
       |               |                 |            |           |         
       |               |                 |            |           |         

<br>

  Exam Table

       | Exam_ID | Exam_Name | Course_ID | Student_Id | Marks |
       |---------|-----------|-----------|------------|-------|
       |         |           |           |            |       |
       |         |           |           |            |       |
       |         |           |           |            |       |

<br>

  Fee Table

       |Challan_No | Student_Id | Student_Name | Tution_Fee |
       |-----------|------------|--------------|------------|
       |           |            |              |            |
       |           |            |              |            |
       |           |            |              |            |
<br>

### **Code:**
- <a href="https://github.com/Armoghan-ul-Mohmin/Student-Record-Keeping-System/blob/main/Main.sql">Student Record Keeping System</a>
- <a href="https://github.com/Armoghan-ul-Mohmin/Student-Record-Keeping-System/blob/main/Docs/Tables.sql">Tables</a>
- <a href"https://github.com/Armoghan-ul-Mohmin/Student-Record-Keeping-System/blob/main/Docs/Primary%20Keys.sql">Primary Keys</a>
- <a href="https://github.com/Armoghan-ul-Mohmin/Student-Record-Keeping-System/blob/main/Docs/Foreign%20Keys.sql">Foreign Keys</a>
- <a href="https://github.com/Armoghan-ul-Mohmin/Student-Record-Keeping-System/blob/main/Docs/Dumbing%20Values.sql">Values</a>
- <a href="https://github.com/Armoghan-ul-Mohmin/Student-Record-Keeping-System/blob/main/Docs/Procedure.sql">Procedure</a>
- <a href="https://github.com/Armoghan-ul-Mohmin/Student-Record-Keeping-System/blob/main/Docs/Joins.sql">Joins</a>


### **Normalization:**
