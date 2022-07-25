# Main.sql

### Creates Database If does not exists.

```sql
IF NOT EXISTS
(SELECT * FROM sys.databases WHERE name = 'Project')
BEGIN
  CREATE DATABASE Project;
END;
```

### Uses Database Project

```sql
Use Project;
```

### Create Tables

```sql
-- Table Structure for  Administartor Table.

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Admin' )

CREATE TABLE Admin (
  Admin_ID              BIGINT Primary Key  Not Null,
  Student_ID            BIGINT ,
  Student_Name          VARCHAR(20),
  Student_Password      VARCHAR(20)
);
```

```sql
-- Table Structure for  Student Table.

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Student' )

CREATE TABLE Student (
  Student_ID            BIGINT Primary Key Not Null,
  Student_Name          VARCHAR(20),
  Address               VARCHAR(50),
  Contact_No            BIGINT,
  Departement_ID        BIGINT,
  Course_ID             BIGINT
);
```

```sql
-- Table Structure for  Fee Table.

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Fee' )

CREATE TABLE Fee (
  Challan_No            BIGINT Primary Key  IDENTITY(1,1),
  Student_ID            BIGINT,
  Student_Name          VARCHAR(20),
  Tution_Fee            BIGINT
);
```

```sql
-- Table Structure for  Teacher Table.

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Teacher' )

CREATE TABLE Teacher (
  Teacher_ID            BIGINT Primary Key Not Null,
  Teacher_Name          VARCHAR(20),
  Student_ID            BIGINT
);
```

```sql
-- Table Structure for  Course Table.

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Course' )

CREATE TABLE Course (
  Course_ID             BIGINT Primary Key Not Null,
  Course_Name           VARCHAR(20),
  Teacher_ID            BIGINT,
  Student_ID            BIGINT
);
```

```sql
-- Table Structure for  Department Table.

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Department' )

CREATE TABLE Department (
  Departement_ID        BIGINT Primary Key Not Null,
  Department_Name       VARCHAR(20),
  Course_ID             BIGINT,
  Exam_ID               BIGINT
);
```

```sql
-- Table Structure for  Exam Table.

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Exam' )

CREATE TABLE Exam (
  Exam_ID               BIGINT Primary Key Not Null,
  Exam_Name             VARCHAR(20),
  Course_ID             BIGINT,
  Student_ID            BIGINT,
  Marks                 BIGINT
);
```

### Declaring Foreign Keys

```sql
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
```

### Dumping Values

```sql
-- Dumping Data into Admin Table

INSERT INTO Admin 

VALUES
    (1 , 010 , 'Armoghan' , 'Armoghan_Password'),

    (2 , 033 , 'Aftab Shah' , 'Aftab_Password');

________________________________________________________________________________

-- Dumping Data into Student Table

INSERT INTO Student 

VALUES
    (1 , 'Armoghan'  , 'Lahore' , '0333 0000000' 2 , 3 ),
 
    (2 , 'Aftab Hussain' , 'Lahore' , '0333 0000001' 2 , 3 );
________________________________________________________________________________

-- Dumping Data into Department Table

INSERT INTO Department 

VALUES
    (1 , 'Bs CS' , 1 , 3 ),

    (2 , 'Bs IT' , 3 , 2),

    (3 , 'Bs DFCS' 2 , 1),

   );
________________________________________________________________________________

-- Dumping Data into Teacher Table

INSERT INTO Teacher 

VALUES
    (1 , 'Imran Khalid' , 2 ),

    (2 , 'Saud Bin Farooq' , 1 );
________________________________________________________________________________

-- Dumping Data into Fee Table

INSERT INTO Fee ( Student_Id , Student_Name , Tution_Fee) 

VALUES
    (1 , 'Armoghan' , 50000 ),

    (2 , 'Afta Hussain' , 50000 );
________________________________________________________________________________

-- Dumping Data into Exam Table

INSERT INTO Exam  

VALUES
    (1 , 'Mids' , 1 , 1 , 80  ),

    (2 , 'Finals' , 2 , 1 , 80 );
________________________________________________________________________________

-- Dumping Data into Course Table

INSERT INTO Course  

VALUES
    (1 , 'Fa-21' , 1 , 2  ),

    (2 , 'Sp-21' , 2 , 1  );
________________________________________________________________________________
```