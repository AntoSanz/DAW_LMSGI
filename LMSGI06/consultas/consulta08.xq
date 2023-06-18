(:Marca y modelo de las impresoras con tamaño A3 (pueden tener otros):)
(:Concateno marca y modelo de las imprsoras en el return para mostrarlo:)
(:El /text() no es necesario para que se muestre en concat el texto bien:)
for $impresora in doc("../impresoras.xml")//impresora[tamaño='A3']
return concat(
  $impresora/marca(:/text():), 
  " ",
  $impresora/modelo(:/text():)
 )
 
 (: Antonio Sanz Pans :)
