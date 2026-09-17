
DIM strFilepath
DIM objExcel 
DIM objWorkbook
DIM objWorksheet
DIM strOutput
DIM objCells
DIM intCount

strFilepath = "D:\VB Scripting Course\2026\VBSCourse\Tutorial 7 - Read and Write\Files\Copy of Cities.xlsx"

SET objExcel = CreateObject("Excel.Application")
SET objWorkbook = objExcel.Workbooks.Open(strFilepath)
SET objWorksheet = objWorkbook.Worksheets(1)
SET objCells = objWorksheet.Cells

strOutput = strOutput & objCells(1,1) & vbTab & objCells(1,2) & vbNewLine & _
"-----------------------------------" & vbNewLine
intCount = 2
DO UNTIL objCells(intCount, 1).Value = ""
    strOutput = strOutput & objCells(intCount, 1) & vbTab & objCells(intCount, 2) & vbNewLine
    intCount = intCount + 1
LOOP

MsgBox strOutput

objExcel.Quit
