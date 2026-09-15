'**********************************************************
'                 Nested IF Statement Tutorial
'**********************************************************
'Loan Approval: you can qualify for a loan if you are 18 and above, 
'you are employed and earn R10 000 or more

DIM intAge'1
DIM isEmployed'2
DIM dblSalary'3
DIM strFeedback'4

'Assign
intAge = 25'5
isEmployed = FALSE'6
dblSalary = 5000'7

IF intAge >= 18 THEN'8 TRUE, TRUE, TRUE, FALSE
    IF isEmployed THEN'9   TRUE, TRUE, FALSE
        IF dblSalary >= 10000 THEN'10    TRUE, FALSE
            strFeedback = "Approved"'11
        ELSE IF dblSalary = 5000 THEN
            'statment
        ELSE
            strFeedback = "Declined: You need to earn R10 000 or more"'12
        END IF
    ELSE
        strFeedback = "Declined: You need to be employed"'13
    END IF
ELSE
    strFeedback = "Declined: You should at least be 18 years old"'14
END IF

MsgBox "Feedback: " & strFeedback'15

'TC1: 1, 2, 3, 4, 5, 6, 7, 8, 14, 15 = 67%
'TC2: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 15 = 80%
'TC3: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 15 = 80%
'TC4: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 13, 15 = 80%

'Statement coverage = #ELSE + 1
'Decision coverage = #IF + 1
