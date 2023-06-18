(:Modelo de las impresoras en red:)
(:Solo muestra el modelo de las impresoras con la etiqueta <enred/>:)
for $impresora in doc("../impresoras.xml")//impresora[enred]
return $impresora/modelo/text()

(: Antonio Sanz Pans :)