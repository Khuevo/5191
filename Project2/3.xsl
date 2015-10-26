<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  	<link rel="stylesheet" href="3.css" type="text/css"/>
  	<script src="3.js"></script>
  </head>
  <body>
  <form method="get" action="/search" id="search">
  <input name="q" type="text" size="40" placeholder="Search..." />
</form>
  <p id="borderimg3"><h1>25 Countries You Can't Wait to Discover Now</h1></p>

	<h2>A backpack full of information about 25 hidden, indigenous, and colorful countries out there for all wanderlusts to explore. What are you still waiting for?</h2>
		<h3>Source: Lonely Planet The World: A Traveller's Guide to the Planet</h3>
	<h2>Disclaimer:</h2>
		<ul>
			<li>Structure: The countries are listed in Alphabetic order. In the end, you can review the countries with an image slideshow of the countries!</li>
			<li>Warning: Travel at your own risk. Consider thoroughly and choose wise!</li>
		</ul>
	<h2>Collected by Khue "Kylie" Vo</h2>
		<h3>Another wanderlust just like you. My feet are always itchy and I just can't wait to embark on new adventures!</h3>
		<h3>Contact Information:</h3>
			<ul>
				<li>Email: khuevo.unt@gmail.com</li>
				<li>Phone: 832-416-6985</li>	
			</ul>
	<xsl:for-each select="country-list/country">
		<h2><xsl:value-of select="name"/></h2>
		<xsl:element name="img">
	  <img src="{image}"></img>
	  </xsl:element>
		<ul>
			<li>Continent: <xsl:value-of select="continent"/></li>
			<li>Capital: <xsl:value-of select="capital"/></li>
			<li>Population: <xsl:value-of select="population"/></li>
			<li>Area: <xsl:value-of select="area"/></li>
			<li>Official Language: <xsl:value-of select="official-language"/></li>
		</ul>
		<h3>Attractions</h3>
		<xsl:for-each select="attractions">
			<ol>
				<xsl:for-each select="attraction">
					<li><xsl:value-of select="."/></li>
				</xsl:for-each>
			</ol>
		</xsl:for-each>
		<h3>Cuisines</h3>
		<xsl:for-each select="cuisines">
			<ol>
				<xsl:for-each select="cuisine">
					<li><xsl:value-of select="."/></li>
				</xsl:for-each>
			</ol>
		</xsl:for-each>
		<h3>When to go</h3>
	  	<xsl:for-each select="when-to-go">
	  		<ol>
				<xsl:for-each select="consideration">
					<li><xsl:value-of select="."/></li>
				</xsl:for-each>
			</ol>
		</xsl:for-each>
   	</xsl:for-each>
 
 <h4>Now take a look at the countries again, and you know what? Go, just go!</h4>
<center><img id="slideshow" src="image/1.jpg" alt="afghanistan"/></center>



  </body>
  </html>
</xsl:template>
</xsl:stylesheet> 