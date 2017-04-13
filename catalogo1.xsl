<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
			<link href="catalogo1.css" rel="stylesheet" type="text/css"/>
	  </head>
				
				
      <body>									<!-- Abrimos el body -->
		<h1>Test listado Decathlon</h1>
		
		<table>									<!-- Abrimos la tabla -->
			<tr>			 					<!-- Primera Fila TR -->
				<th>Referencia</th>
				<th>Descripcion</th>
				<th>Departamento</th>
				<th>Categoria</th>
				<th>Precio</th>
				<th>Foto</th>
			</tr>								<!-- fin Primera Fila TR -->
		<xsl:for-each select="tienda/articulos/articulo">	<!-- Recorremos toda la tabla -->
			<xsl:sort select="departamento"/>	<!-- El cambio de orden se hace con atributos: order="ascending|descending" Specifies the sort order. Default is "ascending" -->
			<tr>								<!-- Segunda Fila TR -->
			
			
			<!-- Añadimos if para los colores -->
			<xsl:if test="Categoria='Montaña'">
				<xsl:attribute name="bgcolor">#F5DA81</xsl:attribute>
				</xsl:if>
			<xsl:if test="Categoria='Fitness'">
				<xsl:attribute name="bgcolor">#A9D0F5</xsl:attribute>
				</xsl:if>
			<xsl:if test="Categoria='Ciclismo'">
				<xsl:attribute name="bgcolor">#F5A9BC</xsl:attribute>
				</xsl:if><!-- fin de los if para los colores -->
				

			
			
				<td>
					<xsl:value-of select="referencia"/>
				</td>
				<td>
					<xsl:value-of select="descripcion"/>
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
				<td>
					<a href="{url}">			<!-- Linkamos la foto a una URL -->
						<img src="{foto}"/>		<!-- Añadims la foto -->
					</a>
				</td>				
			</tr>								<!-- fin Segunda Fila TR -->
		</xsl:for-each>
		</table>								<!-- cerramos la tabla -->
		
	  </body>
    </html>
  </xsl:template>
</xsl:stylesheet>