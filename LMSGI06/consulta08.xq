(:Marca y modelo de las impresoras con tamaño A3 (pueden tener otros):)
for $impresora in doc("impresoras.xml")//impresora[tamaño='A3']
return concat(
  $impresora/marca/text(), 
  " ",
  $impresora/modelo/text()
 )
 (:Concateno marca y modelo de las imprsoras en el return para mostrarlo:)
