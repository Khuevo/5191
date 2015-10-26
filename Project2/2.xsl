<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  	<link rel="stylesheet" href="2.css" type="text/css"/>
  	<script src="2.js"></script>
  </head>
  <body>
  <div class="box">
  <div class="container-1">
      <span class="icon"><i class="fa fa-search"></i></span>
      <input type="search" id="search" placeholder="Search..." />
  </div>
</div>
  <h1>25 Countries You Can't Wait to Discover Now</h1>
	<h2>A backpack full of information about 25 hidden, indigenous, and colorful countries out there for all wanderlusts to explore. What are you still waiting for?</h2>
		<h3>Source: Lonely Planet The World: A Traveller's Guide to the Planet</h3>
	<h2>Disclaimer:</h2>
		<ul>
			<li>Structure: The countries are listed in Alphabetic order. You can find a photo slider right on top of the first country (and remember to click Next or Previous to see more!)</li>
			<li>Warning: Travel at your own risk. Consider thoroughly and choose wise!</li>
		</ul>
	<h2>Collected by Khue "Kylie" Vo</h2>
		<h3>Another wanderlust just like you. My feet are always itchy and I just can't wait to embark on new adventures!</h3>
		<h3>Contact Information:</h3>
			<ul>
				<li>Email: khuevo.unt@gmail.com</li>
				<li>Phone: 832-416-6985</li>	
			</ul>
    <div class="diy-slideshow" align="center">
    <figure class="show">
        <img src="image/1.jpg" width="25%" /><figcaption>Aghanistan</figcaption> 
    </figure>
  <figure>
    <img src="image/2.jpg" width="25%" /><figcaption>Antartica</figcaption> 
    </figure>
    <figure>
        <img src="image/3.jpg" width="25%" /><figcaption>Armenia</figcaption> 
    </figure>
  <figure>
        <img src="image/4.jpg" width="25%" /><figcaption>Barbados</figcaption> 
    </figure>
  <figure>
        <img src="image/5.jpg" width="25%" /><figcaption>Canada</figcaption> 
    </figure>
  <figure>
        <img src="image/6.jpg" width="25%" /><figcaption>Chile</figcaption> 
    </figure>
   <figure>
        <img src="image/7.jpg" width="25%" /><figcaption>Croatia</figcaption> 
    </figure>
   <figure>
        <img src="image/8.jpg" width="25%" /><figcaption>Denmark</figcaption> 
    </figure>
   <figure>
        <img src="image/9.jpg" width="25%" /><figcaption>East Timor</figcaption> 
    </figure>
   <figure>
        <img src="image/10.jpg" width="25%" /><figcaption>Egypt</figcaption> 
    </figure>
   <figure>
        <img src="image/11.jpg" width="25%" /><figcaption>Ethiopia</figcaption> 
    </figure>
   <figure>
        <img src="image/12.jpg" width="25%" /><figcaption>Finland</figcaption> 
    </figure>
   <figure>
        <img src="image/13.jpg" width="25%" /><figcaption>Greece</figcaption> 
    </figure>
    <figure>
        <img src="image/14.jpg" width="25%" /><figcaption>Guatemala</figcaption> 
    </figure>
    <figure>
        <img src="image/15.jpg" width="25%" /><figcaption>Hong Kong</figcaption> 
    </figure>
    <figure>
        <img src="image/16.jpg" width="25%" /><figcaption>Iceland</figcaption> 
    </figure>
    <figure>
        <img src="image/17.jpg" width="25%" /><figcaption>Israel and the Palestinian Territories</figcaption> 
    </figure>
    <figure>
        <img src="image/18.jpg" width="25%" /><figcaption>Kenya</figcaption> 
    </figure>
    <figure>
        <img src="image/19.jpg" width="25%" /><figcaption>Macau</figcaption> 
    </figure>
    <figure>
        <img src="image/20.jpg" width="25%" /><figcaption>Maldives</figcaption> 
    </figure>
    <figure>
        <img src="image/21.jpg" width="25%" /><figcaption>Mongolia</figcaption> 
    </figure>
    <figure>
        <img src="image/22.jpg" width="25%" /><figcaption>New Zealand</figcaption> 
    </figure>
    <figure>
        <img src="image/23.jpg" width="25%" /><figcaption>South Africa</figcaption> 
    </figure>
    <figure>
        <img src="image/24.jpg" width="25%" /><figcaption>Tibet</figcaption> 
    </figure>
    <figure>
        <img src="image/25.jpg" width="25%" /><figcaption>Vietnam</figcaption> 
    </figure>
  <span class="prev">«</span>
  <span class="next">»</span>
</div>  
<h5>Some glimpse view of the countries</h5>

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
<h4>Now what? Just go!</h4>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet> 