(:Nombre, fecha de nacimiento y fecha fallecimiento de todos los artistas:)
(:Si algun dato falta debería aparecer en blanco:)
for $artista in doc("artistas.xml")//artista
return concat(
  "Nombre: ", $artista/nombreCompleto, 
  ", Fecha de nacimiento: ", $artista/nacimiento, 
  ", Fecha de fallecimiento: ", $artista/fallecimiento, 
  "&#xA;"
)

(: Antonio Sanz Pans :)