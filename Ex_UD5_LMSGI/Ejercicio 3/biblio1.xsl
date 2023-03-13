<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    <body>
        <xsl:text>Nombre y apellidos: Víctor Chacón</xsl:text>
        <ol>
          <xsl:apply-templates select="bib/libro/autor"/>
        </ol>
    </body>
    </html>
  </xsl:template>

  <xsl:template match="autor">
    <li>
        <xsl:value-of select="apellido"/>
        <xsl:text>, </xsl:text>
        <xsl:value-of select="nombre"/>
    </li>
  </xsl:template>
</xsl:stylesheet>
