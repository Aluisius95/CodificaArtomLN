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
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
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
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pagine</a>
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
        <body style="padding-top:70px">
            <!--Introduzione-->
            <div class="container" style="padding: 5rem 0 0 0">
                <div class="text-center"><!--id="title" style="text-align:center"-->
                    <h2 class="text-uppercase"><xsl:value-of select="//t:titleStmt//t:title" /></h2>
                    <h3>Manoscritto di 
                        <a href="https://it.wikipedia.org/wiki/Emanuele_Artom" target="_blank" style="color: black; text-style: none">
                            <xsl:value-of select="//t:titleStmt//t:persName[@xml:id='EA']" />
                            <i style="font-size:24px" class="fa">&#xf08e;</i>
                        </a>
                    </h3>
                    <p>
                        <xsl:value-of select="//t:titleStmt//t:resp" />&#58;<br />
                        <xsl:value-of select="//t:titleStmt//t:persName[@xml:id='LN']" />
                    </p>
                </div>
            </div>

            <!--Pagine-->
            <div class="container" style="padding: 5rem 0">
                <div class="row" id="page34" style="padding: 5rem 0">
                    <div class="col-sm image-container">
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//t:graphic[@xml:id='img34']/@url"/>
                            </xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="col-sm">
                        <xsl:value-of select="//t:text[@xml:id='page_34']" />
                    </div>
                </div>
                <div class="row align-items-start" id="page35" style="padding: 5rem 0">
                    <div class="col-sm image-container">
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//t:graphic[@xml:id='img35']/@url"/>
                            </xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="col-sm">
                        <xsl:value-of select="//t:text[@xml:id='page_35']" />
                    </div>
                </div>
                <div class="row align-items-start" id="page36" style="padding: 5rem 0">
                    <div class="col-sm image-container">
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//t:graphic[@xml:id='img36']/@url"/>
                            </xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="col-sm">
                        <xsl:value-of select="//t:text[@xml:id='page_36']" />
                    </div>
                </div>
                <!--About-->
            </div>
            <footer id="about" class="bg-dark" style="padding: 20px;">
                <div style="color: white">
                    <div class="text-center">
                        <p class="text-uppercase">Informazioni riguardo il progetto</p>
                    </div>
                    <div class="container">
                        <div class="row g-0">
                            <div class="col-md" id="info-sinistra" style="padding: 10px">
                                <p class="text-center">
                                    Informazioni sull&#39;editore&#58;
                                </p>
                                <p>Testo codificato ed elaborato da</p>
                                <p><xsl:value-of select="//t:editionStmt/t:respStmt/t:persName/t:ref/@target"/></p>
                            </div>
                            <div class="col-md text-center" id="info-centrale" style="padding: 10px">
                                <p>
                                    Sviluppato per&#58;<br />
                                    <xsl:value-of select="//t:publicationStmt/t:publisher" /><br />
                                    <img src="Stemma_unipi.png" alt="logoUniPi" style="margin-top: 15px; width:40%;height:auto"/>
                                </p>
                                <p>Progetto disponibile <span class="text-lowercase"><xsl:value-of select="//t:publicationStmt/t:availability/t:p" /></span>
                                </p>
                            </div>
                            <div class="col-md text-right" id="info-destra" style="padding: 10px">
                                <p class="text-center">Informazioni sulla serie&#58;</p>
                                <p><xsl:value-of select="//t:seriesStmt/t:title"/></p>
                                <p><xsl:value-of select="//t:seriesStmt/t:respStmt"/></p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>

<!-- java -cp .\SaxonHE10-3J\* net.sf.saxon.Transform -s:C:\Users\lnoto\Desktop\CodificaArtomLN\codifica.xml -xsl:C:\Users\lnoto\Desktop\CodificaArtomLN\codifica.xsl -o:C:\Users\lnoto\Desktop\CodificaArtomLN\codifica.html -->