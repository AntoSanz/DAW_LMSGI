(:Marca y modelo de las impresoras con más de un tamaño:)
(:Concateno marca y modelo de las imprsoras en el return para mostrarlo:)
for $impresora in doc("impresoras.xml")//impresora[count(tamaño) > 1]
return concat(
  $impresora/marca/text(),
  " ",
  $impresora/modelo/text()
)

(: Antonio Sanz Pans :)