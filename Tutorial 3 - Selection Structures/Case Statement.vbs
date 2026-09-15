'**********************************************************
'                 CASE Statement Tutorial
'**********************************************************
'Create a script that will assign a supervisor depending on the department number
'Mike: (1,7) Jessica: (2,3) John: (4,5,8) Thabo: 6,9
DIM intDepartmentID
DIM strSupervisor

intDepartmentID = CInt(InputBox("Enter Department ID"))

SELECT CASE(intDepartmentID)
case 1, 7
    strSupervisor = "Mike"
case 2, 3
    strSupervisor = "Jessica"
case 4, 5, 8
    strSupervisor = "John"
case 6, 9
    strSupervisor = "Thabo"
case else
    strSupervisor = "No supervisor"
END SELECT

MsgBox "Supervisor for department (" & intDepartmentID & ") is " & strSupervisor, 0, "Department Application" 
