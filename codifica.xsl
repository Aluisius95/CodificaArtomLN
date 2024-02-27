<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:t="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"  
>
<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="fileDesc">
    <h1><xsl:value-of select="titleStmt/title" /></h1>
</xsl:template>

</xsl:stylesheet>

<!-- java -cp .\SaxonHE10-3J\* net.sf.saxon.Transform -s:C:\Users\lnoto\Desktop\CodificaArtomLN\codifica.xml -xsl:C:\Users\lnoto\Desktop\CodificaArtomLN\codifica.xsl -o:C:\Users\lnoto\Desktop\CodificaArtomLN\codifica.html -->