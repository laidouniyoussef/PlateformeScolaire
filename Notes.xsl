<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <table>
      <tr>
        <th>CNE</th>
        <th>Date Of Birth</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>GINF21A </th>
        <th>GINF21B </th>
        <th>GINF221 </th>
        <th>GINF222 </th>
        <th>GINF231 </th>
        <th>GINF2312 </th>
        <th>GINF241 </th>
        <th>GINF242 </th>
        <th>GINF251 </th>
        <th>GINF252 </th>
        <th>GINF261 </th>
        <th>GINF262 </th>
        <th>GINF271 </th>
        <th>GINF272 </th>
        <th>GINF281 </th>
        <th>GINF282 </th>
        <th>GINF291 </th>
        <th>GINF292 </th>
        <th>GINF2101 </th>
        <th>GINF2102 </th>
        <th>GINF2111 </th>
        <th>GINF2112 </th>
        <th>GINF2121 </th>
        <th>GINF2122 </th>

      </tr>
      <xsl:for-each select="Notes/Note">
      <tr>
        <td><xsl:value-of select="GINF21A"/></td>
        <td><xsl:value-of select="GINF21B"/></td>
        <td><xsl:value-of select="GINF221"/></td>
        <td><xsl:value-of select="GINF222"/></td>
        <td><xsl:value-of select="GINF231"/></td>
        <td><xsl:value-of select="GINF2312"/></td>
        <td><xsl:value-of select="GINF241"/></td>
        <td><xsl:value-of select="GINF242"/></td>
        <td><xsl:value-of select="GINF251"/></td>
        <td><xsl:value-of select="GINF252"/></td>
        <td><xsl:value-of select="GINF261"/></td>
        <td><xsl:value-of select="GINF262"/></td>
        <td><xsl:value-of select="GINF271"/></td>
        <td><xsl:value-of select="GINF272"/></td>
        <td><xsl:value-of select="GINF281"/></td>
        <td><xsl:value-of select="GINF282"/></td>
        <td><xsl:value-of select="GINF291"/></td>
        <td><xsl:value-of select="GINF292"/></td>
        <td><xsl:value-of select="GINF2101"/></td>
        <td><xsl:value-of select="GINF2102"/></td>
        <td><xsl:value-of select="GINF2111"/></td>
        <td><xsl:value-of select="GINF2112"/></td>
        <td><xsl:value-of select="GINF2121"/></td>
        <td><xsl:value-of select="GINF2122"/></td>
        <td><xsl:value-of select="CNE"/></td>
        <td><xsl:value-of select="DateOfBirth"/></td>
         <td><xsl:value-of select="FirstName"/></td>
        <td><xsl:value-of select="LastName"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>