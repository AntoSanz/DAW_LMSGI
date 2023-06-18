(:Marca y modelo de las impresoras con tamaño A5 como único tamaño:)
(:Concateno marca y modelo de las imprsoras en el return para mostrarlo:)
(:Sin modificar nada en el xml, no hay resultados que coincidan con esta consulta asi que deberia aparecer en blanco:)
for $impresora in doc("../impresoras.xml")//impresora[tamaño = 'A5' and count(tamaño) = 1]
return concat(
  $impresora/marca/text(),
   ' ',
   $impresora/modelo/text()
 )

(: Antonio Sanz Pans :)