<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
        <head>
            <title>Customer Details</title>
            <style>
                body { 
                    font-family: "Liberation Serif", Times, serif; 
                    background-color: white; 
                    color: black;
                }
                h1 { 
                    text-align: center; 
                    color: black; 
                }
                table { 
                    border-collapse: collapse; 
                    width: 100%; 
                    margin-top: 20px; 
                }
                th, td { 
                    border: 1px solid black; 
                    padding: 8px; 
                    text-align: left; 
                }
                th { 
                    background-color: white; /* Ajustado a blanco puro */
                    color: black;            /* Letras negras */
                    font-weight: bold;       /* Títulos en negrita */
                }
                td {
                    background-color: white;
                    color: black; 
                }
            </style>
        </head>
        <body>
            <h1>Customer Details</h1>
            <table>
                <tr>
                    <th>Customer Number</th>
                    <th>Customer Name</th>
                    <th>Phone</th>
                    <th>Contact First Name</th>
                    <th>Contact Last Name</th>
                    <th>Address Line 1</th>
                    <th>Address Line 2</th>
                    <th>City</th>
                    <th>State</th>
                    <th>Postal Code</th>
                    <th>Country</th>
                    <th>Sales Rep Employee Number</th>
                    <th>Credit Limit</th>
                </tr>
                <xsl:for-each select="customers/customer">
                    <tr>
                        <td><xsl:value-of select="@customerNumber"/></td>
                        <td><xsl:value-of select="customerName"/></td>
                        <td><xsl:value-of select="phone"/></td>
                        <td><xsl:value-of select="contactFirstName"/></td>
                        <td><xsl:value-of select="contactLastName"/></td>
                        <td><xsl:value-of select="addressLine1"/></td>
                        <td><xsl:value-of select="addressLine2"/></td>
                        <td><xsl:value-of select="city"/></td>
                        <td><xsl:value-of select="state"/></td>
                        <td><xsl:value-of select="postalCode"/></td>
                        <td><xsl:value-of select="country"/></td>
                        <td><xsl:value-of select="salesRepEmployeeNumber"/></td>
                        <td><xsl:value-of select="creditLimit"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>