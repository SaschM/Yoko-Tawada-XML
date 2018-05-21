<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
<!-- VERSION FOR ORIGINAL GERMAN TEXT -->
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="//bookTitle"/>
                    by <xsl:value-of select="//author"/>
                </title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="//textTitle"/>
                </h1>
                <h3>
                    From Book:
                    <xsl:value-of select="//bookTitle"/>
                    Written by:
                    <xsl:value-of select="//author"/>
                
                    English translation
                    <xsl:value-of select="//textEquivalent"/>
                        by
                        <xsl:value-of select="//textEquivalent/@equivWriter"/>
                </h3>
                <img src="yoko-tawada.jpg"/>
                <div class="mainText">
                <xsl:for-each select="//p">
                    <p>
                        <xsl:value-of select="."/>
                    </p>
                </xsl:for-each>
                </div>
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>