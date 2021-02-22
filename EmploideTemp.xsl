<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    
    
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simple" 
                    page-height="25cm" page-width="35cm" 
                    margin-left="0.3cm" margin-right="0.5cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            
            <fo:page-sequence master-reference="simple">
                <fo:flow flow-name="xsl-region-body">
                    <fo:table border="1pt">
                        <fo:table-body >     
                            <fo:table-row  border="5pt">
                                <!-- <fo:table-cell  border="0pt"  background-color="white">
                                    <fo:block text-align="center" font-weight="bold"><xsl:value-of select="/Modules/Module[ModuleSym = 'GINF21']/ModuleName"/></fo:block>
                                </fo:table-cell>-->
                                
                                <fo:table-cell padding="10pt" background-color="grey">
                                    <fo:block text-align="center" font-weight="bold"></fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="10pt" background-color="grey">
                                    <fo:block text-align="center" font-weight="bold">LUNDI</fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="10pt" background-color="grey">
                                    <fo:block text-align="center" font-weight="bold">MARDI</fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="10pt"  background-color="grey">
                                    <fo:block text-align="center" font-weight="bold">MERCREDI</fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="10pt" background-color="grey">
                                    <fo:block text-align="center" font-weight="bold">JEUDI</fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="10pt"  background-color="grey">
                                    <fo:block text-align="center" font-weight="bold">VENDREDI</fo:block>
                                </fo:table-cell>
                               </fo:table-row>
                            
                            
                            <fo:table-row  border="5pt">
                                <fo:table-cell padding="10pt" background-color="grey">
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">9:00</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">9:30</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">10:00</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">10:30</fo:block>
                                   <!-- <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">11:00</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">11:30</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">12:00</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">12:30</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">13:00</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">13:30</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">14:00</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">14:30</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">15:00</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">15:30</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">16:00</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">16:30</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">17:00</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">17:30</fo:block>
                                    <fo:block margin-bottom="5pt" text-align="center" font-weight="italic">18:00</fo:block> --> 
                                </fo:table-cell>
                                <fo:table-cell padding="10pt" >
                                    <fo:block border="1pt">
                                        <fo:block text-align="center" padding="1pt" background-color="violet">
                                            CM - 9:00 - 10:30
                                        </fo:block>
                                        <fo:block text-align="left" font-size="10pt" >
                                            <xsl:value-of select="/Modules/Module[ElementModule1Sym = 'GINF21A']/ElementModule1"/>
                                        </fo:block>
                                        <fo:block text-align="center" font-size="10pt" >
                                            <xsl:value-of select="/Modules/Module[ElementModule1Sym = 'GINF21A']/ElementModule1"/>
                                        </fo:block>
                                        <fo:block text-align="center" font-size="10pt" >
                                            SALLE B22
                                        </fo:block>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="10pt">
                                    <fo:block border="1pt">
                                        <fo:block text-align="center" background-color="violet">
                                            CM 9:00-10:30
                                        </fo:block>
                                        <fo:block text-align="center" >
                                            <xsl:value-of select="/Modules/Module[ModuleSym = 'GINF21']/ModuleName"/>
                                        </fo:block>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="10pt" >
                                    <fo:block border="1pt">
                                        <fo:block text-align="center" background-color="violet">
                                            CM 9:00-10:30
                                        </fo:block>
                                        <fo:block text-align="center" >
                                            <xsl:value-of select="/Modules/Module[ModuleSym = 'GINF21']/ModuleName"/>
                                        </fo:block>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding="10pt" >
                                    <fo:block border="1pt">
                                        <fo:block text-align="center" background-color="violet">
                                            CM 9:00-10:30
                                        </fo:block>
                                        <fo:block text-align="center" >
                                            <xsl:value-of select="/Modules/Module[ModuleSym = 'GINF21']/ModuleName"/>
                                        </fo:block>
                                    </fo:block>    
                                </fo:table-cell>
                                <fo:table-cell padding="10pt" >
                                    <fo:block border="1pt">
                                        <fo:block text-align="center" background-color="violet">
                                            CM 9:00-10:30
                                        </fo:block>
                                        <fo:block text-align="center" >
                                            <xsl:value-of select="/Modules/Module[ModuleSym = 'GINF21']/ModuleName"/>
                                        </fo:block>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
</xsl:stylesheet>