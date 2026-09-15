'**********************************************************
'                     WHILE LOOP Tutorial
'**********************************************************
'Loop while the condition is true (until the condition is false)
'Display iLAB Training 5 times

DIM intCount 'Loop control variable
DIM strOutput

intCount = 1
strOutput

DO WHILE intCount <= 5
    strOutput = strOutput & intCount & " - iLAB Training" & vbNewLine
    intCount = intCount + 1
LOOP
'value of intCount = 6

MsgBox strOutput





