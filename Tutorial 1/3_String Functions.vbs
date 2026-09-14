Option Explicit
REM Working with String Functions
REM 1) Get input from the user
REM 2) Trim: Remove leading spaces
REM 3) LCase / UCase: Covert string to lower / upper case
REM 4) Len: Count the number of characters in a string
REM 5) Left: Extract characters from the left
REM 6) Right: Extract characters from the right
REM 7) InStr: Get position of a string

'Declare
DIM strTitle
DIM strFirstname
DIM strLastname
DIM strFullname
DIM strOutput
DIM strSearch
DIM intPosition

'Assign
strTitle = "String Functions"
strFirstname = UCase(Trim(InputBox("Enter Firstname", strTitle)))'Kabelo
strLastname = Trim(InputBox("Enter Lastname", strTitle))
strLastname = UCase(strLastname)
strFullname = strFirstname & " " & strLastname
  
'Hi, Kabelo Tlhape, welcome to vb scripting course.
'Your name (Kabelo) has 6 characters

strOutput = "Hi, " & strFullname & ", welcome to VB Scripting Course." & vbNewLine & _
            vbNewLine & "Your name (" & strFirstname & ") has " & Len(strFirstname) & " characters"

MsgBox strOutput, 0, strTitle

strOutput = Empty

strOutput = "3 Letters from the left of (" & strFirstname & "): " & Left(strFirstname, 3) & vbNewLine & _
            vbNewLine & "3 letters from the right of (" & strFirstname & ")" & Right(strFirstname, 3)

MsgBox strOutput, 0, strTitle

strOutput = Empty

strSearch = Trim(InputBox("Enter a letter to search for...", strTitle))
'Kabelo
intPosition = InStr(1, strFirstname, UCase(strSearch))
                                               
strOutput = "Character (" & strSearch & ") is found at position " & intPosition

MsgBox strOutput, 0, strTitle






