'**********************************************************
'                 Classes and Objects Tutorial
'**********************************************************
'Create a class that will help claculate the semester for a student
'Attributes: Student No, Name, test, assignment 1, assignment 2
'Calculate semester mark as follows:
'                   (40% test + 35% assignment 1 + 25% assignment 2)
'Option Explicit
Class Student
    'declare class variables / attributes
    public strStudentNo
    public strName
    public intTestMark
    public intAssignment1
    public intAssignment2
    public intExamMark

    public Function funcGetWelcomeMessage()
        funcGetWelcomeMessage = "Hi " & strName & ", Welcome to your learning dashboard"
    End Function

    public Function funcGetStudentNo()
        funcGetStudentNo = "ST-" & strStudentNo
    End Function

    public Function funcCalcSemesterMark()
        DIM dblSemesterMark

        dblSemesterMark = (intTestMark * 0.4) + (intAssignment1 * 0.35) + (intAssignment2 * 0.25)
        funcCalcSemesterMark = dblSemesterMark

    End Function

    public Function funcCalcFinalMark()
        DIM dblFinalMark

        dblFinalMark = (funcCalcSemesterMark() + intExamMark) / 2

        funcCalcFinalMark = dblFinalMark
    End Function

    public Function funcGetResults()
        DIM strResults

        IF funcCalcFinalMark() >= 80 AND funcCalcFinalMark() <= 100 THEN

            strResults = "Pass With Distinction"
        ELSEIF funcCalcFinalMark() >= 60 AND funcCalcFinalMark() <= 79 THEN
            strResults = "Pass"

        ELSEIF funcCalcFinalMark() >= 40 AND funcCalcFinalMark() <= 59 THEN
            strResults = "Moderate"
        ELSE
            strResults = "Eish"
        END IF

        funcGetResults = strResults
    End function

    public Function funcGetDetails()
        funcGetDetails = "Student No: " & funcGetStudentNo() & vbNewLine & _
                         "Name: " & strName & vbNewLine & _
                         "--------------------------------------" & vbNewLine & _
                         "Test: " & intTestMark & vbNewLine & _
                         "Assignment 1: " & intAssignment1 & vbNewLine & _
                         "Assignment 2: " & intAssignment2 & vbNewLine & _
                         "Semester Mark: " & funcCalcSemesterMark() & vbNewLine & _
                         "Exam Mark: " & intExamMark & vbNewLine & _
                         "Final Mark: " & funcCalcFinalMark() & vbNewLine & _
                         "Results: " & funcGetResults()
    End Function

End Class

'=====================================================================================
'Main Script

'declare
DIM strTitle
SET objStudent = NEW Student

'Assign
strTitle = "Learning Dashboard"
objStudent.strName = InputBox("Please enter your name", strTitle)
MsgBox objStudent.funcGetWelcomeMessage(), 0, strTitle

objStudent.strStudentNo = InputBox("Please enter your student number", strTitle)
objStudent.intTestMark = InputBox("Please enter your test score", strTitle)
objStudent.intAssignment1 = InputBox("Please enter your assignment 1 score", strTitle)
objStudent.intAssignment2 = InputBox("Please enter your assignment 2 score", strTitle)
objStudent.intExamMark = InputBox("Please enter your exam score", strTitle)


MsgBox objStudent.funcGetDetails(), 0, strTitle







