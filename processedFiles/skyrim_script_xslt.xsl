<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="text"/>
  
    <xsl:template match="root">
      
        <xsl:apply-templates select="//dia[@speaker = 'Alduin' or @speaker = 'Paarthurnax' or @speaker = 'Odahviing' or @speaker = 'Mirmulnir' or @speaker = 'Greybeards' or @speaker = 'Miraak' or @speaker = 'Sahrotaar' or @speaker = 'Sahloknir' or @speaker = 'Durnehviir']"/>
       
    </xsl:template>
    
    <xsl:template match="dia">
        
        <xsl:apply-templates /><xsl:text>
            
            
        </xsl:text>
    </xsl:template>
    
 <!--   
    <xsl:template match="dia[@speaker='Alduin']">
        <dia speaker="Alduin">
            <xsl:apply-templates/>
            </dia>
    </xsl:template>
    <xsl:template match="dia[@speaker='Paarthurnax']">
        <dia speaker="Paarthurnax">
            <xsl:apply-templates/>
        </dia>
    </xsl:template>
    <xsl:template match="dia[@speaker='Odahviing']">
        <dia speaker="Odahviing">
            <xsl:apply-templates/>
        </dia>
    </xsl:template>
    <xsl:template match="dia[@speaker='Mirmulnir']">
        <dia speaker="Mirmulnir">
            <xsl:apply-templates/>
        </dia>
    </xsl:template>
    <xsl:template match="dia[@speaker='Greybeards']">
        <dia speaker="Greybeards">
            <xsl:apply-templates/>
        </dia>
    </xsl:template>
    <xsl:template match="dia[@speaker='Miraak']">
        <dia speaker="Miraak">
            <xsl:apply-templates/>
        </dia>
    </xsl:template>
    <xsl:template match="dia[@speaker='Sahrotaar']">
        <dia speaker="Sahrotaar">
            <xsl:apply-templates/>
        </dia>
    </xsl:template>
    <xsl:template match="dia[@speaker='Sahloknir']">
        <dia speaker="Sahloknir">
            <xsl:apply-templates/>
        </dia>
    </xsl:template>
    <xsl:template match="dia[@speaker='Durnehviir']">
        <dia speaker="Durnehviir">
            <xsl:apply-templates/>
        </dia>
    </xsl:template>
    -->
</xsl:stylesheet>