<?xml version="1.0" encoding="windows-1250"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt" xmlns:dt="urn:schemas-microsoft-com:datatypes" xml:space="preserve">
	<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/">		
				<xsl:apply-templates/>
	</xsl:template>
  <xsl:template match="CinVersion">
    
    <table width="100" cols="2" colswidth="50,50">
      <tr>
        <td width="50%" valign="top">
          <p><b>Status:</b><br/><xsl:value-of select="ObjectStatusForExport"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Karta zajisteni:</b><br/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Collateral review date:</b><br/><xsl:apply-templates select="CollaterReviewDate"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Collateral type:</b><br/><xsl:apply-templates select="CollateralTypeForExport"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Basel II:</b><br/><xsl:apply-templates select="IsBasel2"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Nominal value:</b><br/><xsl:value-of select="NominalValue"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Weight:</b><br/><xsl:value-of select="Weight"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Weighted value:</b><br/><xsl:value-of select="WeightedValue"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Loan number:</b><br/><xsl:value-of select="LoanNoForExport"/></p>
        </td>
        <td width="50%" valign="top">
          <span> </span>
        </td>
      </tr>
      <tr>
        <td colspan="2" valign="top">
          <p><b>Comment:</b><br/><xsl:value-of select="Comments"/></p>
        </td>
      </tr>
    </table>
  </xsl:template>
  <xsl:template match="IsBasel2">
    <xsl:choose>
      <xsl:when test=". = 'true'">Yes</xsl:when>
      <xsl:when test=". = 'false'">No</xsl:when>
      <xsl:otherwise><span> </span></xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="CollaterReviewDate">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="*"/>
</xsl:stylesheet>