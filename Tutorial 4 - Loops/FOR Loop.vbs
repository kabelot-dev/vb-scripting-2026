'**********************************************************
'                       FOR LOOP Tutorial
'**********************************************************
'Display iLAB Training 5 times

DIM strOutput

FOR intCount = 1 To 5 STEP 2 'Increment by 2
    strOutput = strOutput & intCount & ": iLAB TRaining" & vbNewLine
NEXT

MsgBox strOutput

