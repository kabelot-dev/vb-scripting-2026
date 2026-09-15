'**********************************************************
'                   DO UNTIL LOOP Tutorial
'**********************************************************
'Loop until the codition is true (while the condition is false)
'Display iLAB Training 5 times
DIM intCount
DIM strOutput

intCount = 1

DO UNTIL intCount = 6
    strOutput = strOutput & intCount & " - iLAB Training" & vbNewLine
    intCount = intCount + 1
LOOP

MsgBox strOutput
