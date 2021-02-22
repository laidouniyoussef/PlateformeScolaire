<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  
  
  <xsl:template match="/">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
      <fo:layout-master-set>
        <fo:simple-page-master master-name="simple" 
          page-height="6cm" page-width="9.5cm" 
          margin-left="0.3cm" margin-right="0.5cm">
          <fo:region-body/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      
      <fo:page-sequence master-reference="simple">
        <fo:flow flow-name="xsl-region-body">
          <fo:table >
            <fo:table-body border-bottom="1pt">     
            <fo:table-row>
              <fo:table-cell  border="0pt"  background-color="white">
                <fo:block text-align="center" font-weight="bold"><fo:external-graphic src="Ensat.png"  content-height="0.5in"  content-width="0.5in" scaling="non-uniform"/></fo:block>
              </fo:table-cell>
              <fo:table-cell  number-columns-spanned="2" padding="10pt" border="0pt" background-color="white">
                <fo:block font-size="4.5pt"
                  line-height = "-2"
                  color="#003366"
                  font-family="sans-serif"
                  text-align="center"
                  position="absolute"
                  margin-bottom="0.5cm"
                  margin-top="0.4cm"> Université Abdelmalek Essaâdi </fo:block>
                 <fo:block font-size="4.5pt"
                  font-family="sans-serif"
                  line-height = "-2"
                  color="#003366"
                  text-align="center"
                  position="absolute"
                  margin-bottom="0.5cm"> École Nationale des Sciences Appliquées </fo:block>
                <fo:block font-size="4.5pt"
                  font-family="sans-serif"
                  line-height = "-2"
                  color="#003366"
                  text-align="center"
                  margin-bottom="0.5cm"> Tanger </fo:block>
              </fo:table-cell>
              
              
              <fo:table-cell padding="3pt" border="0pt" background-color="white">
                <fo:block text-align="center" font-weight="bold"><fo:external-graphic src="uni.png"  content-height="0.4in"  content-width="0.4in" scaling="non-uniform"/></fo:block>
              </fo:table-cell>
            </fo:table-row>
              
              <fo:table-row>
                <fo:table-cell number-columns-spanned="4" padding="3pt" background-color="white">
                  <fo:block font-size="7.5pt" letter-spacing="2.5pt" text-align="center" border-top-style="solid"   line-height="15pt" border-color="#cc3300" color="#003366" width="50pt" >CARTE D'ÉTUDIANT</fo:block>
                </fo:table-cell>
                
              </fo:table-row>
              
              <fo:table-row>
                <fo:table-cell  border="0pt"  background-color="white">
                  <fo:block text-align="center" font-weight="bold"><fo:external-graphic src="Profile.jpg"  content-height="1in"  content-width="1in" scaling="non-uniform"/></fo:block>
                </fo:table-cell>
                <fo:table-cell number-columns-spanned="2"  border="0pt"  background-color="white"  >
                  <fo:block text-align="left" font-size="10pt" color="#003366" font-family="italic" margin-top="0.6cm" margin-left="0.3cm" > <xsl:value-of select="/Students/Student[CNE = 15091]/LastName"/> </fo:block>
                  <fo:block text-align="left" font-size="10pt" color="#003366" font-family="italic" margin-left="0.3cm"> <xsl:value-of select="/Students/Student[CNE = 15091]/FirstName"/> </fo:block>
                  <fo:block text-align="left" font-size="10pt" color="#003366" font-family="italic" margin-left="0.3cm"> <xsl:value-of select="/Students/Student[CNE = 15091]/CNE"/> </fo:block>
                </fo:table-cell>
                <fo:table-cell  border="0pt"  background-color="white">
                  <fo:block text-align="right" font-weight="bold" margin-top="0.2cm" ><fo:external-graphic src="QR.png"  content-height="0.7in"  content-width="0.7in" scaling="non-uniform"/></fo:block>
                </fo:table-cell>
              </fo:table-row>
              
                <fo:table-row>
                  <fo:table-cell number-columns-spanned="4" padding="3pt" background-color="white">
                    <fo:block font-size="7.5pt" text-align="center"  color="#003366"  >Année Scolaire : 2020/2021 </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                
            
          </fo:table-body>
          </fo:table>
          
          
         <!-- <fo:block font-size="7.5pt"
            line-height = "0"
            font-family="sans-serif"
            text-align="center"
            position="absolute"
            margin-bottom="0.5cm"> Université Abdelmalek Essaâdi </fo:block>
          <fo:block font-size="7.5pt"
            font-family="sans-serif"
            line-height = "0"
            text-align="center"
            position="absolute"
            margin-bottom="0.5cm"> École Nationale des Sciences Appliquées </fo:block>
          <fo:block font-size="7.5pt"
            font-family="sans-serif"
            line-height = "0"
            text-align="center"
            absolute-position="absolute"
            margin-bottom="0.5cm"> Tanger </fo:block>
          
          <fo:block font-size="7.5pt"
            font-family="sans-serif"
            line-height = "0"
            text-align="center"
            position="absolute"
            margin-bottom="0.5cm"> <fo:external-graphic src="Ensat.png"  content-height="scale-to-fit" height="2.00in"  content-width="2.00in" scaling="non-uniform"/> </fo:block>
          
          
          <fo:block font-size="7.5pt"
            font-family="sans-serif"
            line-height = "0"
            text-align="left"
            position="absolute"
            margin-bottom="0.5cm"> <fo:external-graphic src="uni.png"  content-height="scale-to-fit" height="2.00in"  content-width="2.00in" scaling="non-uniform"/> </fo:block>
          
          
          
             <fo:table border="1pt solid black" text-align="center" border-spacing="10pt" table-layout="fixed">
              <fo:table-column column-width="70px"/>
              <fo:table-column column-width="120px" />
              <fo:table-column column-width="120px" />
              <fo:table-column column-width="180px" />
              <fo:table-column column-width="180px" />
              <fo:table-column column-width="180px" />
              <fo:table-column column-width="180px" />
              <fo:table-column column-width="120px" />
              
              HEADER 
              <fo:table-header>        
                <fo:table-row>
                  <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1">
                    <fo:block text-align="center" font-weight="bold">CNE</fo:block>
                  </fo:table-cell>
                  <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1">
                    <fo:block text-align="center" font-weight="bold">FirstName</fo:block>
                  </fo:table-cell>
                  <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1">
                    <fo:block text-align="center" font-weight="bold">LastName</fo:block>
                  </fo:table-cell>
                  <xsl:for-each select="//Note[1]/Module">
                    <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1">
                      <fo:block text-align="center" font-weight="bold"><xsl:value-of select="@name" /></fo:block>
                    </fo:table-cell>
                  </xsl:for-each>
                  <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1">
                    <fo:block text-align="center" font-weight="bold">MOYENNE</fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-header>-->
              
              <!-- BODY 
              <fo:table-body>
                1er ligne
                <xsl:for-each select="//Note">
                  <fo:table-row>
                    <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1">
                      <fo:block text-align="center"><xsl:value-of select="./CNE" /></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1">
                      <fo:block text-align="center"><xsl:value-of select="./FirstName" /></fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1">
                      <fo:block text-align="center"><xsl:value-of select="./LastName" /></fo:block>
                    </fo:table-cell>
                    <xsl:for-each select="./Module">
                      <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1">
                        <fo:block text-align="center"><xsl:value-of select="@note" /></fo:block>
                      </fo:table-cell>
                    </xsl:for-each>
                    
                    <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1">
                      <fo:block text-align="center" font-weight="bold"><xsl:value-of select="./Moyenne" /></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </xsl:for-each>
                
                <fo:table-row>
                  <fo:table-cell padding="10pt" border="1pt solid black" number-columns-spanned="3" background-color="#e6e4e1">
                    <fo:block text-align="center" font-weight="bold">MOYENNE PAR MODULE</fo:block>
                  </fo:table-cell>
                  <fo:table-cell padding="10pt" border="1pt solid black">
                    <fo:block text-align="center" font-weight="bold">14</fo:block>
                  </fo:table-cell>
                  <fo:table-cell padding="10pt" border="1pt solid black">
                    <fo:block text-align="center" font-weight="bold">13.33</fo:block>
                  </fo:table-cell>
                  <fo:table-cell padding="10pt" border="1pt solid black">
                    <fo:block text-align="center" font-weight="bold">13</fo:block>
                  </fo:table-cell>
                  <fo:table-cell padding="10pt" border="1pt solid black">
                    <fo:block text-align="center" font-weight="bold">14.83</fo:block>
                  </fo:table-cell>
                </fo:table-row>
                
              </fo:table-body></fo:table>-->
            
          
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
  
  
</xsl:stylesheet>