<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1">
	<xsl:template match="/">
		<html>
			<head>
				<title>Atomic Number vs. Atomic Weight</title>
			</head>
			<body>
				<xsl:apply-templates select="PERIODIC_TABLE"/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="PERIODIC_TABLE">
		<h1>Atomic Number vs. Atomic Weight</h1>
		<table border="1">
			<th>Element</th>
			<th>Atomic Number</th>
			<th>Atomic Weight</th>
			<xsl:for-each select="ATOM">
				<tr>
					<td>
						<xsl:value-of select="NAME"/>
					</td>
					<td>
						<xsl:value-of select="ATOMIC_NUMBER"/>
					</td>
					<td>
						<xsl:value-of select="ATOMIC_WEIGHT"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>
