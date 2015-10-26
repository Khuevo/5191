<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
		<link rel="stylesheet" href="1.css" type="text/css"/>
  </head>
 <body>
 <form method="get" action="/search" id="search">
  <input name="q" type="text" size="40" placeholder="Search..." />
</form>
  <h1>25 Countries You Can't Wait to Discover Now</h1>
	<h2>A backpack full of information about 25 hidden, indigenous, and colorful countries out there for all wanderlusts to explore. What are you still waiting for?</h2>
		<h3>Source:Lonely Planet The World: A Traveller's Guide to the Planet</h3>
	<h2>Disclaimer:</h2>
		<ul>
			<li>Structure: The countries are listed in Alphabetic order.</li>
			<li>Warning: Travel at your own risk. Consider thoroughly and choose wise!</li>
		</ul>
	<h2>Collected by Khue "Kylie" Vo</h2>
		<h3>Another wanderlust just like you. My feet are always itchy and I just can't wait to embark on new adventures!</h3>
		<h3>Contact Information:</h3>
			<ul>
				<li>Email: khuevo.unt@gmail.com</li>
				<li>Phone: 832-416-6985</li>	
			</ul>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Country</th>
	  <th>One glimpse view</th>
	  <th>Continent</th>
      <th>Capital</th>
	  <th>Population</th>
	  <th>Area</th>
	  <th>Official Language</th>
	  <th>Attractions</th>
	  <th>Cuisines</th>
	  <th>When to go</th>
    </tr>
    <xsl:for-each select="country-list/country">
		       <xsl:sort select="name"/>
    <tr bgcolor="#FFFFF0">
      <td class="narrow"><xsl:value-of select="name"/></td>
	  <td><xsl:element name="img">
	  <img src="{image}"></img>
	  </xsl:element></td>
	  <td><xsl:value-of select="continent"/></td>
      <td><xsl:value-of select="capital"/></td>
	  <td><xsl:value-of select="population"/></td>
	  <td><xsl:value-of select="area"/></td>
	  <td><xsl:value-of select="official-language"/></td>
	  <xsl:for-each select="attractions">
		<td class="wide">
			<ol>
				<xsl:for-each select="attraction">
					<li><xsl:value-of select="."/></li>
				</xsl:for-each>
			</ol>
		</td>
	  </xsl:for-each>
	  <xsl:for-each select="cuisines">
		<td class="medium">
			<ol>
				<xsl:for-each select="cuisine">
					<li><xsl:value-of select="."/></li>
				</xsl:for-each>
			</ol>
		</td>
	  </xsl:for-each>
	  <xsl:for-each select="when-to-go">
		<td class="medium">
			<ol>
				<xsl:for-each select="consideration">
					<li><xsl:value-of select="."/></li>
				</xsl:for-each>
			</ol>
		</td>
	  </xsl:for-each>
    </tr>
  </xsl:for-each>
  </table>
  
  <h4>Now what? Go, just go!</h4>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet> 