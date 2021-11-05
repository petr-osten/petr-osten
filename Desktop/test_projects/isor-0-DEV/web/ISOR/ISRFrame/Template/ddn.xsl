<?xml version="1.0" encoding="windows-1250"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt" xmlns:dt="urn:schemas-microsoft-com:datatypes" xml:space="preserve">
	<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/">
		<html>
			<head>
				<title>DDN</title>
        <style>
body {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 0.9em;
}
h2 {
	border-left-width: 40px;
	border-left-style: solid;
	border-left-color: #682542;
	padding-left: 13px;
	background-color: #F1F1F1;
	padding-top: 2px;
	padding-bottom: 2px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #E1E1E1;
	margin-left: 3px;
	font-family: Verdana, Helvetica, Arial;
	font-size: 115%;
}
h4 {
	border-left-width: 20px;
	border-left-style: solid;
	border-left-color: #682542;
	padding-left: 13px;
	background-color: #F1F1F1;
	padding-top: 2px;
	padding-bottom: 2px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #E1E1E1;
	margin-left: 3px;
	font-family: Verdana, Helvetica, Arial;
	font-size: 95%;
}
table.List {
  background-color: LightGrey;
	color: Black;
	border-color: Black;
	border-width: 1px;
	border-style: solid;
  cellspacing: 0px;
  cellpadding: 0px;
}
tr.ListItem {
  background-color: #E0E0E0;
}
tr.ListAlternativeItem {
  background-color: White;
}
tr.ListHeader {
  font-weight: bold;
	background-color: Black;
	color: White;
}
p
{
  margin-top: 24px;
  margin-bottom: 12px;
}
td {
  valign: top;
}
        </style>
			</head>
			<body>
        <xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
  <xsl:template match="DdnVersion">
    <h4>Ddn data</h4>
    <table cellpadding="2" cellspacing="0" width="100%">
      <tr>
        <td width="50%" valign="top">
          <p><b>Status:</b><br/><xsl:value-of select="ObjectStatusForExport"/></p>
        </td>
        <td width="50%" valign="top">
          <span> </span>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Partner:</b><br/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Partner identificator:</b><br/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Type of product:</b><br/><xsl:value-of select="ProductTypeForExport"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Purpose of product:</b><br/><xsl:value-of select="PurposeOfProductForExport"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Drawndown amount:</b><br/><xsl:value-of select="DrawdownAmount"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Drowndown currency:</b><br/><xsl:value-of select="DrawdownCurrencyForExport"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>New exposure:</b><br/><xsl:value-of select="NewExposure"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Refinancing currency:</b><br/><xsl:value-of select="RefinancingCurrencyForExport"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Start date:</b><br/><xsl:apply-templates select="StartDate"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Maturity date:</b><br/><xsl:apply-templates select="MaturityDate"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Flat fee for loan:</b><br/><xsl:value-of select="FlatFeeForLoanGuarantee"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Comm. fee for O/D:</b><br/><xsl:value-of select="CommFeeForOd"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Capitalised:</b><br/><xsl:apply-templates select="IsCapitalized"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Liquidity costs:</b><br/><xsl:value-of select="LiquidityCostsDifference"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Interest first time on:</b><br/><xsl:apply-templates select="InterestFirstTimeOn"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Roll over first time on:</b><br/><xsl:apply-templates select="RollOverFirstTimeOn"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Deal date:</b><br/><xsl:apply-templates select="DealDate"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Facility end date:</b><br/><xsl:apply-templates select="FacilityEndDate"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Account start:</b><br/><xsl:value-of select="AccountStart"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Account maturity:</b><br/><xsl:value-of select="AccountMaturity"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Account int:</b><br/><xsl:value-of select="AccountInt"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Reference rate:</b><br/><xsl:value-of select="ReferenceRate"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Margin:</b><br/><xsl:value-of select="Margin"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Interest frequency:</b><br/><xsl:value-of select="InterestFrequencyForExport"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Interest always on:</b><br/><xsl:value-of select="InterestAlwaysOn"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Roll over frequency:</b><br/><xsl:value-of select="RollOverFrequencyForExport"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Roll over always on:</b><br/><xsl:value-of select="RollOverAlwaysOn"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Repayment first time on:</b><br/><xsl:apply-templates select="RepaymentFirstTimeOn"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Repayment frequency:</b><br/><xsl:value-of select="RepaymentFrequencyForExport"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Repayment always on:</b><br/><xsl:value-of select="RepaymentAlwaysOn"/></p>
        </td>
      </tr>
      <tr>
        <td width="50%" valign="top">
          <p><b>Commited O/D:</b><br/><xsl:apply-templates select="CommitedOd"/></p>
        </td>
        <td width="50%" valign="top">
          <span> </span>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <p><b>Comments:</b><br/><xsl:value-of select="Comments"/></p>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <xsl:apply-templates select="CinVersionsData"/>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <xsl:apply-templates select="ParticipationsData"/>
        </td>
      </tr>
    </table>
  </xsl:template>
  <xsl:template match="CommitedOd">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="RepaymentFirstTimeOn">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="DealDate">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="FacilityEndDate">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="InterestFirstTimeOn">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="RollOverFirstTimeOn">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="StartDate">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="MaturityDate">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="IsCapitalized">
    <xsl:choose>
      <xsl:when test=". = 'true'">Yes</xsl:when>
      <xsl:when test=". = 'false'">No</xsl:when>
      <xsl:otherwise><span> </span></xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="CinVersionsData">
    <p><b>List of CIN:</b><br/></p>
    <table class="List" width="100%">
      <tr class="ListHeader">
        <td>Collateral type</td>
        <td>Basel II</td>
        <td>Nominal value</td>
        <td>Status</td>
      </tr>
      <xsl:for-each select="CinVersionData">
        <xsl:variable name="PosAlt">
          <xsl:choose>
            <xsl:when test="position() mod 2 = 0">ListAlternativeItem</xsl:when>
            <xsl:otherwise>ListItem</xsl:otherwise>
          </xsl:choose>
        </xsl:variable>
        <tr class="{$PosAlt}">
          <td><xsl:value-of select="@CollateralTypeData"/></td>
          <td><xsl:value-of select="@BaselIIData"/></td>
          <td><xsl:value-of select="@NominalValueData"/></td>
          <td><xsl:value-of select="@StatusData"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
  <xsl:template match="ParticipationsData">
    <p><b>List of participation:</b><br/></p>
    <table class="List" width="100%">
      <tr class="ListHeader">
        <td>Typ</td>
        <td>Funded</td>
        <td>Refinancing bank</td>
        <td>Amount</td>
        <td>Currency</td>
      </tr>
      <xsl:for-each select="ParticipationData">
        <xsl:variable name="PosAlt">
          <xsl:choose>
            <xsl:when test="position() mod 2 = 0">ListAlternativeItem</xsl:when>
            <xsl:otherwise>ListItem</xsl:otherwise>
          </xsl:choose>
        </xsl:variable>
        <tr class="{$PosAlt}">
          <td><xsl:value-of select="@ParticipationTypeData"/></td>
          <td><xsl:value-of select="@FundedData"/></td>
          <td><xsl:value-of select="@RefinancingBankData"/></td>
          <td><xsl:value-of select="@AmountData"/></td>
          <td><xsl:value-of select="@CurrencyData"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
  <xsl:template match="*"/>
</xsl:stylesheet>