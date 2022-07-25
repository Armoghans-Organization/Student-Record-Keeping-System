-- Declaring Foreign Key For Admin Table
   
    Alter TABLE Admin

    CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)
 
    CONSTRAINT Fk_Student_Name FOREIGN KEY (Student_Name) 
    REFERENCES Student (Student_Name)
________________________________________________________________________________
-- Declaring Foreign Key For Student  Table

    Alter TABLE Student

    CONSTRAINT Fk_Course_ID FOREIGN KEY (Course_ID) 
    REFERENCES Course (Course_ID)

    CONSTRAINT Fk_Departement_ID FOREIGN KEY (Departement_ID) 
    REFERENCES Department (Departement_ID)
________________________________________________________________________________

-- Declaring Foreign Key For Teacher Table
    
    Alter TABLE Teacher
   
   CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)
________________________________________________________________________________

-- Declaring Foreign Key For Coursr Table
    
    Alter TABLE Coures

    CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)

    CONSTRAINT Fk_Teacher_ID FOREIGN KEY (Teacher_ID) 
    REFERENCES Teacher (Teacher_ID) 
________________________________________________________________________________

-- Declaring Foreign Key For Department Table
    
    ALTER TABLE Department

    CONSTRAINT Fk_Course_ID FOREIGN KEY (Course_ID) 
    REFERENCES Course (Course_ID)
________________________________________________________________________________

    -- Declaring Foreign Key For Exam Table
    
    Alter TABLE Exam

    CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)
  
    CONSTRAINT Fk_Course_ID FOREIGN KEY (Course_ID) 
    REFERENCES Course (Course_ID)
________________________________________________________________________________

-- Declaring Foreign Key For Fee Table
    
    Alter TABLE Fee
    
    CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)
 
    CONSTRAINT Fk_Student_Name FOREIGN KEY (Student_Name) 
    REFERENCES Student (Student_Name)
________________________________________________________________________________