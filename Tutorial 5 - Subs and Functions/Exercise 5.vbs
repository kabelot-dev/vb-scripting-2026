create a script that will perform different calculations using 
functions. The script should have the following functions:
1 - a function to calculate the sum 
2 - a function to calculate the product 
3 - a function to calculate the difference 
4 - a function to calculate the quotient
All these functions should take 2 numbers as parameters 
The script should have the following subroutine:
1 - a sub to display a welcome message.
Lastly, the script should display the sum, difference, product
and quotient of the 2 numbers
Option Explicit
Function funcCalcSum(intNum1, intNum2)
    funcCalcSum = intNum1 + intNum2 
End Function

Function funcCalcDifference(intNum1, intNum2)
    funcCalcDifference = intNum1 -intNum2 
End Function

Function funcCalcProduct(intNum1, intNum2)
    funcCalcProduct = intNum1 * intNum2 
End Function

Function funcCalcQuotient(intNum1, intNum2)
    IF intNum2 = 0 THEN
        funcCalcQuotient = "Cannot divide by zero" 
    ELSE
        funcCalcQuotient = intNum1 / intNum2 
    END IF
    
End Function

Sub subWelcomeMessage()
    MsgBox "Welcome to the Calculator App"
End Sub
'=====================================================================================
'Main Script

DIM intNum1, intNum2

Call subWelcomeMessage()

intNum1 = CDbl(InputBox("Enter number 1"))
intNum2 = CDbl(InputBox("Enter number 2"))

MsgBox "Results for " & intNum1 & " and " & intNum2 & ": " & vbNewLine & vbNewLine & _
        "Sum: " & funcCalcSum(intNum1, intNum2) & vbNewLine & _
        "Product: " & funcCalcProduct(intNum1, intNum2) & vbNewLine & _
        "Difference: " & funcCalcDifference(intNum1, intNum2) & vbNewLine & _
        "Quotient: " & funcCalcQuotient(intNum1, intNum2)

