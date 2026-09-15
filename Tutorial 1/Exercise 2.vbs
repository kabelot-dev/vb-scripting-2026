'Create a script that prompt the user for their fullname,
'the user can enter their name in any case. 
'The script should always display the fullname in camel case
'Example Input:  KABELO TLHAPE / bongani khumalo / rene van eck
'Example Ouput:  Kabelo Tlhape / Bongani Khumalo / Rene Van Eck

DIM strFullname
DIM strFirstname
DIM strLastname
DIM strMiddleName
DIM intSpacePosition

strFullname = Trim(LCase(InputBox("Enter fullname")))
'kabelo john smith
intSpacePosition = InStr(strFullname, " ")
strFirstname = Left(strFullname, intSpacePosition - 1)
'kabelo
strFirstname = UCase(Left(strFirstname, 1)) & Right(strFirstname, Len(strFirstname) - 1)
'Kabelo
strMiddleName = Right(strFullname, Len(strFullname) - intSpacePosition)
'john smith
intSpacePosition = InStr(strMiddleName, " ")
MsgBox intSpacePosition
strMiddleName = UCase(Left(strMiddleName, 1)) & Right(strMiddleName, Len(strMiddleName) - 1)
'John smith

strLastname = Right(strFullname, Len(strFullname) - intSpacePosition)
MsgBox strLastname
'smith
strLastname = UCase(Left(strLastname,1)) & Right(strLastname, Len(strLastname) - 1)
'Smith

MsgBox strFirstname
MsgBox strMiddleName
MsgBox strLastname