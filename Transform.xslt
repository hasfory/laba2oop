<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:param name="name" />
	<xsl:param name="faculty" />
	<xsl:param name="department" />
	<xsl:param name="subjects" />
	<xsl:param name="marks" />

	<xsl:param name="showName" select="true()" />
	<xsl:param name="showFaculty" select="true()" />
	<xsl:param name="showDepartment" select="true()" />
	<xsl:param name="showSubjects" select="true()" />
	<xsl:param name="showMarks" select="true()" />

	<xsl:template match="/">
		<html>
			<head>
				<title>Student List</title>
			</head>
			<body>
				<h1>Student List</h1>
				<table border="1">
					<thead>
						<tr>
							<th>
								<xsl:if test="$showName">Name</xsl:if>
							</th>
							<th>
								<xsl:if test="$showFaculty">Faculty</xsl:if>
							</th>
							<th>
								<xsl:if test="$showDepartment">Department</xsl:if>
							</th>
							<th>
								<xsl:if test="$showSubjects">Subjects</xsl:if>
							</th>
							<th>
								<xsl:if test="$showMarks">Marks</xsl:if>
							</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="//publication">
							<tr>
								<td>
									<xsl:if test="$showName">
										<xsl:value-of select="@NAME" />
									</xsl:if>
								</td>
								<td>
									<xsl:if test="$showFaculty">
										<xsl:value-of select="@FACULTY" />
									</xsl:if>
								</td>
								<td>
									<xsl:if test="$showDepartment">
										<xsl:value-of select="@DEPARTMENT" />
									</xsl:if>
								</td>
								<td>
									<xsl:if test="$showSubjects">
										<xsl:value-of select="@SUBJECTS" />
									</xsl:if>
								</td>
								<td>
									<xsl:if test="$showMarks">
										<xsl:value-of select="@MARKS" />
									</xsl:if>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
