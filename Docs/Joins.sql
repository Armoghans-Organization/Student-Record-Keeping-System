
Create View ExamViwe
SELECT (Student_ID , Student_Name , Address , Contact_No , Departement_ID , Course_ID)
FROM Student
INNER JOIN Exam
ON Student.column_name = Exam.column_name;