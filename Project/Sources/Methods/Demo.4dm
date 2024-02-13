//%attributes = {}
#DECLARE($params : Object)

If (Count parameters:C259=0)
	
	CALL WORKER:C1389(1; Current method name:C684; {})
	
Else 
	
	$window:=Open form window:C675("Demo")
	DIALOG:C40("Demo"; *)
	
End if 