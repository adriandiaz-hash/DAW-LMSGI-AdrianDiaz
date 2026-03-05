<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/DATA">
        <payments>
            <xsl:for-each select="ROW">
                <payment>
                    <check number="{checkNumber}">
                        <customer customerNumber="{customerNumber}">
                            <customerName><xsl:value-of select="customerName"/></customerName>
                            <contactLastName><xsl:value-of select="contactLastName"/></contactLastName>
                            <contactFirstName><xsl:value-of select="contactFirstName"/></contactFirstName>
                            <phone><xsl:value-of select="phone"/></phone>
                            <addressLine1><xsl:value-of select="addressLine1"/></addressLine1>
                            <city><xsl:value-of select="city"/></city>
                            <country><xsl:value-of select="country"/></country>
                            <salesRepEmployeeNumber><xsl:value-of select="salesRepEmployeeNumber"/></salesRepEmployeeNumber>
                            <creditLimit><xsl:value-of select="creditLimit"/></creditLimit>
                        </customer>
                        <paymentDate><xsl:value-of select="paymentDate"/></paymentDate>
                        <amount><xsl:value-of select="amount"/></amount>
                    </check>
                </payment>
            </xsl:for-each>
        </payments>
    </xsl:template>
</xsl:stylesheet>