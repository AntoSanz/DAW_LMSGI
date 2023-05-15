(:Una lista HTML con el nombre de los artistas nacidos en España:)
(:Genera una lista <ul></ul> con un nodo <li></li> por cada artista que cumple las condiciones:)
<ul>
{
  for $artista in doc("artistas.xml")//artista[pais="España"]
  return <li>{$artista/nombreCompleto}</li>
}
</ul>

(: Antonio Sanz Pans :)