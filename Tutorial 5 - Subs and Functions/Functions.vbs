'**********************************************************
'                 Functions Tutorial
'**********************************************************
'Create a function that will return a welcome message
Function funcGetWelcomeMessage(strName)
    'return the message
    funcGetWelcomeMessage = "Hi " & strName & ", Welcome to VB Scripting Course"

End Function

'Create a function that will take firstname and lastname as parameters,
'and return the fullname
Function funcGetFullname(strFirstname, strLastname)
    DIM strFullname

    strFullname = strFirstname & " " & UCase(strLastname)

    funcGetFullname = strFullname

End Function


'========================================================================================
'Main Script

MsgBox funcGetWelcomeMessage("Kabelo")
MsgBox funcGetFullname("Caroline", "Smith")
'WScript.Echo funcGetWelcomeMessage("Kabelo")