Option Explicit
DIM strFilepath
DIM objExcel
DIM objFileSystem
 
 
strFilepath = "D:\VB Scripting Course\2026\VBSCourse\Tutorial 7 - Read and Write\Files\Modules.xlsx"
SET objExcel = CreateObject("Excel.Application")
SET objFileSystem = CreateObject("Scripting.FileSystemObject")
IF objFileSystem.FileExists(strFilepath) THEN
    objExcel.Workbooks.Open(strFilepath)
    ' objExcel.ActiveWorkbook.Save
 
' objExcel.Workbooks.Open(strFilepath)
ELSE
   objExcel.Workbooks.Add
END IF
 
objExcel.Worksheets(1).Cells(1,1).value = "Module"
objExcel.Worksheets(1).Cells(1,2).value = "Score"
objExcel.Worksheets(1).Cells(2,1).value = "VB Scripting"
objExcel.Worksheets(1).Cells(2,2).value = 79
objExcel.Worksheets(1).Cells(3,1).value = "Java"
objExcel.Worksheets(1).Cells(3,2).value = 80
objExcel.Worksheets(1).Cells(4,1).value = "Python"
objExcel.Worksheets(1).Cells(4,2).value = 65
objExcel.ActiveWorkbook.SaveAs(strFilepath)
 
If objFileSystem.FileExists(strFilepath) Then
    objExcel.ActiveWorkbook.Save
Else
    objExcel.ActiveWorkbook.SaveAs(strFilepath)
End If
 
objExcel.Quit