<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
			<link href="catalogo1.css" rel="stylesheet" type="text/css"/>
	  </head>
				
				
      <body>									
		<h2>Test listado Decathlon Ordenando de mayor a menor por rangos de colores y excluyendo Articulos > 50</h2>
		
		<table>									
			<tr>			 					
				<th>Referencia</th>
				<th>Departamento</th>
				<th>Categoria</th>
				<th>Precio</th>
			</tr>	
			
			
		<!-- Recorremos toda la tabla -->
		<xsl:for-each select="tienda/articulos/articulo">	
			<!-- El cambio de orden se hace con atributos: order="ascending|descending" Specifies the sort order. Default is "ascending" -->
			<xsl:sort select="precio" data-type="number" order="descending"/>	
			
			<!-- Con esta opción mostramos solo los articulos con precios que van de 0 a 9,99 y ponemos la clase barato para añadir un color  -->
			<xsl:if test="precio &lt; 9.99">
			<tr class="barato">								
				<td>
					<xsl:value-of select="referencia"/>
				</td>
				<td>
					<xsl:value-of select="departamento"/>
				</td>
				<td>
					<xsl:value-of select="Categoria"/>
				</td>
				<td>
					<xsl:value-of select="precio"/>
				</td>				
			</tr>	
			</xsl:if>
			
			<!-- Con esta opción mostramos solo los articulos con precios que van de 10 a 19,99 y ponemos la clase medio para añadir un color  -->
			<xsl:if test="precio &gt;= 10 and precio &lt;= 19.99">
			<tr class="medio">								
				<td>
					<xsl:value-of select="referencia"/>
				</td>
				<td>
					<xsl:value-of select="departamento"/>
				</td>
				<td>
					<xsl:value-of select="Categoria"/>
				</td>
				<td>
					<xsl:value-of select="precio"/>
				</td>				
			</tr>	
			</xsl:if>
			
						<!-- Con esta opción mostramos solo los articulos con precios que van de 20 a 50 y ponemos la clase caro para añadir un color -->
			<xsl:if test="precio &gt;= 20 and precio &lt;= 50 ">
			<tr class="caro">								
				<td>
					<xsl:value-of select="referencia"/>
				</td>
				<td>
					<xsl:value-of select="departamento"/>
				</td>
				<td>
					<xsl:value-of select="Categoria"/>
				</td>
				<td>
					<xsl:value-of select="precio"/>
				</td>				
			</tr>	
			</xsl:if>
			
			<!-- Acabamos con los if -->
			
		</xsl:for-each>
		</table>								
		
	  </body>
    </html>
  </xsl:template>
</xsl:stylesheet>