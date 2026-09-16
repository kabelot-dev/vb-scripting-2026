'**********************************************************
'                 Subroutines Tutorial
'**********************************************************
REM Subroutines are modules that receive input, do processing but 
REM do not return the value back to the caller

Sub subDisplayMessage(strName)
    MsgBox("Hi " & strName & ", Welcome to VB Scripting Course")
End Sub

Sub subDisplayNumbersInRange(intStart, intStop)
    DIM strAllNumbers

    FOR intCount = intStart TO intStop
        strAllNumbers = strAllNumbers & intCount & "  |  "
    NEXT

    MsgBox "Numbers from " & intStart & " to " & intStop & " are: " & vbNewLine & _
            vbNewLine & strAllNumbers
End Sub

Sub subDisplayEvenNumbers(intStart, intStop)
    DIM strEvenNumbers
    DIM intCount

    intCount = intStart

    DO WHILE intCount <= intStop
        IF intCount Mod 2 = 0 THEN
            strEvenNumbers = strEvenNumbers & intCount & "  |  "
        End IF
        intCount = intCount + 1
    LOOP

     MsgBox "Even Numbers from " & intStart & " to " & intStop & " are: " & vbNewLine & _
            vbNewLine & strEvenNumbers

End Sub


'==========================================================================================
'Main Script
DIM strFirstname

strFirstname = Trim(InputBox("Please enter your name"))

Call subDisplayMessage(strFirstname)
Call subDisplayNumbersInRange(4, 15)
Call subDisplayEvenNumbers(4, 15)
