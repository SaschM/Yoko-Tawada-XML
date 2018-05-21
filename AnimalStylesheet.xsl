<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
        <!-- This stylesheet identifies all of the <animal> elements, presents them as text and counts the total-->
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
                    </h3>
                    <img src="yoko-tawada.jpg"/>
                    <div class="mainText">
                    <xsl:for-each select="//p">
                        <p>
                            <xsl:value-of select="."/>
                        </p>
                    </xsl:for-each>
                    </div>
               <br/>
                    <h3><b>A list of all the animals that appear in this text:</b></h3>
                    <xsl:for-each select="//animal">
                        <table>
                        <tr>
                            <td>Animal Name</td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="."/></td>
                        </tr>
                        </table>
                        <p id="AnimalCount">
                            Total Animals in Text
                            <xsl:value-of select="count(//animal)"/>
                        </p>
                    </xsl:for-each>
                    
                
                </body>
            </html>
            
        </xsl:template>
    </xsl:stylesheet>