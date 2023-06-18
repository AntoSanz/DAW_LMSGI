(:Nombre de los artistas para los que no hay año de fallecimiento:)
(:Con normalize-space quito la etiqueta <NombreCompleto></NombreCompleto>. Si se quiere con etiqueta hay que quitar esto:)
for $artista in doc("../artistas.xml")//artista[not(fallecimiento)]
return normalize-space($artista/nombreCompleto)

(: Antonio Sanz Pans :)