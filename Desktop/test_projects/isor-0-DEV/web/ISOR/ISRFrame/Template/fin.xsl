<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt" xmlns:dt="urn:schemas-microsoft-com:datatypes" xml:space="preserve">
	<xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
		<html>
			<head>
				<title>CIN</title>
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
  <xsl:template match="FinVersion">
    <h2>Fin</h2>
    <table cellpadding="2" cellspacing="0" width="100%">
      <tr>
        <td width="50%" valign="top">
          <p><b>Status:</b><br/><xsl:value-of select="ObjectStatusForExport"/></p>
        </td>
        <td width="50%" valign="top">
          <p><b>Amount:</b><br/><xsl:value-of select="Amount"/></p>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Identifikace ESS:</b><br/><xsl:value-of select="ESS"/></p>
        </td>
        <td valign="top">
          <p><b>Currency:</b><br/><xsl:value-of select="CurrencyForExport"/></p>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <xsl:apply-templates select="PartnersData"/>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Acount officer:</b><br/><xsl:value-of select="AcountOfficer"/></p>
        </td>
        <td valign="top">
          <p><b>Account manager:</b><br/><xsl:value-of select="AccountManager"/></p>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Review date:</b><br/><xsl:value-of select="ReviewDate"/></p>
        </td>
        <td valign="top">
          <p><b>Loan account number:</b><br/><xsl:value-of select="LoanAccountNumber"/></p>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Credit agreement number:</b><br/><xsl:value-of select="CreditAgreementNo"/></p>
        </td>
        <td valign="top">
          <p><b>Úvěrová smlouva:</b><br/><xsl:value-of select="UverovaSmlouva"/></p>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Facility number:</b><br/><xsl:value-of select="FacilityNo"/></p>
        </td>
        <td>
          <p> </p>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Address code:</b><br/><xsl:value-of select="AddressCode"/></p>
        </td>
        <td valign="top">
          <p><b>Statement frequency:</b><br/><xsl:value-of select="StatementFrequency"/></p>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Facility type:</b><br/><xsl:value-of select="FacilityTypeDisplayField"/></p>
        </td>
        <td valign="top">
          <p><b>Commited:</b><br/><xsl:apply-templates select="IsCommited"/></p>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Commitment fee:</b><br/><xsl:value-of select="CommitmentFee"/></p>
        </td>
        <td valign="top">
          <p><b>Flat fee for facility:</b><br/><xsl:value-of select="FlatFeeForTheFacility"/></p>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Date of expiry:</b><br/><xsl:apply-templates select="DateOfExpiry"/></p>
        </td>
        <td valign="top">
          <p><b>Last availability date::</b><br/><xsl:apply-templates select="LastAvailabilityDate"/></p>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Date of approval:</b><br/><xsl:apply-templates select="DateOfApproval"/></p>
        </td>
        <td valign="top">
          <p><b>Revolving:</b><br/><xsl:apply-templates select="IsRevolving"/></p>
        </td>
      </tr>
      <tr>
        <td valign="top">
          <p><b>Secured:</b><br/><xsl:apply-templates select="IsSecured"/></p>
        </td>
        <td valign="top">
          <p><b>Multi currency:</b><br/><xsl:value-of select="MultiCurrencyDisplayField"/></p>
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
          <xsl:apply-templates select="DdnVersionsData"/>
        </td>
      </tr>
    </table>
  </xsl:template>
  <xsl:template match="PartnersData">
    <p><b>Customers:</b><br/></p>
    <table class="List" width="100%">
      <tr class="ListHeader">
        <td>Name</td>
        <td>Ident</td>
        <td>Number</td>
        <td>Amount</td>
      </tr>
      <xsl:for-each select="PartnerData">
        <xsl:variable name="PosAlt">
          <xsl:choose>
            <xsl:when test="position() mod 2 = 0">ListAlternativeItem</xsl:when>
            <xsl:otherwise>ListItem</xsl:otherwise>
          </xsl:choose>
        </xsl:variable>
        <tr class="{$PosAlt}">
          <td><xsl:value-of select="@NameData"/></td>
          <td><xsl:value-of select="@IdentData"/></td>
          <td><xsl:value-of select="@NumberData"/></td>
          <td><xsl:value-of select="@AmountData"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
  <xsl:template match="IsCommited">
    <xsl:choose>
      <xsl:when test=". = 'true'">Yes</xsl:when>
      <xsl:when test=". = 'false'">No</xsl:when>
      <xsl:otherwise><span> </span></xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="DateOfExpiry">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="LastAvailabilityDate">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="DateOfApproval">
    <xsl:value-of select="ms:format-date(., 'dd.MM. yyyy')"/>
  </xsl:template>
  <xsl:template match="IsRevolving">
    <xsl:choose>
      <xsl:when test=". = 'true'">Yes</xsl:when>
      <xsl:when test=". = 'false'">No</xsl:when>
      <xsl:otherwise><span> </span></xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="IsSecured">
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
  <xsl:template match="DdnVersionsData">
    <p><b>List of DDN:</b><br/></p>
    <table class="List" width="100%">
      <tr class="ListHeader">
        <td>Type of product</td>
        <td>Purpose of product</td>
        <td>Start date</td>
        <td>Drawdown amount</td>
        <td>Drawdown currency</td>
        <td>Status</td>
      </tr>
      <xsl:for-each select="DdnVersionData">
        <xsl:variable name="PosAlt">
          <xsl:choose>
            <xsl:when test="position() mod 2 = 0">ListAlternativeItem</xsl:when>
            <xsl:otherwise>ListItem</xsl:otherwise>
          </xsl:choose>
        </xsl:variable>
        <tr class="{$PosAlt}">
          <td><xsl:value-of select="@TypeOfProductData"/></td>
          <td><xsl:value-of select="@PurposeOfProductData"/></td>
          <td><xsl:value-of select="@StartDateData"/></td>
          <td><xsl:value-of select="@DrawdownAmountData"/></td>
          <td><xsl:value-of select="@DrawdownCurrencyData"/></td>
          <td><xsl:value-of select="@StatusData"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
  <xsl:template match="*"/>
</xsl:stylesheet>