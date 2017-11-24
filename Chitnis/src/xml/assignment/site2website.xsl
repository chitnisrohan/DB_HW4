<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" />
	<xsl:template match="/site">
		<website>
			<xsl:attribute name="id"><xsl:value-of select="@id" /></xsl:attribute>
			<xsl:attribute name="name"><xsl:value-of select="@name" /></xsl:attribute>
			<xsl:apply-templates />
		</website>
	</xsl:template>
	<xsl:template match="/site/views/view">
		<page>
			<xsl:attribute name="id"><xsl:value-of select="@id" /></xsl:attribute>
			<xsl:attribute name="name"><xsl:value-of select="@name" /></xsl:attribute>
			<description>
				<xsl:value-of select="description" />
			</description>
			<xsl:for-each select="component">
				<widget>
					<xsl:attribute name="id"><xsl:value-of
						select="@ref" /></xsl:attribute>
					<xsl:variable name="a1">
						<xsl:value-of select="@ref" />
					</xsl:variable>

					<xsl:for-each select="/site/components/component">
						<xsl:if test="@id = $a1">
							<xsl:attribute name="type">
								<xsl:value-of select="@type"></xsl:value-of>									
							</xsl:attribute>
							<xsl:choose>
								<xsl:when test="@src">
									<xsl:attribute name="src">
										<xsl:value-of select="@src"></xsl:value-of>									
									</xsl:attribute>
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="@url">
									<xsl:attribute name="url">
										<xsl:value-of select="@url"></xsl:value-of>									
									</xsl:attribute>
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="@label">
									<xsl:attribute name="label">
										<xsl:value-of select="@label"></xsl:value-of>									
									</xsl:attribute>
								</xsl:when>
							</xsl:choose>
							<xsl:if test="@type = 'TEXT'">
								<text>
									<xsl:value-of select="text"></xsl:value-of>
								</text>
							</xsl:if>
						</xsl:if>
					</xsl:for-each>
				</widget>
			</xsl:for-each>
		</page>
	</xsl:template>
	<xsl:template match="/site/components/component"></xsl:template>
</xsl:stylesheet>