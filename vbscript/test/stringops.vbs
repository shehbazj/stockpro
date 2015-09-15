Sub GetSubString
trailingCharacters = 30
'SampleString = "abcd acquires efghipqrs"
SampleString = "it is being seen that with the surge in stock prices, abcdefg acquired by efghipqrs"
subString1 = "acquires"
subString2 = "acquired by"

acquires = InStr(1,SampleString,subString1,VBTEXTCOMPARE)
acquiredby = InStr(1,SampleString,subString2,VBTEXTCOMPARE)

length = Len(SampleString)

if acquires<>0 then
	rightPartitionString = right(SampleString,length - acquires - Len(subString1))
	normalizedString = left(rightPartitionString, trailingCharacters)
	msgbox "company that got acquired is in the following string -- " & normalizedString
elseif acquiredby<>0 then
	leftPartitionString = left(SampleString, acquiredby - 1)
	normalizedString = right(leftPartitionString, trailingCharacters)
	msgbox "company that got acquired is in the following string -- " & normalizedString
else
	x = 0
end if

End Sub


GetSubString




'InStr returns the position of the substring. 
'arg 1 - start position - starts with 1
'arg 2 - main string
'arg 3 - substring
'arg 4 - comparision constant -> VBBINARYCOMPARE, VBTEXTCOMPARE, VBDATABASECOMPARE
