'**********************************************************
'                   DO UNTIL LOOP Tutorial
'**********************************************************
'Execute the loop before testing the condition
'This loop will execute / run at least once

DIM intNumber

DO
    intNumber = InputBox("Please enter a numeric value")'x

LOOP UNTIL isNumeric(intNumber) = TRUE

MsgBox "Yep, " & intNumber & " is numeric"



