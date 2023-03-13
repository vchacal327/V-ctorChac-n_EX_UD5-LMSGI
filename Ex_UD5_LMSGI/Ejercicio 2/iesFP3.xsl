<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    <body>
        <xsl:text>Nombre y apellidos: Víctor Chacón</xsl:text>
        <ul>
          <xsl:apply-templates select="ies/ciclos/ciclo"/>
        </ul>
    </body>
    </html>
  </xsl:template>

  <xsl:template match="ciclo">
    <li>
      <xsl:text>"</xsl:text><xsl:value-of select="nombre"/><xsl:text>"</xsl:text>
      <xsl:text> (</xsl:text><xsl:value-of select="grado"/><xsl:text>)</xsl:text>
    </li>
  </xsl:template>
</xsl:stylesheet>