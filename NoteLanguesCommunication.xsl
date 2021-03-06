<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <div>
    <table>
        <tr bgcolor="grey">
            <th>CNE</th><th>DateOfBirth</th><th>FirstName</th><th>LastName</th><th>Espagnol2, allemand</th><th>Techniques de communication</th><th>Langues et Communication 2</th><th>Resultats</th>
            <!--<th>GINF221</th><th>GINF222</th><th>GINF231</th><th>GINF2312</th><th>GINF241</th><th>GINF242</th><th>GINF251</th><th>GINF252</th><th>GINF261</th><th>GINF262</th><th>GINF271</th><th>GINF272</th><th>GINF281</th><th>GINF282</th><th>GINF291</th><th>GINF292</th><th>GINF2101</th><th>GINF2102</th><th>GINF2111</th><th>GINF2112</th><th>GINF2121</th><th>GINF2122</th>-->
        </tr>
        <xsl:for-each select="Notes/Note">
        
        <tr>

          <td><xsl:value-of select="CNE"/></td>
          <td><xsl:value-of select="DateOfBirth"/></td>
          <td><xsl:value-of select="FirstName"/></td>
          <td><xsl:value-of select="LastName"/></td>
          <xsl:if test="(GINF261 +GINF262) div 2>=12">
            <td style="background-color:green"><xsl:value-of select="GINF261"/></td>
            <td style="background-color:green"><xsl:value-of select="GINF262"/></td>
</xsl:if>


          <xsl:if test="(GINF261 +GINF262) div 2&lt;12">
            <xsl:if test="GINF261>8 and  GINF261&lt;12">
            <td style="background-color:orange"><xsl:value-of select="GINF261"/></td>
</xsl:if> 
            <xsl:if test="GINF261>=12">
            <td style="background-color:green"><xsl:value-of select="GINF261"/></td>
</xsl:if> 
            <xsl:if test="GINF261&lt;=8">
            <td style="background-color:red"><xsl:value-of select="GINF261"/></td>
</xsl:if> 
            <xsl:if test="GINF262>8 and  GINF262&lt;12">
            <td style="background-color:orange"><xsl:value-of select="GINF262"/></td>
</xsl:if> 
            <xsl:if test="GINF262>=12">
            <td style="background-color:green"><xsl:value-of select="GINF262"/></td>
</xsl:if> 
            <xsl:if test="GINF262&lt;=8">
            <td style="background-color:red"><xsl:value-of select="GINF262"/></td>
</xsl:if> 

</xsl:if>
        <xsl:if test="(GINF261 +GINF262) div 2&lt;=8">
            <td style="background-color:red"><xsl:value-of select="(GINF261 +GINF262) div 2"/></td>
</xsl:if>
          <xsl:if test="(GINF261 +GINF262) div 2>=12">
            <td style="background-color:green"><xsl:value-of select="(GINF261 +GINF262) div 2"/></td>
</xsl:if>
          <xsl:if test="(GINF261 +GINF262) div 2>8 and (GINF261 +GINF262) div 2&lt;12">
            <td style="background-color:orange"><xsl:value-of select="(GINF261 +GINF262) div 2"/></td>
</xsl:if>  
<xsl:if test="(GINF261 +GINF262) div 2>=12">
  <td style="background-color:green">V</td>
</xsl:if>  
<xsl:if test="(GINF261 +GINF262) div 2&lt;12">
  <xsl:if test="GINF261&lt;12 and GINF262&lt;12">
    <td style="background-color:red">Ratt</td>
</xsl:if>
  <xsl:if test="GINF261&lt;12 and GINF262>=12">
    <td style="background-color:orange">Ratt(Modélisation)</td>
</xsl:if>
  <xsl:if test="GINF262&lt;12 and GINF261>=12">
    <td style="background-color:orange">Ratt(IHM)</td>
</xsl:if>
</xsl:if>  
        </tr>
        </xsl:for-each>
      </table>
  </div>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>