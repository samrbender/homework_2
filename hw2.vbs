Sub easy()
    
    Dim ticker as String
    Dim total as Double
    total = 0
    Dim ticker_row as Integer
    ticker_row = 2

    For i = 2 to 70926

        If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then

            ticker = Cells(i, 1).Value
            total = total + Cells(i, 7).Value
            Range("I" & ticker_row).Value = ticker
            Range("J" & ticker_row).Value = total
            ticker_row = ticker_row + 1
            total = 0
        Else

            total = total + Cells(i, 7).Value
        
        End If

    Next i

End Sub
