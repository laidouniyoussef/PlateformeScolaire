<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
                <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format"> 
                <fo:layout-master-set>
                <fo:simple-page-master master-name="my-page">
                 <!--   <fo:region-body> 
                        <fo:region-before>
                        <fo:region-after> 
                        <fo:region-start>
                        <fo:region-end> -->
                <fo:region-body  />
                </fo:simple-page-master>
                </fo:layout-master-set>

                <fo:page-sequence master-name="my-page">
                  <fo:flow flow-name="xsl-region-body">
                    <fo:block style='position:absolute;left:50%;transform:translate(-50%,0%);font-size:74pt; font-family:sans-serif; font-weight:bold; color:green; space-before:6pt; space-after:6pt'>
                        
                        <xsl:value-of select="/Students/Student[CNE = 15099 ]/FirstName"/>
                        

                     </fo:block>
                  </fo:flow>
                </fo:page-sequence>
                
                <!-- <fo:page-sequence master-name="my-page">
                  <fo:flow flow-name="xsl-region-body">
                    <fo:block style='font-size:14pt; font-family:sans-serif; font-weight:bold; color:green; space-before:6pt; space-after:6pt'>
                        
                        <xsl:value-of select="/Students/Student[CNE = 15099 ]/LastName"/>
                        
                     </fo:block>
                  </fo:flow>
                </fo:page-sequence>

                <fo:page-sequence master-name="my-page">
                  <fo:flow flow-name="xsl-region-body">
                    <fo:block style='font-size:14pt; font-family:sans-serif; font-weight:bold; color:green; space-before:6pt; space-after:6pt'>
                        
                        <xsl:value-of select="/Students/Student[CNE = 15099 ]/CNE"/>
                        
                     </fo:block>
                  </fo:flow>
                </fo:page-sequence>

                <fo:page-sequence master-name="my-page">
                  <fo:flow flow-name="xsl-region-body">
                    <fo:block style='font-size:14pt; font-family:sans-serif; font-weight:bold; color:red; space-before:6pt; space-after:6pt'>
                        
                        <xsl:value-of select="/Students/Student[CNE = 15099 ]/DateofBirth"/>
                        
                     </fo:block>
                  </fo:flow>
                </fo:page-sequence>

                <fo:page-sequence master-name="my-page">
                  <fo:flow flow-name="xsl-region-body">
                    <fo:block style='font-size:14pt; font-family:sans-serif; font-weight:bold; color:green; space-before:6pt; space-after:6pt'>
                        
                        <xsl:value-of select="/Students/Student[CNE = 15099 ]/Email"/>
                        
                     </fo:block>
                  </fo:flow>
                </fo:page-sequence>

                <fo:page-sequence master-name="my-page">
                  <fo:flow flow-name="xsl-region-body">
                    <fo:block style='font-size:14pt; font-family:sans-serif; font-weight:bold; color:green; space-before:6pt; space-after:6pt'>
                        
                        <xsl:value-of select="/Students/Student[CNE = 15099 ]/Phone"/>
                        
                     </fo:block>
                  </fo:flow>   -->  
                
            </fo:root>    
        

    
    
</body>
</html>
</xsl:template>
</xsl:stylesheet>