(:Modelo de las impresoras de tipo “matricial”:)
for $impresora in doc("../impresoras.xml")//impresora[@tipo='matricial']
return normalize-text($impresora/modelo)

(: Antonio Sanz Pans :)