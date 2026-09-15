'**********************************************************
'                   ARRAY LOOP Tutorial
'**********************************************************
DIM arStrProducts
DIM arDblPrices
DIM strOutput
DIM intPriceCounter

'Assign
arStrProducts = Array("Bread", "Eggs", "Milk", "Coffee", "Cheese")
arDblPrices = Array(21.5, 20.5, 25.5, 85.5, 120.2)
intPriceCounter = 0

'FOR EACH item IN group / array / collection

FOR EACH product IN arStrProducts
    strOutput = strOutput & product & " : " & vbTab & vbTab & arDblPrices(intPriceCounter) & vbNewLine
    intPriceCounter = intPriceCounter + 1
NEXT

MsgBox strOutput, 0, "Array Loop Example"