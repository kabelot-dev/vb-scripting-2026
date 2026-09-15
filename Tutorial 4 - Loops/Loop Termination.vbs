
DIM intNumber

DO
    intNumber = InputBox("Please enter a numeric value")
    
    IF isNumeric(intNumber) = FALSE THEN
        MsgBox "Please enter a numeric value"
    END IF

    IF intNumber = "n" THEN
        EXIT DO
    END IF

LOOP UNTIL isNumeric(intNumber) = TRUE

MsgBox "Yep, " & intNumber & " is numeric"