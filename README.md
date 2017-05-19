La prueba fue realizada en su totalidad.

Para instalar es necesario descargar el proyecto y configurar la base de datos llamada ‘pruebawpFelipeEcheverri.sql’.

1.	Tema (Screenr) descargado he instalado en el proyecto.

2.	Plugin Popup Maker instalado y el popup con el iframe en la página de inicio.

3.	‘El tema debe de ser responsive y en modo mobile debe ocultar por CSS contenidos del home, explique qué elementos oculto’.
	Para este punto lo que hice fue agregar un CSS en la administración de la plantilla en wordpress. El código es:

	@media (min-width: 200px) and (max-width: 750px) {
	   .site-main{
			display: none;
		}
	}

	Esto lo que hace es borrar todo el contenido del artículo del home sin afectar la columna de la derecha.
	
4.	Cree un botón llamado (Cambiar CSS)….
	El botón es creado en el home visible a simple vista y el jQuery fue creado en la página home.php del template.
	

5.	Cree un plugin que rote imágenes…
	El plugin se llama ‘slide-linea-directa’, es un shortcode creado en el home con un rotador de imágenes realizado en CSS puro.
	
