// -- Er Diagram Using Following Website.. 
//   -- https://dbdiagram.io/d


Table "Admin" {
  
  "Admin_ID" BIGINT [pk]
  "Student_ID" BIGINT 
  "Student_Name" VARCHAR
  "Student_Password" VARCHAR
}

Table "Student" {
  "Student_ID" BIGINT [pk]
  "Student_Name" VARCHAR
  "Address" VARCHAR
  "Contact_No" BIGINT
  "Departement_ID" BIGINT
  "Course_ID" BIGINT
}

Table "Fee" {
  "Challan_No" BIGINT [pk]
  "Student_ID" BIGINT 
  "Student_Name" VARCHAR
  "Tution_Fee" BIGINT
}

Table "Teacher" {
  "Teacher_ID" BIGINT [pk]
  "Teacher_Name" VARCHAR
  "Student_ID" BIGINT
}

Table "Course" {
  "Course_ID" BIGINT [pk]
  "Course_Name" VARCHAR
  "Teacher_ID" BIGINT
  "Student_ID" BIGINT
}

Table "Department" {
  "Departement_ID" BIGINT [pk]
  "Department_Name" VARCHAR
  "Course_ID" BIGINT
  "Exam_ID" BIGINT
}

Table "Exam" {
  "Exam_ID" BIGINT [pk]
  "Exam_Name" VARCHAR
  "Course_ID" BIGINT
  "Student_ID" BIGINT
  "Marks" BIGINT
}




Ref: "Student"."Student_ID" < "Admin"."Student_ID"

Ref: "Course"."Course_ID" < "Student"."Course_ID"

Ref: "Department"."Departement_ID" < "Student"."Departement_ID"

Ref: "Student"."Student_ID" < "Fee"."Student_ID"

Ref: "Student"."Student_ID" < "Exam"."Student_ID"

Ref: "Course"."Course_ID" < "Exam"."Course_ID"

Ref: "Exam"."Exam_ID" < "Department"."Exam_ID"

Ref: "Student"."Student_ID" < "Teacher"."Student_ID"

Ref: "Teacher"."Teacher_ID" < "Course"."Teacher_ID"