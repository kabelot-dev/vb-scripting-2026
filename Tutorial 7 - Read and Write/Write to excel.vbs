'**********************************************************
'                 Write Excel Tutorial
'**********************************************************
DIM strFilepath
DIM objExcel 
DIM objFileSystem

strFilepath = "D:\VB Scripting Course\2026\VBSCourse\Tutorial 7 - Read and Write\Files\Modules.xlsx"

SET objExcel = CreateObject("Excel.Application")
SET objFileSystem = CreateObject("Scripting.FileSystemObject")

IF objFileSystem.FileExists(strFilepath) THEN
   objExcel.Workbooks.Open(strFilepath)
   'objExcel.ActiveWorkbook.Save
END IF

    objExcel.Workbooks.Add 'attach a workbook
    objExcel.Worksheets(1).Cells(1,1).Value = "Module"
    objExcel.Worksheets(1).Cells(1,2).Value = "Score"
    objExcel.Worksheets(1).Cells(2,1).Value = "VB Scripting"
    objExcel.Worksheets(1).Cells(2,2).Value = 79
    objExcel.Worksheets(1).Cells(3,1).Value = "Java"
    objExcel.Worksheets(1).Cells(3,2).Value = 80
    objExcel.Worksheets(1).Cells(4,1).Value = "Python"
    objExcel.Worksheets(1).Cells(4,2).Value = 65

    objExcel.ActiveWorkbook.SaveAs(strFilepath) 'Saving process fails here
objExcel.Quit



