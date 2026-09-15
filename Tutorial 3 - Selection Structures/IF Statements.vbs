'**********************************************************
'                  IF Statement Tutorial
'**********************************************************
'Create a script that will determine if a person is a kid, teenager or an adult
'Kid (1 - 12), Teenager (13 - 19), Adult (20 and above)
Option Explicit

DIM intAge
DIM strResults

'Unary IF
IF intAge >= 18 THEN
    strResults = "Teen"
END IF

'Binary
IF intAge >= 0 AND intAge <= 12 THEN
    strResults = "Kid"
ELSE
    strResults = "Not a kid"
END IF

'16
'IF-ELSE-IF
IF intAge >= 0 AND intAge <=12 THEN
    strResults = "Kid"
ELSEIF intAge > 12 AND intAge <= 19 THEN
    strResults = "Teen"
ELSEIF intAge >= 20 THEN
    strResults = "Adult"
ELSE
    strResults = "Unknown"
END IF
