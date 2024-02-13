$event:=FORM Event:C1606

Case of 
	: ($event.code=On Load:K2:1)
		
		Form:C1466.add:=Formula:C1597(add)
		
		Form:C1466.files:={col: New collection:C1472; item: Null:C1517; pos: Null:C1517; sel: Null:C1517}
		
	: ($event.code=On Unload:K2:2)
		
		
		
End case 