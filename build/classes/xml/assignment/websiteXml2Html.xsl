<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<H1>Website</H1>

		<H2>Pages</H2>
		<xsl:for-each select="/website/page">
			<xsl:number format="1. " />
			<xsl:value-of select="concat(@name,', ',description)"></xsl:value-of>
			<br />
		</xsl:for-each>

		<H2>Widgets</H2>
		<TABLE border="1">
			<THEAD>
				<TR>
					<TH>id</TH>
					<TH>type</TH>
					<TH>text</TH>
					<TH>src</TH>
					<TH>url</TH>
					<TH>label</TH>
				</TR>
			</THEAD>
			<TBODY>
				<xsl:for-each select="/website/page/widget">
					<TR>
						<TD>
							<xsl:value-of select="@id"></xsl:value-of>
						</TD>
						<TD>
							<xsl:value-of select="@type"></xsl:value-of>
						</TD>
						<TD>
							<xsl:value-of select="text"></xsl:value-of>
						</TD>
						<TD>
							<xsl:value-of select="@src"></xsl:value-of>
						</TD>
						<TD>
							<xsl:value-of select="@url"></xsl:value-of>
						</TD>
						<TD>
							<xsl:value-of select="@label"></xsl:value-of>
						</TD>
					</TR>
				</xsl:for-each>
			</TBODY>
		</TABLE>
	</xsl:template>
</xsl:stylesheet>