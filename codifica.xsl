<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text-css" href="style.css"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:t="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema">
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
            <body style="padding-top:70px">
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
                                    <a class="nav-link" href="#glossario">Glossario</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#about">About</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </header>

            <!-- Introduzione -->
                <div class="container" style="padding: 5rem 0 0 0">
                    <div class="text-center">
                        <h2 class="text-uppercase"><xsl:value-of select="//t:titleStmt//t:title" /></h2>
                        <h3>Manoscritto di 
                            <a href="https://it.wikipedia.org/wiki/Emanuele_Artom" class="text-decoration-none" target="_blank" style="color: black;">
                                <xsl:value-of select="//t:titleStmt//t:persName[@xml:id='EA']" />
                                <i style="font-size:24px" class="fa">&#xf08e;</i>
                            </a>
                        </h3>
                        <p>
                            <xsl:value-of select="//t:titleStmt//t:resp" />&#32; <xsl:value-of select="//t:titleStmt//t:persName[@xml:id='LN']" />
                        </p>
                    </div>
                </div>

            <!-- Pagine -->
                <div class="container" style="padding: 3rem 0">
                    <div style="padding-left: 10%">
                        <p>Tramite i pulsanti presenti sopra ogni pagina, potranno essere visualizzati i vari elementi come mostrato nella leggenda.<br/>
                        Passando il puntatore sopra i dettagli delle immagini, si potrà: <br/>
                         - visualizzare a quale categoria fa parte, scritta nel formato <i>#pg**_type*</i><br />
                         - visualizzare le iniziali di persona, associazione o codice catastale
                        </p>
                        <ul>
                            <li>Deleted <b>(#pg**_d*)</b>: mostra gli elementi cancellati e non visibili nel testo. Esempio: <span style="filter: blur(2.5px)">Lui</span> - <span class="text-decoration-line-through" style="color: red">Lui</span></li>
                            <li>Added <b>(#pg**_a*)</b>: mostra gli elementi aggiunti all'interno del testo. Esempio: <span style="filter: blur(2.5px)">più scettici</span> - <span style="color: red">più scettici</span></li>
                            <li>Highlighted <b>(#pg**_hi*)</b>: rende in grassetto laddove lo è nel testo. Esempio: Non - <span style="font-weight: bolder">Non</span></li>
                            <li>Unclear <b>(#pg**_u*)</b>: applicherà un effetto sbiadito agli elementi non leggibili perché sbiaditi o sovrascritti. Esempio: Sappiamo - <span style="filter: blur(1.5px)">Sappi</span>amo</li>
                            <li>Abbreviation <b>(#pg**_c*)</b>: sostituirà il termine scritto per esteso con l'abbreviazione nel testo. Esempio: Partito d'Azione - <span style="color:red">P.d'A.</span></li>
                            <li>Correction <b>(#pg**_c*)</b>: sostituirà il termine scritto correttamente con la forma originale. Esempio: Murello- <span style="color:red">Morello</span></li>
                            <li>Substitution <b>(#pg**_sub*)</b>: sostituirà il termine finale con ciò che era scritto inizialmente. Esempio: aggiunse - <span class="text-decoration-line-through" style="color: red">osservò</span></li>
                            <li>Gap <b>(#pg**_gap*)</b>: inserirà degli asterischi dove è presente un elemento totalmente illegibile. Esempio: <span style="font-style: italic">elemento non leggibile</span> - <span style="color: red">***</span></li>
                            <li>FloatingText <b>(#pg**_ft*)</b>: evidenzierà il testo aggiunto lateralmente. Esempio: Luigi osservò - <span style="color: green">Luigi osservò</span></li>
                        </ul>
                    </div>
                    <div id="page34">
                        <div class="col" style="padding: 3.5rem 0 2rem 0; margin-left: 20%">
                            <span style="margin-right: 5%">Pagina 34</span>
                            <button type="button" class="btn btn-outline-dark" id="pg34D">Deleted</button>
                            <button type="button" class="btn btn-outline-dark" id="pg34A">Added</button>
                            <button type="button" class="btn btn-outline-dark" id="pg34H">Highlighted</button>
                            <button type="button" class="btn btn-outline-dark" id="pg34U">Unclear</button>
                            <button type="button" class="btn btn-outline-dark" id="pg34AB">Abbreviation</button>
                        </div>
                        <div class="row">
                            <div class="col-sm image-container">
                                <xsl:apply-templates select="//t:surface[@xml:id='img34']" />
                            </div>
                            <div class="col-sm text font-monospace" style="height: 708px; overflow-y: scroll;">
                                <xsl:apply-templates select="//t:text[@xml:id='page_34']" />
                            </div>
                            <hr/>
                        </div>
                    </div>
                    <div id="page35">
                        <div class="col" style="padding: 3.5rem 0 2rem 0; margin-left: 20%">
                            <span style="margin-right: 5%">Pagina 35</span>
                            <button type="button" class="btn btn-outline-dark" id="pg35D">Deleted</button>
                            <button type="button" class="btn btn-outline-dark" id="pg35A">Added</button>
                            <button type="button" class="btn btn-outline-dark" id="pg35S">Substitution</button>
                            <button type="button" class="btn btn-outline-dark" id="pg35AB">Abbreviation</button>
                            <button type="button" class="btn btn-outline-dark" id="pg35U">Unclear</button>
                            <button type="button" class="btn btn-outline-dark" id="pg35FT">Floating Text</button>
                            <button type="button" class="btn btn-outline-dark" id="pg35G">Gap</button>
                        </div>
                        <div class="row">
                            <div class="col-sm image-container">
                                <xsl:apply-templates select="//t:surface[@xml:id='img35']" />
                            </div>
                            <div class="col-sm text font-monospace" style="height: 708px; overflow-y: scroll;">
                                <xsl:apply-templates select="//t:text[@xml:id='page_35']" />
                            </div>
                            <hr/>
                        </div>
                    </div>
                    <div id="page36">
                        <div class="col" style="padding: 3.5rem 0 2rem 0; margin-left: 20%">
                            <span style="margin-right: 5%">Pagina 36</span>
                            <button type="button" class="btn btn-outline-dark" id="pg36D">Deleted</button>
                            <button type="button" class="btn btn-outline-dark" id="pg36C">Correction</button>
                            <button type="button" class="btn btn-outline-dark" id="pg36U">Unclear</button>
                            <button type="button" class="btn btn-outline-dark" id="pg36AB">Abbreviation</button>
                        </div>
                        <div class="row">
                            <div class="col-sm image-container">
                                <xsl:apply-templates select="//t:surface[@xml:id='img36']" />
                            </div>
                            <div class="col-sm text font-monospace" style="height: 708px; overflow-y: scroll;">
                                <xsl:apply-templates select="//t:text[@xml:id='page_36']" />
                            </div>
                            <hr/>
                        </div>
                    </div>
                </div>

            <!-- Glossario -->
                <div id="glossario" class="container" style="padding-top: 30px">
                <br/>
                Glossario: 
                <br/>
                    <div class="row">
                        <div class="col-md" style="margin-bottom: 3em">
                            Nomi delle persone citate nel testo:
                            <xsl:apply-templates select="//t:notesStmt//t:listPerson" />
                        </div>
                        <div class="col-md">
                            Nomi delle organizzazioni citate nel testo:
                            <xsl:apply-templates select="//t:notesStmt//t:listOrg" />
                        </div>
                        <div class="col-md">
                            Nomi dei luoghi citati nel testo:
                            <xsl:apply-templates select="//t:notesStmt//t:listPlace" />
                        </div>
                    </div>
                </div>

            <!-- Fonti -->
                <div id="fonti" class="container">
                    <div class="row">
                        <p>Per lo sviluppo della seguente codifica sono state utilizzate le seguenti fonti:</p>
                        <ul>
                            <li><a href="http://digital-library.cdec.it/cdec-web/storico/detail/IT-CDEC-ST0003-000006/diari.html" target="_blank" class="text-decoration-none" style="color: black;">Diari <i style="font-size:12px" class="fa">&#xf08e;</i></a> di Emanuele Artom (1943-1944) prelevati dal sito del <a href="http://digital-library.cdec.it/cdec-web/" title="Centro di Documentazione Ebraica Contemporanea" target="_blank" class="text-decoration-none" style="color: black;">CDEC <i style="font-size:12px" class="fa">&#xf08e;</i></a></li>
                            <li><a href="https://www.omeka.unito.it/omeka/files/original/d0264d2e5dc3b5a9fd66fa6ace6b36c8.pdf" target="_blank" class="text-decoration-none" style="color: black;">Trascrizione dei diari <i style="font-size:12px" class="fa">&#xf08e;</i></a> a cura di P. De Benedetti e E. Ravenna (CDEC, Milano, 1966)</li>
                        </ul>
                    </div>
                </div>

            <!-- About -->
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
                                    <p><xsl:value-of select="//t:titleStmt//t:persName[@xml:id='LN']" /> (numero di matricola 567026)</p>
                                    <p>Contatti personali: <br/>
                                       l.noto1@studenti.unipi.it <br/>
                                       luigi.noto1995@gmail.com    
                                    </p>
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
                                    <p>Anno accademico 2022/2023</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
    <!-- Templates -->
        <!-- Template per divisione delle righe come nel manoscritto -->
            <xsl:template match="t:lb">
                <br />
            </xsl:template>

        <!-- Template per delete -->
            <xsl:template match="t:del">
                <xsl:for-each select="current()">
                    <xsl:element name="span">
                        <xsl:attribute name="class">deleted text-decoration-line-through</xsl:attribute>
                        <xsl:attribute name="id"><xsl:value-of select="@xml:id" /></xsl:attribute>
                        <xsl:attribute name="style">display: none; color: red</xsl:attribute>
                        <xsl:value-of select="current()" />
                    </xsl:element>
                </xsl:for-each>
            </xsl:template>

        <!-- Template per highlighted -->
            <xsl:template match="t:hi">
                <xsl:element name="span">
                    <xsl:attribute name="id"><xsl:value-of select="[@xml:id]" /></xsl:attribute>
                    <xsl:attribute name="class">zone</xsl:attribute>
                    <xsl:attribute name="style"></xsl:attribute>
                    <xsl:value-of select="current()"/>
                </xsl:element>
            </xsl:template>

        <!-- Template per unclear -->
            <xsl:template match="t:unclear">
                <xsl:for-each select="current()">
                    <xsl:element name="span">
                        <xsl:attribute name="class">unclear zone</xsl:attribute>
                        <xsl:attribute name="id"><xsl:value-of select="[@xml:id]"/></xsl:attribute>
                        <xsl:attribute name="style"></xsl:attribute>
                        <xsl:value-of select="current()" />
                    </xsl:element>
                </xsl:for-each>
            </xsl:template>

        <!-- Template per add extra-->
            <xsl:template match="t:add">
                <xsl:choose>
                    <xsl:when test="@place='above'">
                        <xsl:element name="span">
                            <xsl:attribute name="class">add above zone</xsl:attribute>
                            <xsl:attribute name="style">display: none; color: red</xsl:attribute>
                            <xsl:attribute name="id"><xsl:value-of select="@xml:id" /></xsl:attribute>
                            <xsl:value-of select="current()" />
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@place='between'">
                        <xsl:element name="span">
                            <xsl:attribute name="class">add between zone</xsl:attribute>
                            <xsl:attribute name="style">display: inline-block</xsl:attribute>
                            <xsl:attribute name="id"><xsl:value-of select="@xml:id" /></xsl:attribute>
                            <xsl:value-of select="current()" />
                        </xsl:element>
                    </xsl:when>
                </xsl:choose>
            </xsl:template>

        <!-- Template per le sostituzioni -->
            <xsl:template match="//t:subst">
                <xsl:for-each select="current()">    
                    <xsl:if test="t:del">
                        <xsl:element name="span">
                            <xsl:attribute name="class">substA zone</xsl:attribute>
                            <xsl:attribute name="style">display: inline-block</xsl:attribute>
                            <xsl:attribute name="id"><xsl:value-of select="@xml:id" /></xsl:attribute>
                            <xsl:value-of select="t:add" />
                        </xsl:element>
                        <xsl:element name="span">
                            <xsl:attribute name="class">substD text-decoration-line-through</xsl:attribute>
                            <xsl:attribute name="style">display: none; color: red</xsl:attribute>
                            <xsl:value-of select="t:del" />
                        </xsl:element>
                    </xsl:if>
                </xsl:for-each>
            </xsl:template>
        
        <!-- Template per il choice -->
            <xsl:template match="//t:choice">
                <xsl:for-each select="current()">
                    <xsl:if test="t:abbr">
                        <xsl:element name="span">
                            <xsl:attribute name="class">expansion zone</xsl:attribute>
                            <xsl:attribute name="style">display: inline-block</xsl:attribute>
                            <xsl:attribute name="id"><xsl:value-of select="current()[@xml:id]" /></xsl:attribute>
                            <xsl:value-of select="t:expan" />
                        </xsl:element>
                        <xsl:element name="span">
                            <xsl:attribute name="class">abbreviaton</xsl:attribute>
                            <xsl:attribute name="style">display: none; color: red</xsl:attribute>
                            <xsl:value-of select="t:abbr" />
                        </xsl:element>
                    </xsl:if>
                    <xsl:if test="t:sic">
                        <xsl:element name="span">
                            <xsl:attribute name="class">correction zone</xsl:attribute>
                            <xsl:attribute name="style">display: inline-block</xsl:attribute>
                            <xsl:attribute name="id"><xsl:value-of select="[@xml:id]" /></xsl:attribute>
                            <xsl:value-of select="t:corr" />
                        </xsl:element>
                        <xsl:element name="span">
                            <xsl:attribute name="class">thus</xsl:attribute>
                            <xsl:attribute name="style">display: none; color: red</xsl:attribute>
                            <xsl:value-of select="t:sic" />
                        </xsl:element>
                    </xsl:if>
                </xsl:for-each>
            </xsl:template>

        <!-- Template per persone -->
            <xsl:template match="//t:notesStmt//t:person">
                <xsl:for-each select="current()">
                    <xsl:element name="ul">
                        <xsl:attribute name="id"><xsl:value-of select="[@xml:id]" /></xsl:attribute>
                        <xsl:choose>
                            <xsl:when test="current()//t:addName">
                                <li><xsl:value-of select="substring-before(current()//t:persName,current()//t:addName)" />
                                (<xsl:value-of select="current()//t:addName"/>)</li>
                            </xsl:when>
                            <xsl:otherwise>
                                <li><xsl:value-of select="current()//t:persName" /></li>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:element>
                </xsl:for-each>
            </xsl:template>

        <!-- Template per luoghi -->
            <xsl:template match="//t:notesStmt//t:place">
                <xsl:for-each select="current()">
                    <xsl:element name="ul">
                        <xsl:attribute name="id"><xsl:value-of select="[@xml:id]" /></xsl:attribute>
                        <li>
                            <xsl:element name="a">
                                <xsl:attribute name="href"><xsl:value-of select="current()//t:settlement/@ref" /></xsl:attribute>
                                <xsl:attribute name="class">text-decoration-none</xsl:attribute>
                                <xsl:attribute name="target">_blank</xsl:attribute>
                                <xsl:attribute name="style">color: black</xsl:attribute>
                                <xsl:value-of select="current()//t:settlement" />
                                (<xsl:value-of select="current()//t:region" />)
                                <i style="font-size:12px" class="fa">&#xf08e;</i>
                            </xsl:element>
                        </li>
                    </xsl:element>
                </xsl:for-each>
            </xsl:template>

        <!-- Template per organizzazioni -->
            <xsl:template match="//t:notesStmt//t:org">
                <xsl:for-each select="current()">
                    <xsl:element name="ul">
                        <xsl:attribute name="id"><xsl:value-of select="[@xml:id]" /></xsl:attribute>
                        <li>
                            <xsl:element name="a">
                                <xsl:attribute name="href"><xsl:value-of select="current()//t:orgName/@ref" /></xsl:attribute>
                                <xsl:attribute name="class">text-decoration-none</xsl:attribute>
                                <xsl:attribute name="target">_blank</xsl:attribute>
                                <xsl:attribute name="style">color: black</xsl:attribute>
                                <xsl:value-of select="substring-before(current()//t:orgName,current()//t:abbr)" />
                                (<xsl:value-of select="current()//t:abbr" />)
                                <i style="font-size:12px" class="fa">&#xf08e;</i>
                            </xsl:element>
                        </li>
                    </xsl:element>
                </xsl:for-each>
            </xsl:template>

        <!-- Template gap -->
            <xsl:template match="t:gap">
                <xsl:for-each select="current()">
                    <xsl:element name="span">
                        <xsl:attribute name="class">gap zone</xsl:attribute>
                        <xsl:attribute name="id"><xsl:value-of select="@xml:id" /></xsl:attribute>
                        <xsl:attribute name="style">display: none; color: red</xsl:attribute>
                        ***
                    </xsl:element>
                </xsl:for-each>
            </xsl:template>

        <!-- Template Floating Text -->
            <xsl:template match="t:floatingText">
                <xsl:element name="span">
                    <xsl:attribute name="id"><xsl:value-of select="@xml:id" /></xsl:attribute>
                    <xsl:attribute name="class">zone</xsl:attribute>
                    <xsl:attribute name="style"></xsl:attribute>
                    <xsl:apply-templates />
                </xsl:element>
            </xsl:template>

        <!-- Template immagini -->
            <xsl:template match="t:surface">
                <xsl:element name="img">
                    <xsl:attribute name="src"><xsl:value-of select="current()[@xml:id]//t:graphic/@url"/></xsl:attribute>
                    <xsl:attribute name="usemap">#<xsl:value-of select="current()/@xml:id" /></xsl:attribute>
                </xsl:element>
                <xsl:element name="map">
                    <xsl:attribute name="id"><xsl:value-of select="current()/@xml:id" /></xsl:attribute>
                    <xsl:apply-templates select="./t:zone" />
                </xsl:element>
            </xsl:template>

        <!-- Template zone immagini -->
            <xsl:template match="t:zone">
                <xsl:for-each select="current()">
                    <xsl:element name="area">
                        <xsl:attribute name="coords"><xsl:value-of select="current()/@ulx" />,<xsl:value-of select="current()/@uly" />,<xsl:value-of select="current()/@lrx" />,<xsl:value-of select="current()/@lry" /></xsl:attribute>
                        <xsl:attribute name="style">cursor: help</xsl:attribute>
                        <xsl:attribute name="title"><xsl:value-of select="current()/@corresp" /></xsl:attribute>
                        <xsl:attribute name="shape">rect</xsl:attribute>
                    </xsl:element>
                </xsl:for-each>
            </xsl:template>



</xsl:stylesheet>