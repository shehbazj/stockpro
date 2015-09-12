Dim o
Set o = CreateObject("MSXML2.XMLHTTP")
o.open "GET", "http://www.prnewswire.com/news-releases/financial-services-latest-news/acquisitions-mergers-and-takeovers-list/?pagesize=200" , False
o.send
Dim response
response = o.responseText
'Set found = response.search("a")
Dim found
found = InStr(1,response,"Acquire")
If found <> 0 Then
	 MsgBox ("Found acquire in text at position " & found)
Else
	MsgBox ("Did not find acquire ")
End If