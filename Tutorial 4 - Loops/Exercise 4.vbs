DIM strOperator
DIM dblNumber1, dblNumber2
DIM dblResults
DIM strTitle
DIM strUserResponse

strTitle = "Calculator App"
DO
    DO
    strOperator = UCase(InputBox("Please enter your operation or 'EXIT' to exit the application: " & vbNewLine & _
                            "1 (+) Addition" & vbNewLine & _
                            "2 (-) Subtraction" & vbNewLine & _
                            "3 (*) Multiplication" & vbNewLine & _
                            "4 (/) Division", strTitle))

    LOOP WHILE strOperator <> "+" AND strOperator <> "-" AND strOperator <> "*" AND strOperator <> "/" AND strOperator <> "EXIT"

    IF strOperator = "EXIT" THEN
        EXIT DO
    END IF

    dblNumber1 = CDbl(InputBox("Please enter the first number", strTitle))
    dblNumber2 = CDbl(InputBox("Please enter the second number", strTitle))

    IF strOperator = "+" THEN
        dblResults = dblNumber1 + dblNumber2
    ELSEIF strOperator = "-" THEN
        dblResults = dblNumber1 - dblNumber2
    ELSEIF strOperator = "*" THEN
        dblResults = dblNumber1 * dblNumber2
    ELSEIF strOperator = "/" THEN
        DO WHILE dblNumber2 = 0
            dblNumber2 = CDbl(InputBox("Cannot divide by zero. Please enter a different value for the second number"))
        LOOP
        dblResults = dblNumber1 / dblNumber2
    END IF

    MsgBox "Results: " & dblResults, 0, strTitle 

    'Get user response
    strUserResponse = Trim(LCase(InputBox("Do you want to continue? (yes / no)", strTitle)))
LOOP UNTIL strUserResponse <> "yes"


