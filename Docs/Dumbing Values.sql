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