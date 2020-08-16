# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories

Methods that active record created
required in deliverables:
    - .grade_level
    - .all
    - built in .last_name, .first_name (for students) .years_of_expereience
extras: .find, .all, .find_by, .where etc etc...

Methods we have to code 
- #full_name (interpolate the two table rows together)
- .all_in_grade (in sql or .where but with conditions)
- #tenure (conditional find)


What changes is a join table.  The students are growing up and having multiple
teachers per day so our app needs to reflect that there can be multiple teachers.
We also have to drop a column of teacher_id from students since that is now deprecated.

Left grade_level as a string in student, because who knows if they're in AP math which is a grade above but still in their regular graduation year.  Would need more specifics about where to go with the design.  
If that's not desired, would just add a column in the grade_level as a string. 


###### FUTURE DELIVERABLES

Student have many subjects through classrooms
subjects have a classroom (join table with time)
students have many classrooms
classrooms have a teacher also through subject 

new classes would be:
Classroom
Subject
SubjectClassroom
TeacherSubject

additional methods for student would be
#pick_up_subject
#drop_subject
#scheduled_classroom
#lunch                  (find a NIL value in classroom)
#shared_lunch           (what other students have that free)
#share_class(subject)   (has list of students in that class)


additional teachers  functions
#scheduled_classroom
#lunch
#students_in_classroom
#retire
.schedule 
