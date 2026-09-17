Class Employee
'Class variables
public strEmployeeNo
public strFirstname
public strLastname
public dblHoursWorked
public strDepartment

    public Function funcGetWelcomeMessage()
        funcGetWelcomeMessage = "Hi, " & strFirstname & " " & strLastname & _ 
                                " welcome to Employee Management System"
    End function

    private Function funcGetEmployeeNo()
        funcGetEmployeeNo = "E-" & strEmployeeNo
    End Function

    private Function funcCalcSalary()
        DIM dblRate

        IF strDepartment = "IT" THEN
            dblRate = 370
        ELSEIF strDepartment = "HR" THEN
            dblRate = 300
        ELSEIF strDepartment = "FINANCE" THEN
            dblRate = 350
        ELSE
            dblRate = 250
        END IF

        funcCalcSalary = (dblRate * dblHoursWorked)
    End Function

    public Function funcGetEmployeeDetails()
        funcGetEmployeeDetails = "Fullname: " & strFirstname & " " & strLastname & vbNewLine & _
                                vbNewLine & "Employee No: " & funcGetEmployeeNo() & vbNewLine & _
                                vbNewLine & "Department: " & strDepartment & vbNewLine & _
                                vbNewLine & "Hours Worked: " & dblHoursWorked & vbNewLine & _
                                vbNewLine & "Salary: R" & funcCalcSalary()
    End Function

End Class

'Main Script
'Declare
SET objEmployee = NEW Employee
DIM strEmpNo
DIM intHours
Const strTitle = "Employee Management System"

Do
strEmpNo = Trim(InputBox("Enter your employee number", strTitle))

LOOP WHILE isNumeric(strEmpNo) = False

'0 - 184
Do
intHours = CInt(InputBox("Enter Hours Worked (0 - 184)",strTitle))

LOOP WHILE intHours < 0 OR intHours > 184

objEmployee.strEmployeeNo = strEmpNo



   