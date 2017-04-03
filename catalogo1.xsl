<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
			<link href="catalogo1.css" rel="stylesheet" type="text/css"/>
	  </head>
				
				
      <body>								<!-- Abrimos el body -->
		<h1>Test listado Decathlon</h1>
		
		<table>								 <!-- Abrimos la tabla -->
			<tr>			 <!-- Primera Fila TR -->
				<th>Referencia</th>
				<th>Descripcion</th>
				<th>Departamento</th>
				<th>Precio</th>
				<th>Foto</th>
			</tr>							<!-- fin Primera Fila TR -->
			<tr>							<!-- Segunda Fila TR -->
				<td>
					<xsl:value-of select="tienda/articulos/articulo/referencia"/>
				</td>
				<td>
					<xsl:value-of select="tienda/articulos/articulo/descripcion"/>
				</td>
				<td>
					<xsl:value-of select="tienda/articulos/articulo/departamento"/>
				</td>
				<td>
					<xsl:value-of select="tienda/articulos/articulo/precio"/>
				</td>
				<td>
					<img src="images/8354268.jpg"/>
				</td>				
			</tr>							<!-- fin Segunda Fila TR -->
	
		</table>							<!-- cerramos la tabla -->
		
	  </body>
    </html>
  </xsl:template>
</xsl:stylesheet>