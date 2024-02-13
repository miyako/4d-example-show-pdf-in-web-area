$event:=FORM Event:C1606

Case of 
	: ($event.code=On Load:K2:1)
		
		WA OPEN URL:C1020(*; OBJECT Get name:C1087; "about:blank")
		
	: ($event.code=On End URL Loading:K2:47)
		
		
		
End case 