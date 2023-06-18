(:Modelo de las impresoras de tipo “matricial”:)
for $impresora in doc("../impresoras.xml")//impresora[@tipo='matricial']
return $impresora/modelo/text()

(: Antonio Sanz Pans :)