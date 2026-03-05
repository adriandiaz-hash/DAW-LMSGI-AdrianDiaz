<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
        <head>
            <title>Llista d'empleats</title>
            <style>
                body { 
                    font-family: "Liberation Serif", Times, serif; 
                    background-color: white;
                    color: black;
                }
                /* Configuración de viñetas según el nivel de anidación */
                ul.nivell-1 { list-style-type: disc; }
                ul.nivell-2 { list-style-type: circle; }
                ul.nivell-3 { 
                    list-style-type: square; 
                    color: red; 
                    font-style: italic; 
                }
                h3 {
                    color: blue;
                    display: inline; /* Mantiene la viñeta alineada en la misma línea que el título */
                    font-size: 20px;
                }
                .nom {
                    font-size: 18px; /* Mida específica de 18 píxeles exigida */
                }
            </style>
        </head>
        <body>
            <h2>Llista d'empleats</h2>
            
            <ul class="nivell-1">
                <xsl:for-each select="employees/employee">
                    <xsl:sort select="firstName" data-type="text" order="ascending"/>
                    
                    <li style="margin-bottom: 20px;">
                        <h3>Empleat amb id <xsl:value-of select="employeeNumber"/></h3>
                        
                        <ul class="nivell-2">
                            <li class="nom"><b>Nom:</b><xsl:value-of select="firstName"/><xsl:value-of select="lastName"/></li>
                            <li><b>Correu:</b><xsl:value-of select="email"/></li>
                            <li><b>Id del seu superior:</b><xsl:value-of select="reportsTo"/></li>
                            <li><b>Posició:</b><xsl:value-of select="jobTitle"/></li>
                            <li><b>Oficina amb codi:</b><xsl:value-of select="ofCode"/>
                                <ul class="nivell-3">
                                    <li><b>Telèfon:</b><xsl:value-of select="ofPhone"/></li>
                                    <li><b>Adreça:</b><xsl:value-of select="ofAdd1"/>, <xsl:value-of select="ofAdd2"/></li>
                                    <li><b>Estat:</b><xsl:value-of select="ofState"/></li>
                                    <li><b>País:</b><xsl:value-of select="ofCountry"/></li>
                                    <li><b>Codi Postal:</b><xsl:value-of select="ofPostalCode"/></li>
                                    <li><b>Territori:</b><xsl:value-of select="ofTerritory"/></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </xsl:for-each>
            </ul>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>