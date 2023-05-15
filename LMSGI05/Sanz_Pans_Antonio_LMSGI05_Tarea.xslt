<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" />
<xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8" />
        <title>Tabla de artistas</title>
      </head>
      <body>
        <table border="1">
        <!--Cabecera-->
          <tr> 
            <th>Código</th>
            <th>Nombre</th>
            <th>Año de nacimiento</th>
            <th>Movimiento</th>
            <th>Género</th>
            <th>País</th>
            <th>Página web</th>
          </tr>
        <!--Cuerpo de la tabla-->
        <!-- Filtro en el for para solo artistas de España-->
        <xsl:for-each select="artistas/artista[pais='España']"> 
        <!-- Ordenado por movimiento -->
        <xsl:sort select="movimiento"/> 
            <tr>
              <td>
                <xsl:value-of select="@cod" />
              </td>
              <td>
                <xsl:value-of select="nombreCompleto" />
              </td>
              <td>
                <xsl:value-of select="nacimiento" />
              </td>
              <td>
                <xsl:value-of select="movimiento" />
              </td>
              <td>
               <!-- Si tiene genero, lo pintará, si no lo tiene, pintará "Varios"-->
                <xsl:choose>
                  <xsl:when test="genero">
                    <xsl:value-of select="genero" />
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:text>Varios</xsl:text>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
              <td>
                <xsl:value-of select="pais" />
              </td>
              <td>
              <!-- Vinculo desde "Saber mas" -->
                <a href="{fichaCompleta}">Saber más</a> 
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>