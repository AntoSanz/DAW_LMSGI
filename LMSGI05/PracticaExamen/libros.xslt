<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Tres libros</h2>
                <table border="1">
                    <tr>
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>paginas</th>
                        <th>editorial</th>
                        <th>precio</th>
                        <th>fecha</th>
                    </tr>
                    <xsl:for-each select="libros/libro">
                        <xsl:sort select="autor" />
                            <tr>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="autor" />
                            </td>
                            <td>
                                <xsl:value-of select="@paginas" />
                            </td>
                            <td>
                                <xsl:value-of select="editorial" />
                            </td>
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                            <td>
                                <xsl:value-of select="fecha" />
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>