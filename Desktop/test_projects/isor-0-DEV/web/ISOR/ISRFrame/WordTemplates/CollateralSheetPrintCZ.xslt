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
          <b>10 Přehled zajištění u Limitů (pouze pro RBI Group)</b>
        </td>
      </tr>
      <tr>
        <td fontSize="8">
          <b>Poznámka k přehledu zajištění: </b>pro RBI Group segmenty Corporate a SE/SMB by měl být použit tento Přehled zajištění nebo odpovídající výpis zajištění jako nedílná součást žádosti o limity.
        </td>
      </tr>
      <tr>
        <td height="5"></td>
      </tr>
      <tr>
        <td>
          <table cols="2" colwidths="20,80" width="100">
            <tr>
              <td fontSize="7" border-left="0.5" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">Jméno klienta:</td>
              <td fontSize="7" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">
                <xsl:value-of select="name"/>
              </td>
            </tr>
            <tr>
              <td fontSize="7" border-left="0.5" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">Identifikace klienta:</td>
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
              <td fontSize="7" border-left="0.5" border-right="0.5" border-top="0.5" bgcolor="255,255,204" height="14">Číslo GCC:</td>
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
                Částky v <xsl:value-of select="currency"/>
              </td>
            </tr>
            <tr>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="1.3" border-top="1.3" border-bottom="0.8">Kód</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Č.</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Zajištění</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Typ zajištění</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Popis</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Currency Mismatch (Y/N)</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Zajištěné limity</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="1.3" border-top="1.3" border-bottom="0.8">NCV (Nominální hodnota)</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Očekávaná hodnota</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">Diskont v %</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">HRL (Higher Raning Liens)*</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">ARV (Adj. Realisation Value)</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="1.3" border-top="1.3" border-bottom="0.8">WCV (Vážená hodnota zajištění)</td>
              <td fontSize="6" align="center" height="45" bgcolor="255,255,204" border-left="0.5" border-top="1.3" border-bottom="0.8">WGV (Garantovaná částka)</td>
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
                  <table cols="1" colwidths="100" width="100">
                    <xsl:for-each select="description">
                      <tr>
                        <td fontSize="6">
                          <xsl:value-of select="descriptionItem"/>
                        </td>
                      </tr>
                    </xsl:for-each>
                  </table>
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
              <td colspan="7" fontSize="7" border-left="1.3" border-top="1.3" bgcolor="255,255,204" height="14">Celková vážená hodnota zajištění</td>
              <td colspan="5" border-left="1.3" border-top="1.3" bgcolor="255,255,204" height="14"></td>
              <td fontSize="7" border-left="1.3" border-top="1.3" bgcolor="255,255,204" height="14" align="right">
                <xsl:value-of select="sumWcv"/>
              </td>
              <td colspan="2" border-left="0.5" border-top="1.3"  border-right="1.3" bgcolor="160,160,160" height="14"></td>
            </tr>
            <tr>
              <td colspan="7" fontSize="7" border-left="1.3" border-top="1" border-bottom="1.5" bgcolor="255,255,204" height="15">Celková hodnota záruk a LoC</td>
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
              <td fontSize="7" border-left="0.5" border-top="0.5" border-bottom="0.5" height="14" bgcolor="255,255,204">Datum</td>
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
        <td>*collateral alokovaný v RBCZ na ostatní čerpající</td>
      </tr>
    </table>


  </xsl:template>

</xsl:stylesheet>