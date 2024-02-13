//%attributes = {}
#DECLARE($file : 4D:C1709.File; $col : Collection) : Collection

$icon:=Is macOS:C1572 ? Form:C1466.source.getIcon() : Form:C1466.source.getIcon(256)
$name:=$file.fullName

return $col.unshift({file: $file; icon: $icon; name: $name})