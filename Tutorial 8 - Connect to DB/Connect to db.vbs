'**********************************************************
'                 Database Tutorial
'**********************************************************
DIM strConnectionString
DIM objResultSet
DIM strOutput
DIM strSelctCmd
DIM objConnection

strConnectionString = "provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\VB Scripting Course\2026\VBSCourse\Tutorial 8 - Connect to DB\Northwind.accdb"
SET objConnection = CreateObject("ADODB.CONNECTION")
SET objResultSet = CreateObject("ADODB.RECORDSET")

objConnection.Open(strConnectionString) 'open the connection

strSelctCmd = "SELECT * FROM Customers"

objResultSet.open strSelctCmd, objConnection

DO WHILE NOT objResultSet.EOF
    strOutput = strOutput & objResultSet.Fields.Item("CustomerID") & " - " & objResultSet.Fields.Item(1) & vbNewLine
    objResultSet.MoveNext
LOOP

MsgBox strOutput, 0, "Database Example"

objConnection.Close
