REM This tutorial is about a basic program flow.
REM Create a program that will calculate the sum of two numbers.
REM 1) Declare variables.
REM 2) Assign values to the variables.
REM 3) Consume / Use values.

'1) Declare variables.
DIM intNumber1
DIM intNumber2
DIM intSum

'2) Assign values to the variables.
intNumber1 = 10
intNumber2 = 12

intSum = intNumber1 + intNumber2

'3) Consume / Use values.
MsgBox "Sum: " & intSum, 0, "Declaring Variables"