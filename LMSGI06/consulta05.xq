(:El número de artistas nacidos antes de 1600:)
(:Solo muestra como resultado un número indicando la cantidad de artistas que cumplen la condición:)
count(doc("artistas.xml")//artista[nacimiento < 1600])

(: Antonio Sanz Pans :)