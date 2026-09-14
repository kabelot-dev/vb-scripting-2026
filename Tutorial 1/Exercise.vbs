'Create a script that prompt the user for their fullname,
'the script should split the fullname into firstname and lastname.
'Display the firstname and lastname

DIM strFirstname
DIM strLastname
DIM strFullname
DIM intSpacePosition
'Kabelo Tlhape
strFullname = Trim(InputBox("Enter fullname"))
intSpacePosition = InStr(1, strFullname, " ")
strFirstname = Left(strFullname, intSpacePosition - 1)
strLastname = Right(strFullname, Len(strFullname) - intSpacePosition)

MsgBox strFirstname
MsgBox strLastname





