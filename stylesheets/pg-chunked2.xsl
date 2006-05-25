<?xml version='1.0' encoding='ISO-8859-1'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml"
                version="1.0">

    <!-- We use XHTML -->
  <xsl:import href="/opt/docbook-xsl/xhtml/docbook.xsl"/>
  <xsl:param name="chunker.output.encoding" select="'ISO-8859-15'"/>


    <!-- Including our others customized elements templates -->
  <xsl:include href="xhtml/pg-admon.xsl"/>
  <xsl:include href="xhtml/pg-sections.xsl"/>
  <xsl:include href="xhtml/pg-mixed.xsl"/>
  <xsl:include href="xhtml/pg-titles.xsl"/>
  <xsl:include href="xhtml/pg-toc.xsl"/>
  <xsl:include href="xhtml/pg-xref.xsl"/>

    <!-- The CSS Stylesheet -->
  <xsl:param name="html.stylesheet" select="'../stylesheets/pg.css'"/>
  <xsl:template name='user.head.content'>
     <link rel="stylesheet" href="../stylesheets/pg-print.css" type="text/css" media="print"/>
  </xsl:template>

    <!-- Dropping some unwanted style attributes -->
  <xsl:param name="ulink.target" select="''"></xsl:param>
  <xsl:param name="css.decoration" select="0"></xsl:param>

    <!-- No XML declaration -->
  <xsl:param name="chunker.output.omit-xml-declaration" select="'yes'"/>

</xsl:stylesheet>
