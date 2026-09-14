REM This tutorial is about receiving user input.
REM Create a program that will calculate the sum, product, quotient and difference of two numbers.
REM InputBox: To accept user input.

'Declare
DIM intNumber1
DIM intNumber2
DIM intSum
DIM intProduct
DIM intDifference
DIM dblQuotient
DIM strTitle


'Assign values to the variables.
strTitle = "User Input"
intNumber1 = CInt(InputBox("Enter number 1", strTitle))
intNumber2 = CInt(InputBox("Enter number 2", strTitle))

'Consume / Use values.
intSum = intNumber1 + intNumber2
intProduct = intNumber1 * intNumber2
intDifference = intNumber1 - intNumber2
dblQuotient = intNumber1 / intNumber2

MsgBox "Sum: " & intSum & vbNewLine & "Product: " & intProduct & vbNewLine & _
"Difference: " & intDifference & vbNewLine & "Quotient: " & dblQuotient, 0, strTitle


