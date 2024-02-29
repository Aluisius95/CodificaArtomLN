<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text-css" href="style.css"?>
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:t="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"  
>
<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
    <html>
        <head>
            <title><xsl:value-of select="t:TEI/t:teiHeader/t:fileDesc/t:titleStmt/t:title" /></title>
            <link rel="stylesheet" href="style.css"/>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
            <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
            <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
            <script src="scripts.js"></script>
        </head>
        <header>
            <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" style="padding-left: 2%; padding-right: 2%">
                <a class="navbar-brand" href="#">Codifica di Testi</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pagine</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#page34">Pagina 34</a>
                            <a class="dropdown-item" href="#page35">Pagina 35</a>
                            <a class="dropdown-item" href="#page36">Pagina 36</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#about">About</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <body>
            <div class="container" style="padding-top: 5%">
                <div class="row align-items-start" style="padding-bottom: 5rem;">
                    <div class="col-sm image-container">
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//t:graphic[@xml:id='img34']/@url"/>
                            </xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="col-sm" id="page34">
                        <xsl:value-of select="t:TEI/t:text/t:group/t:text[@xml:id='page_34']" />
                    </div>
                </div>
                <div class="row align-items-start" style="padding-bottom: 5rem;">
                    <div class="col-sm image-container">
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//t:graphic[@xml:id='img35']/@url"/>
                            </xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="col-sm" id="page34">
                        <xsl:value-of select="t:TEI/t:text/t:group/t:text[@xml:id='page_35']" />
                    </div>
                </div>
                <div class="row align-items-start" style="padding-bottom: 5rem;">
                    <div class="col-sm image-container">
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//t:graphic[@xml:id='img36']/@url"/>
                            </xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="col-sm" id="page34">
                        <xsl:value-of select="t:TEI/t:text/t:group/t:text[@xml:id='page_36']" />
                    </div>
                </div>
                <!--<div id="page35"><xsl:value-of select="t:TEI/t:text/t:group/t:text[@xml:id='page_35']" /></div>
                    <div id="page36"><xsl:value-of select="t:TEI/t:text/t:group/t:text[@xml:id='page_36']" /></div>-->
            </div>
            <footer id="about" class="container bg-dark" style="margin: 0">
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quos totam sit, harum laborum autem fugit corrupti voluptatibus excepturi quam placeat veritatis. Maiores non totam tempora itaque ex maxime officia enim.</p>
        </footer>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>

<!-- java -cp .\SaxonHE10-3J\* net.sf.saxon.Transform -s:C:\Users\lnoto\Desktop\CodificaArtomLN\codifica.xml -xsl:C:\Users\lnoto\Desktop\CodificaArtomLN\codifica.xsl -o:C:\Users\lnoto\Desktop\CodificaArtomLN\codifica.html -->