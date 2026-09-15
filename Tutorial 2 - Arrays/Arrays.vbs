'**********************************************************
'                       Arrays Tutorial
'**********************************************************
REM Arrays are variables that can store multiples values of the same data type
'Declare
DIM arIntNumbers(5) 'empty array to store 5 numbers
DIM arStrNames
DIM strTitle

'Assign
strTitle = "Array Example"
arIntNumbers(0) = 25
arIntNumbers(2) = 30
arIntNumbers(4) = 15
arIntNumbers(1) = 10
arIntNumbers(3) = 5

'array with initial values
arStrNames = Array("Thabo", "Jessica", "Mike", "John", "Caroline")

'Use - Access items inside the array

MsgBox arIntNumbers(3) & vbNewLine & _
        arStrNames(4), vbOkOnly, strTitle

