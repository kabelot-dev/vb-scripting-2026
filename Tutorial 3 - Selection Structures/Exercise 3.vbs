'Scenario: The script should determine if the student can submit assignment 1 
'and assignment 2. This will be based on whether the student scores above 50% 
'for their test. The student needs 55% and above on  assignment 1, 
'if they do, ask them to submit assignment 2. The student needs 60% and above 
'for assignment 2. If the student fails assignment 2, the program should 
'check if they have at least 75% class attendance.
DIM intTestMark, intAssignment1, intAssignment2, intAttendance
DIM strResults
DIM strTitle

strTitle = "Student Grading Application"
intAttendance = 85
intTestMark = CInt(InputBox("Enter test mark", strTitle))

IF intTestMark > 50 THEN
    intAssignment1 = CInt(InputBox("Enter Assignment 1", strTitle))
    IF intAssignment1 >= 55 THEN
        intAssignment2 = CInt(InputBox("Enter Assignment 2", strTitle))
        IF intAssignment2 >= 60 THEN'15
            strResults = "Good job!!... You passed all the assessments"
        ELSE
            IF intAttendance >= 75 THEN
                strResults = "Assignment 2 was converted based on 75% attendance"
            ELSE
                strResults = "You failed Assignment 2. You didn't achieve at least 75% for attendance"
            END IF
            
        END IF
    ELSE
        strResults = "You failed Assignment 1. You cannot submit assignment 2"
    END IF
ELSE
    strResults = "You failed the test. You cannot submit any assignments"
END IF

MsgBox strResults, 0, strTitle

