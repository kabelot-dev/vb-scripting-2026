'**********************************************************
'                 Read From Excel Tutorial
'**********************************************************
'Declare
DIM strFilepath
DIM objExcel 'Allow our script to communicate with Excel application
DIM objWorkbook
DIM objWorksheet
DIM objCells
DIM intCountSheets
DIM strOutput
DIM intUsedRows, intUsedColumns

strFilepath = "D:\VB Scripting Course\2026\VBSCourse\Tutorial 7 - Read and Write\Files\Copy of Cities.xlsx"
SET objExcel = CreateObject("Excel.Application")
SET objWorkbook = objExcel.Workbooks.Open(strFilepath)

intCountSheets = objWorkbook.Worksheets.Count

FOR intSheets = 1 TO intCountSheets
    SET objWorksheet = objWorkbook.Worksheets(intSheets)
    strOutput = strOutput & "Reading from worksheet (" & intSheets & ")" & vbNewLine & _
                            "--------------------------------" & vbNewLine
    intUsedRows = objWorksheet.UsedRange.Rows.Count
    intUsedColumns = objWorksheet.UsedRange.Columns.Count

    SET objCells = objWorksheet.Cells

    'Loop through rows and columns
    FOR row = 1 TO intUsedRows

        FOR col = 1 TO intUsedColumns
            strOutput = strOutput & objCells(row, col) & vbTab & vbTab
        NEXT

        strOutput = strOutput & vbNewLine

    NEXT

    MsgBox strOutput

    strOutput = ""

NEXT

objExcel.Quit




