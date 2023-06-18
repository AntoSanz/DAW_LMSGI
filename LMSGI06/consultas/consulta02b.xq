(:El nombre (sin etiquetas) de los artistas que nacieron después de 1500:)
for $artista in doc("../artistas.xml")//artista[nacimiento > 1500]
return $artista/nombreCompleto/text()

(: Antonio Sanz Pans :)