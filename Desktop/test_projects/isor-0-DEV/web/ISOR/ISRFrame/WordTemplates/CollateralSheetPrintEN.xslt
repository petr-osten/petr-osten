<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="collateralSheet">

    <table cols="1" colwidths="100" width="100">
      <tr>
        <td>
          <b>10 Collateral Evaluation within a Limit Application (for RB Group only)</b>
        </td>
      </tr>
      <tr>
        <td fontSize="8">
          <b>Collateral Evaluation Sheet Note: </b>For corporate and SE/SMB business of RBI Group this Collateral Evaluation Sheet or an equivalent collateral statement should be used as an integrated part of the limit application.
        </td>
      </tr>
      <tr>
        <td height="5"></td>
      </tr>
      <tr>
        <td>
          <table cols="2" colwidths="20,80" width="100">
            <tr>
              <td fontSize="7" border-left="0.5" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">Customer:</td>
              <td fontSize="7" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">
                <xsl:value-of select="name"/>
              </td>
            </tr>
            <tr>
              <td fontSize="7" border-left="0.5" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">Customer Number:</td>
              <td fontSize="7" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">
                <xsl:value-of select="ident"/>
              </td>
            </tr>
            <tr>
              <td fontSize="7" border-left="0.5" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">GCC:</td>
              <td fontSize="7" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">
                <xsl:value-of select="gcc"/>
              </td>
            </tr>
            <tr>
              <td fontSize="7" border-left="0.5" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">GCC Number:</td>
              <td fontSize="7" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">
                <xsl:value-of select="gccNumber"/>
              </td>
            </tr>
            <tr>
              <td fontSize="7" border-left="0.5" border-right="0.5" border-top="0.5" border-bottom="0.5" bgcolor="255,255,204" height="14">Account Manager:</td>
              <td fontSize="7" border-right="0.5" border-top="0.5" border-bottom="0.5" bgcolor="255,255,204" height="14">
                <xsl:value-of select="accountManager"/>
              </td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td height="5"></td>
      </tr>
      <tr>
        <td>
          <table cols="15" colwidths="4,2,4,9,10,4,11,7,7,7,7,7,7,7,7" width="100">

            <tr>
              <td colspan="7"></td>
              <td colspan="8" fontSize="7" align="center" border-top="1.3" border-left="1.3" border-right="1.3" height="14">
                Amounts in <xsl:value-of select="currency"/>
              </td>
            </tr>
            <tr>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="1.3" border-top="1.3" border-bottom="0.8">Code</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Nr</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Collateral</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Collateral Type</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Description</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Currency Mismatch (Y/N)</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Collaterized Accounts</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="1.3" border-top="1.3" border-bottom="0.8">Nominal Collateral Value (NCV)</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Estimated Value</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Discount in %</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">HRL (Higher Raning Liens)*</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Adj. Realisation Value (ARV)</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="1.3" border-top="1.3" border-bottom="0.8">Weighted Collateral Value (WCV)</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Weighted Guarantee Value (WGV)</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-right="1.3" border-bottom="0.8">Strong LoC Amount</td>
            </tr>

            <xsl:for-each select="collateral">

              <tr>
                <td fontSize="6" height="25" border-left="1.3" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="code"/>
                </td>
                <td fontSize="6" align="right" height="25" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="nr"/>
                </td>
                <td fontSize="6" height="25" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="idKz"/>
                </td>
                <td fontSize="6" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="type"/>
                </td>
                <td fontSize="6" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="description"/>
                </td>
                <td fontSize="6" align="center" height="25" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="ccyMismatch"/>
                </td>
                <td fontSize="6" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <table cols="1" colwidths="100" width="100">
                    <xsl:for-each select="collaterizedAccount">
                      <tr>
                        <td fontSize="6">
                          <xsl:value-of select="name"/>
                        </td>
                      </tr>
                    </xsl:for-each>
                  </table>
                </td>
                <td fontSize="6" align="right" height="25" border-left="1.3" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="ncv"/>
                </td>
                <td fontSize="6" align="right" height="25" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="expectedValue"/>
                </td>
                <td fontSize="6" align="right" height="25" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="discount"/>
                </td>
                <td fontSize="6" align="right" height="25" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="hrl"/>
                </td>
                <td fontSize="6" align="right" height="25" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="arv"/>
                </td>
                <td fontSize="6" align="right" height="25" border-left="1.3" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="wcv"/>
                </td>
                <td fontSize="6" align="right" height="25" border-left="0.5" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="wgv"/>
                </td>
                <td fontSize="6" align="right" height="25" border-left="0.5" border-right="1.3" border-top="0.3" border-bottom="0.2">
                  <xsl:value-of select="strongLocAmount"/>
                </td>

              </tr>

            </xsl:for-each>

            <tr>
              <td colspan="7" fontSize="7" border-left="1.3" border-top="1.3" bgcolor="255,255,204" height="14">Overall Weighted Collateral Value</td>
              <td colspan="5" border-left="1.3" border-top="1.3" bgcolor="255,255,204" height="14"></td>
              <td fontSize="7" border-left="1.3" border-top="1.3" bgcolor="255,255,204" height="14" align="right">
                <xsl:value-of select="sumWcv"/>
              </td>
              <td colspan="2" border-left="0.5" border-top="1.3"  border-right="1.3" bgcolor="160,160,160" height="14"></td>
            </tr>
            <tr>
              <td colspan="7" fontSize="7" border-left="1.3" border-top="1" border-bottom="1.5" bgcolor="255,255,204" height="15">Overall amount of Guarantees and LoCs</td>
              <td colspan="5" border-left="1.3" border-bottom="1.3" bgcolor="255,255,204" height="15"></td>
              <td border-left="1.3" border-top="0.5" border-bottom="1.5" bgcolor="160,160,160" height="15"></td>
              <td fontSize="7" border-left="0.5" border-top="0.5" border-bottom="1.5" bgcolor="255,255,204" height="15" align="right">
                <xsl:value-of select="sumWgv"/>
              </td>
              <td fontSize="7" border-left="0.5" border-top="0.5" border-right="1.3" border-bottom="1.5" bgcolor="255,255,204" height="15" align="right">
                <xsl:value-of select="sumStrongLocAmount"/>
              </td>
            </tr>

          </table>
        </td>
      </tr>
      <tr>
        <td height="5"></td>
      </tr>
      <tr>
        <td>

          <table cols="6" colwidths="19,36,10,7,14,14" width="100">
            <tr>
              <td fontSize="7" border-left="0.5" border-top="0.5" border-bottom="0.5" height="14" bgcolor="255,255,204">Collateral Officer</td>
              <td fontSize="7" border-left="0.5" border-top="0.5" border-bottom="0.5" border-right="0.5" height="14" bgcolor="255,255,204">
                <xsl:value-of select="collaralOfficer"/>
              </td>
              <td></td>
              <td fontSize="7" border-left="0.5" border-top="0.5" border-bottom="0.5" height="14" bgcolor="255,255,204">Date</td>
              <td fontSize="7" border-left="0.5" border-top="0.5" border-bottom="0.5" border-right="0.5" height="14" bgcolor="255,255,204" align="center">
                <xsl:value-of select="date"/>
              </td>
              <td></td>
            </tr>
          </table>

        </td>

      </tr>

      <tr>
        <td height="5"></td>
      </tr>
      <tr>
        <td>*collateral allocated in RBCZ to other drawing clients</td>
      </tr>
    </table>


  </xsl:template>

</xsl:stylesheet>