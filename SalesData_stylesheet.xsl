<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:for-each select="class1/SalesPerson">
            <xsl:if test="Product='Laptop'">
                <xsl:choose>
                    <xsl:when test="Sales > 30000">
                        <span style="color:blue;">
                            Name:
                            <xsl:value-of select="Name"/>
                            Age:
                            <xsl:value-of select="Age"/>
                            Your Commission is $5000.
                        </span>
                    </xsl:when>

                    <xsl:when test="Sales > 20000">
                        <span style="color:red;">
                            Name:
                            <xsl:value-of select="Name"/>
                            Age:
                            <xsl:value-of select="Age"/>
                            Your Commission is $500.
                        </span>
                    </xsl:when>
                   <xsl:otherwise>
                       <span style="color:black;">
                           Name:
                           <xsl:value-of select="Name"/>
                           Age:
                           <xsl:value-of select="Age"/>
                           Your commission is $0.
                       </span>
                   </xsl:otherwise>

                </xsl:choose>
                <br/>
            </xsl:if>

        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>