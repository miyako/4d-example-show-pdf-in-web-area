$event:=FORM Event:C1606

Case of 
	: ($event.code=On Drag Over:K2:13)
		
		$path:=Get file from pasteboard:C976(1)
		
		If ($path#"") && (Test path name:C476($path)=Is a document:K24:1) && (Path to object:C1547($path).extension=".pdf")
			$0:=0
		Else 
			$0:=-1
		End if 
		
	: ($event.code=On Drop:K2:12)
		
		$path:=Get file from pasteboard:C976(1)
		
		Form:C1466.source:=File:C1566($path; fk platform path:K87:2)
		
		WA OPEN URL:C1020(*; "Preview"; Form:C1466.add(Form:C1466.source; Form:C1466.files.col).at(0).file.platformPath)
		
		LISTBOX SELECT ROW:C912(*; OBJECT Get name:C1087; 1; lk replace selection:K53:1)
		
	: ($event.code=On Selection Change:K2:29)
		
		var $item : Object
		
		$item:=Form:C1466.files.item
		
		If ($item#Null:C1517)
			WA OPEN URL:C1020(*; "Preview"; $item.file.platformPath)
		Else 
			WA OPEN URL:C1020(*; "Preview"; "about:blank")
		End if 
		
End case 