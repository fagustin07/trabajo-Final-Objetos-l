!classDefinition: #FileSystemTest category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
TestCase subclass: #FileSystemTest
	instanceVariableNames: 'factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!FileSystemTest methodsFor: 'setUp' stamp: 'FS 6/22/2019 15:44:23'!
setUp

	factory _ FactoryDeTest new.! !


!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/17/2019 00:21:52'!
test006_AUnArchivoDeTextoSeLeAsignaElNombreDeSuOwner
	
	| unArchivo |
	unArchivo _ factory unArchivoDeTextoNuevo.
	
	Assert isTrue: (unArchivo esPropiedadDelUsuarioLlamado: 'unUsuario')! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:56:47'!
test007_AUnArchivoDeTextoSeLeAsignaSuNombre
	
	| unArchivo |
	unArchivo _ factory unArchivoDeTextoNuevo .
	
	Assert isTrue: (unArchivo esElArchivoDeTextoLlamado: 'unArchivoNuevo.txt')! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:56:56'!
test008_UnArchivoDeTextoPuedeComenzarConSuContenidoTextualVacio
	
	| unArchivo |
	unArchivo _ factory unArchivoDeTextoNuevo .
	
	Assert isFalse: unArchivo tieneContenidoTextual.! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:57:00'!
test009_UnArchivoDeTextoPuedeEscribirSobreSuContenidoTextual
	
	| unArchivo |
	unArchivo _ factory unArchivoDeTextoNuevo .
	
	unArchivo escribir: 'sacar la basura a las 21hs'.
	
	Assert isTrue: unArchivo tieneContenidoTextual .! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:57:06'!
test010A_UnArchivoDeTextoPuedeComenzarConSuContenidoTextualEscrito
	
	| unArchivo |
	unArchivo _ ArchivoDeTexto delUsuario: 'unUsuario' conElNombre:'texto'queContiene:'Aloja!!'.	
	
	Assert isTrue: unArchivo tieneContenidoTextual .! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:57:12'!
test010B_UnArchivoDeTextoPuedeEscribirEnSuContenidoTextual
	
	| unArchivo |
	unArchivo _ ArchivoDeTexto delUsuario: 'unUsuario' conElNombre:'texto'queContiene:'Aloja!!'.	

	unArchivo escribir: ' Como están?'.
	
	Assert that: unArchivo contenidoTextual isEqualTo: 'Aloja!! Como están?'.! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:57:17'!
test011_UnArchivoDeTextoPuedeSobrescribirEnSuContenidoTextual
	
	| unArchivo |
	unArchivo _ ArchivoDeTexto delUsuario: 'unUsuario' conElNombre:'texto'queContiene:''.
	unArchivo escribir: 'Aloja!!'.
	
	unArchivo sobrescribir: 'Espero que deje de llover'.
	
	Assert that: unArchivo contenidoTextual isEqualTo: 'Espero que deje de llover'.! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:57:25'!
test016_UnArchivoDeTextoComienzaConPermisosDeLecturaPublico
	
	| unArchivoDeTexto |
	unArchivoDeTexto _ factory unArchivoDeTextoNuevo .

		
	Assert isTrue: unArchivoDeTexto tienePermisosDeLectura .! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:57:32'!
test017_UnArchivoDeTextoComienzaSinPermisosDeEscrituraPublico
	
	| unArchivoDeTexto |
	unArchivoDeTexto _ factory unArchivoDeTextoNuevo .

		
	Assert isFalse: (unArchivoDeTexto tienePermisosDeEscritura).! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:57:39'!
test018_UnArchivoDeTextoComienzaSinPermisosDeEjecucionPublico
	
	| unArchivoDeTexto |
	unArchivoDeTexto _ factory unArchivoDeTextoNuevo .
		
	Assert isFalse: unArchivoDeTexto tienePermisosDeEjecucion.! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:56:28'!
test021_AUnArchivoDeTextoSeLePuedeCambiarSuNombre
	
	| unArchivoDeTexto |
	unArchivoDeTexto _ factory unArchivoDeTextoNuevo .

	unArchivoDeTexto cambiarNombreA: 'bigHouse'.
		
	Assert that: unArchivoDeTexto  nombre isEqualTo: 'bigHouse.txt'.! !

!FileSystemTest methodsFor: 'textFile tests' stamp: 'FS 7/16/2019 12:56:28'!
test025_UnArchivoDeTextoPuedeEjecutarseSiSuContenidoTextualPuedeEvaluarse
	
	| unArchivoDeTexto |
	unArchivoDeTexto _ factory unArchivoDeTextoNuevo .
	
	unArchivoDeTexto escribir: '(2+2)*8'.
		
	Assert that: unArchivoDeTexto ejecutar isEqualTo: 32.! !


!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:34:00'!
test001_AUnDirectorioSeLeAsignaElNombreDeSuOwner

	| unaTerminal |
	unaTerminal _ factory unDirectorioNuevo .

	Assert isTrue: (unaTerminal esPropiedadDelUsuarioLlamado: 'unUsuario').! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:34:06'!
test002_AUnDirectorioSeLeAsignaElNombreQuePosee

	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .

	Assert isTrue: (unDirectorio esElDirectorioLlamado: 'directorioNuevo').! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:34:10'!
test003_AUnDirectorioSeLeAsignaElDirectorioDondeEsCreado

	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo.

	Assert isTrue: (unDirectorio esSubdirectorioDe: 'directorioRoot').! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:34:14'!
test004_UnDirectorioComienzaSinArchivos

	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .

	Assert that: unDirectorio nombresDeSusArchivos isEqualTo: OrderedCollection new.! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:54:57'!
test005_UnDirectorioCreaLaCarpetaSubdirectorioYLaGuardaEnSuContenido
	
	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	
	unDirectorio crearSubdirectorioDelUsuario: 'usuarioCreadorDeSubdirectorio' llamado: 'unSubdirectorio'.
	
	Assert isTrue: (unDirectorio contieneElArchivoLlamado: 'unSubdirectorio')! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:55:03'!
test012_UnDirectorioCreaUnArchivoYLoGuardaEnSuContenido
	
	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	
	unDirectorio crearArchivoDeTextoDelUsuario: 'usuarioCreadorDeSubdirectorio' llamado: 'Comprar' queContiene:'un kilo de tomate'.
	
	Assert isTrue: (unDirectorio contieneElArchivoLlamado: 'Comprar.txt')! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:55:10'!
test013_UnDirectorioPuedeEncontrarASusSubdirectorios
	
	| unDirectorio subdirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	unDirectorio crearSubdirectorioDelUsuario: 'UnUsuario' llamado:'bibliografias'.
	
	subdirectorio _ unDirectorio encontrarAlSubdirectorio: 'bibliografias'.
	
	Assert isTrue: (subdirectorio esElDirectorioLlamado: 'bibliografias').! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:55:19'!
test014_UnDirectorioIntentaAccederAUnSubdirectorioNoCreadoYSeLevantaUnaExcepcion
	
	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	
	Assert should: [unDirectorio encontrarAlSubdirectorio: 'bibliografias'] signal: Error  withDescription: 'Lo sentimos. El subdirectorio buscado no existe, intente nuevamente.'! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:55:29'!
test015_UnDirectorioPuedePedirLaInformacionDeLosArchivosQueContiene
	
	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	
	unDirectorio crearArchivoDeTextoDelUsuario: 'mamá' llamado: 'Compras' queContiene:'un kilo de tomate'.
	unDirectorio crearSubdirectorioDelUsuario: 'Tai' llamado: 'Jueguitos'.

	Assert that: unDirectorio informacionDeArchivosActuales isEqualTo: (OrderedCollection with:'directorioNuevo: '
	with:'Compras.txt   Lectura/   mamá.' with:'Jueguitos   Lectura/   Tai.')! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:55:46'!
test019_AUnDirectorioNoSeLePuedeSetearPermisosDeEjecucion
	
	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	
	Assert should: [unDirectorio deshabilitarPermisoDeEjecucion] signal:Error  withDescription: 'Accion inválida. Los directorios no poseen permisos de ejecucion.'! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 16:55:54'!
test020_AUnDirectorioSeLePuedeCambiarSuNombre
	
	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	
	unDirectorio cambiarNombreA: 'goodLucky'.
	
	Assert that: unDirectorio  nombre isEqualTo: 'goodLucky'.! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/16/2019 12:32:51'!
test022_UnDirectorioLevantaUnaExcepcionSiNoContieneUnArchivoSolicitado
	
	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	
	Assert should: [unDirectorio encontrarAlArchivo: 'pepe.txt'] signal:Error  withDescription: 'Lo sentimos. El archivo buscado no existe, intente nuevamente.'! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/17/2019 00:13:16'!
test023_UnDirectorioNoPuedeAlmacenarArchivosConNombresQueExistenEnSuContenido
	
	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	unDirectorio crearArchivoDeTextoDelUsuario:  'juan' llamado: 'fail'.
	
	Assert should:[unDirectorio crearArchivoDeTextoDelUsuario: 'juan' llamado: 'fail']  signal: Error withDescription: 'Lo sentimos. El nombre ingresado para el archivo ya existe. Intente con otro.'! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/16/2019 12:52:22'!
test024_UnDirectorioNoPuedeCrearArchivosConCaracteresInvalidos
	
	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	
	Assert should:[unDirectorio crearArchivoDeTextoDelUsuario: unDirectorio owner llamado: 'fail*']  signal: Error withDescription: 'El nombre ingresado para el archivo es invalido. Por favor, escriba el nombre con mayusculas, minusculas o numeros; signos de interrogacion o exclamacion; y que contenga entre 4 a 32 caracteres.'! !

!FileSystemTest methodsFor: 'directory tests ' stamp: 'FS 7/12/2019 20:24:02'!
test026_UnDirectorioPuedeEliminarSusArchivos
	
	| unDirectorio |
	unDirectorio _ factory unDirectorioNuevo .
	unDirectorio crearSubdirectorioDelUsuario: 'UnUsuario' llamado:'bibliografias'.
	
	unDirectorio eliminarSeguroElArchivo: 'bibliografias'.
	
	Assert isFalse: (unDirectorio contieneElArchivoLlamado: 'bibliografias.txt').! !


!classDefinition: #MiniTerminalUnixTest category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
TestCase subclass: #MiniTerminalUnixTest
	instanceVariableNames: 'factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
!MiniTerminalUnixTest commentStamp: '<historical>' prior: 0!
Habria que hacer un test para que el root no se elimine a sí mismo?!


!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:46:13'!
test013_UnaTerminalUnixComienzaEnElDirectorioRoot
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert isTrue: (unaTerminalUnix seEncuentraEnDirectorioRoot)! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:46:28'!
test014_UnaTerminalUnixCreaUnDirectorioEnSuDirectorioActual
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearSubdirectorioLlamado:'otroDirectorio'.	
	
	Assert isTrue: (unaTerminalUnix suDirectorioActualContieneA: 'otroDirectorio')! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:46:42'!
test015_UnaTerminalUnixNuevaNoTieneArchivosEnSuDirectorioRoot
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert that: unaTerminalUnix nombreDeArchivosEnDirectorioActual isEqualTo: OrderedCollection new.! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:46:53'!
test016_UnaTerminalUnixTieneUnArchivoLlamadoCarpetaNuevaEnSuDirectorioActual
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearSubdirectorioLlamado: 'carpetaNueva'.
	
	Assert isTrue: (unaTerminalUnix suDirectorioActualContieneA: 'carpetaNueva')! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:47:00'!
test017_UnaTerminalUnixCreaUnDirectorioEnSuDirectorioActual
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearSubdirectorioLlamado: 'otroDirectorio'. 
	
	Assert isTrue: (unaTerminalUnix suDirectorioActualContieneA: 'otroDirectorio')! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:47:10'!
test018_UnaTerminalUnixAccedeAUnSubdirectorioDeSuDirectorioActual
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearSubdirectorioLlamado: 'subdirectorio'.
	unaTerminalUnix accederAlSubdirectorio: 'subdirectorio'.
	
	Assert isTrue: (unaTerminalUnix estaEnElDirectorio:'subdirectorio')! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:47:24'!
test019_UnaTerminalUnixLevantaUnaExcepcionSiSeQuiereAccederAUnSubdirectorioNoExistente
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert should: [unaTerminalUnix accederAlSubdirectorio: 'subdirectorio'] 
					signal: Error 
						withDescription: 'Lo sentimos. El subdirectorio buscado no existe, intente nuevamente.'! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:47:34'!
test020_UnaTerminalUnixVuelveAlDirectorioRootCuandoSeLogueaOtroUsuario
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearSubdirectorioLlamado: 'subdirectorio'.
	unaTerminalUnix accederAlSubdirectorio: 'subdirectorio'.
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'root' yContraseña: 'admin123'.
	
	Assert isTrue: (unaTerminalUnix seEncuentraEnDirectorioRoot ).! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:47:55'!
test021_UnaTerminalUnixLevantaUnaExcepcionSiSeQuiereIrAlDirectorioPadreDelDirectorioRoot
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert should:[unaTerminalUnix volverADirectorioPadre]  
					signal:Error 
						withDescription: 'Usted se encuentra en el directorio principal, por lo que ya no hay más directorios.' ! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:48:02'!
test023_UnaTerminalUnixLeeElContenidoDeUnArchivoVacio
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearArchivoDeTextoLlamado: 'vacio'.
	
	Assert that: (unaTerminalUnix leerElArchivo:'vacio.txt') isEqualTo: ''! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:48:09'!
test024_UnaTerminalUnixLeeElContenidoDeUnArchivo
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearArchivoDeTextoLlamado:'atencion!!' queContiene:'El lunes 01/07 no habrá clases'.
	
	Assert that: (unaTerminalUnix leerElArchivo:'atencion!!.txt') isEqualTo: 'El lunes 01/07 no habrá clases'! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:48:18'!
test025_UnaTerminalUnixPuedeEscribirEnUnArchivo
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearArchivoDeTextoLlamado:'atencion!!' queContiene:'El lunes 01/07 no habrá clases, '.
	unaTerminalUnix escribir:'ya que no habrá transporte público.' enElArchivo:'atencion!!.txt' .
	
	Assert that: (unaTerminalUnix leerElArchivo:'atencion!!.txt') isEqualTo: 'El lunes 01/07 no habrá clases, ya que no habrá transporte público.'! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:48:26'!
test026_UnaTerminalUnixPuedeSobreescribirEnUnArchivo
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearArchivoDeTextoLlamado:'atencion!!' queContiene:'El lunes 01/07 no habrá clases, '.
	unaTerminalUnix sobrescribir:'Se levantó el paro. Mañana hay clases.' enElArchivo:'atencion!!.txt' .
	
	Assert that: (unaTerminalUnix leerElArchivo:'atencion!!.txt') isEqualTo: 'Se levantó el paro. Mañana hay clases.'! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'deg 7/19/2019 16:11:40'!
test027_UnaTerminalUnixPuedeAccederAUnSubdirectorio
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearSubdirectorioLlamado: 'directorioHijo'.
	unaTerminalUnix accederAlSubdirectorio: 'directorioHijo'.
	
	self flag: #observacion.
		"Lo ideal seria asertar que el nombre del directorio actual es el esperado."
	
	Assert isTrue: (unaTerminalUnix estaEnElDirectorio: 'directorioHijo')! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:48:55'!
test028_UnaTerminalUnixPuedeVolverAlDirectorioPadreDeSuDirectorioActual
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearSubdirectorioLlamado: 'directorioAbuelo'.
	unaTerminalUnix accederAlSubdirectorio: 'directorioAbuelo'.
	unaTerminalUnix volverADirectorioPadre .
	
	Assert isTrue: (unaTerminalUnix estaEnElDirectorio: 'directorioRoot')! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:49:05'!
test029_UnaTerminalUnixNoPuedeAccederAUnArchivoTextual
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	unaTerminalUnix crearSubdirectorioLlamado: 'directorioAbuelo'.
	unaTerminalUnix accederAlSubdirectorio: 'directorioAbuelo'.
	unaTerminalUnix crearArchivoDeTextoLlamado: 'JugosTang' queContiene: 'manzana, frutilla y maracuyá'.
	
	Assert should: [unaTerminalUnix accederAlSubdirectorio: 'JugosTang'.]
				 signal: Error 
					 withDescription: 'Lo sentimos. El subdirectorio buscado no existe, intente nuevamente.'! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/14/2019 16:06:45'!
test030_UnaTerminalLevantaUnaExcepcionCuandoSeQuiereLeerUnDirectorio

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDeRoot .
	unaTerminal crearSubdirectorioLlamado: 'directorio'.

	Assert should:[unaTerminal leerElArchivo: 'directorio']
				 signal: Error 
					withDescription: 'Lo sentimos. El archivo de texto buscado no existe, intente nuevamente.'! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/14/2019 17:16:22'!
test045_UnUsuarioPuedeVerLosPermisosDelDirectorioEnElQueSeEncuentra

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDeRoot .
	
	Assert that: unaTerminal permisosDeDirectorioActual isEqualTo: 'Lectura/Escritura/'.! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/14/2019 21:02:06'!
test046_UnUsuarioPuedeVerLaInformacioDeLosArchivosQueEstanEnElDirectorioEnElQueSeEncuentra

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConVariosArchivosCreados.	
	
	Assert that: unaTerminal informacionDeArchivosActuales isEqualTo: (OrderedCollection with:'directorioRoot: ' with:'idkb.txt   Lectura/Escritura/   root.' with:'directory   Lectura/Escritura/   root.' with:'alexandrite.txt   Lectura/Escritura/Ejecucion/   guest.').! !

!MiniTerminalUnixTest methodsFor: 'files tests' stamp: 'FS 7/17/2019 16:49:43'!
test056_UnaTerminalUnixPuedeGenerarStreamsQueContienenLaInformacionDeLosArchivosDelDirectorioActual
	
	| unaTerminal archivo contenidoEsperado |
	unaTerminal _ factory unaTerminalUnixConVariosArchivosCreados .
	archivo _ unaTerminal generarInformacionDelContenidoDelDirectorioActual.
	
	contenidoEsperado _ 'directorioRoot: 
idkb.txt   Lectura/Escritura/   root.
directory   Lectura/Escritura/   root.
alexandrite.txt   Lectura/Escritura/Ejecucion/   guest.
'.
	
	Assert that: archivo contents isEqualTo: contenidoEsperado.! !


!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:37:55'!
test001_UnaTerminalUnixComienzaSinUsuariosRegistrados
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert isTrue: unaTerminalUnix tieneUsuarios.! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:37:59'!
test002_UnaTerminalUnixNuevaTieneUsuariosRegistrados
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert that: unaTerminalUnix nombresDeUsuariosRegistrados isEqualTo: (Set with:'root' with:'guest').! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:38:07'!
test003_UnaTerminalUnixNuevaComienzaConElUsuarioRootRegistrado
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .	
	
	Assert isTrue: (unaTerminalUnix tieneAlUsuarioLlamado: 'root')! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:38:11'!
test004_UnaTerminalUnixNuevaComienzaConElUsuarioGuestRegistrado
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert isTrue: (unaTerminalUnix tieneAlUsuarioLlamado: 'guest')! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:38:17'!
test005_UnaTerminalUnixNuevaComienzaSinElUsuarioPepeRegistrado
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert isFalse: (unaTerminalUnix tieneAlUsuarioLlamado: 'Pepe')! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:38:29'!
test006_UnaTerminalUnixNuevaComienzaConDosUsuarios
	
	| unaTerminalUnix|
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert that: unaTerminalUnix cantidadDeUsuariosRegistrados isEqualTo: 2.! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:38:41'!
test007_UnaTerminalUnixNuevaNoComienzaConElUsuarioRootLogueado
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert isFalse: (unaTerminalUnix tieneLogueadoA: 'root').! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:38:54'!
test008_UnaTerminalUnixComienzaConElUsuarioGuestLogueado
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert isTrue: (unaTerminalUnix tieneLogueadoA: 'guest')! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:39:07'!
test009_UnaTerminalUnixLevantaUnaExcepcionCuandoUnUsuarioNoRegistradoQuiereIniciarSesion
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert   should: [unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'Chano' yContraseña: 'PanDeJamon']
					 signal: Error 
							withDescription: 'Fallo de inicio de sesion. usuario y/o contraseña incorrecto/s.'! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:56:36'!
test010_UnaTerminalUnixCambiaDeUsuarioCuandoSeLogueaUnUsuarioRegistrado
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	unaTerminalUnix registrarUnUsuarioConElNombre: 'juan'  yLaContraseña: 'paloBorracho'.
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'juan' yContraseña: 'paloBorracho' .
	
	Assert isTrue: (unaTerminalUnix tieneLogueadoA: 'juan').! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:56:41'!
test011_UnaTerminalUnixLevantaUnaExcepcionCuandoSeQuiereCrearUnUsuarioConUnNombreExistente
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .

	unaTerminalUnix registrarUnUsuarioConElNombre: 'juan' yLaContraseña: 'avestruz'.
	
	Assert should: [unaTerminalUnix registrarUnUsuarioConElNombre: 'juan' yLaContraseña:'otraContraseña' ] 
					signal: Error 
						withDescription: 'Lo sentimos. El nombre de usuario seleccionado ya existe. Por favor, intente con otro nombre.'! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:56:46'!
test012_UnaTerminalUnixEliminaAlUsuarioJuanDeSuRegistro
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	unaTerminalUnix registrarUnUsuarioConElNombre: 'juan' yLaContraseña: 'avestruz'.
	unaTerminalUnix eliminarAlUsuarioLlamado:'juan'.
	
	Assert isFalse: (unaTerminalUnix tieneAlUsuarioLlamado: 'juan').! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:40:05'!
test022_UnaTerminalUnixQuiereEliminarUnUsuarioLogueadoPeroLevantaUnaExcepcion

	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert should: [unaTerminalUnix eliminarAlUsuarioLlamado: 'Admin'.] 
					signal: Error 
						withDescription: 'Acción inválida. Usted no puede eliminar usuarios.'! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:40:19'!
test052_UnaTerminalUnixNoPuedeCrearUsuariosConNombresQueContienenCaracteresInvalidos
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	Assert should: [unaTerminalUnix registrarUnUsuarioConElNombre: 'qui to' yLaContraseña: '1234'.] 
					signal: Error 
						withDescription: 'Lo sentimos. El nombre ingresado es invalido. Por favor, escriba un nombre solo con letras minusculas o numeros, sin espacios, y que posea entre 4 a 16 caracteres.'! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:40:29'!
test053_UnaTerminalUnixNoPuedeCrearUsuariosConContaseñasQueContienenCaracteresInvalidos
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	Assert should: [unaTerminalUnix registrarUnUsuarioConElNombre: 'quito' yLaContraseña: '***'.] 
					signal: Error 
						withDescription: 'La contraseña ingresada no cumple con los requisitos del sistema. Solo debe contener letras minusculas y numeros; también debe contener entre 4 y 16 caracteres. Intente nuevamente.'! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:40:38'!
test054_UnaTerminalUnixNoPuedeEliminarAlUsuarioRoot
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	Assert should: [unaTerminalUnix eliminarAlUsuarioLlamado: 'root']
					signal: Error 
						withDescription: 'Lo sentimos. No es posible eliminar al usuario root o al usuario guest.'! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:57:02'!
test060_UnaTerminalUnixNoPuedeEliminarAlUsuarioGuest
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	Assert should: [unaTerminalUnix eliminarAlUsuarioLlamado: 'guest']
					signal: Error 
						withDescription: 'Lo sentimos. No es posible eliminar al usuario root o al usuario guest.'! !

!MiniTerminalUnixTest methodsFor: 'ussers tests' stamp: 'FS 7/17/2019 16:57:13'!
test061_AlCerrarUnaSesionSeIniciaLaSesionDeGuest
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	unaTerminalUnix cerrarSesion.
	
	Assert isTrue: (unaTerminalUnix tieneLogueadoA: 'guest')! !


!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/12/2019 11:01:14'!
test031_UnUsuarioRootPuedeModificarLosPermisosDeUnArchivo

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixNueva .
	unaTerminal crearSubdirectorioLlamado: 'directorio'.
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'root' yContraseña:'admin123'.
	
	unaTerminal deshabilitarPermisoDeLecturaAlArchivoLlamado:'directorio'.
	
	Assert that: (unaTerminal permisosActualesDelArchivo:'directorio') isEqualTo: ''.! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:01:08'!
test032_ElUsuarioOwnerDeUnArchivoPuedeModificarSusPermisos

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .

	unaTerminal habilitarPermisoDeEscrituraAlArchivoLlamado:'anime'.
	
	Assert that: (unaTerminal permisosActualesDelArchivo: 'anime') isEqualTo: 'Lectura/Escritura/'.! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:01:36'!
test033_UnUsuarioQueNoEsRootNiCreadorDeUnArchivoNoPuedeSetearlePermisosDeEscritura

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .
	
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	Assert should: [unaTerminal habilitarPermisoDeEscrituraAlArchivoLlamado: 'anime'] signal:Error  withDescription: 'Lo sentimos. Usted no puede setearle permisos a este archivo.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:01:58'!
test034_NingunUsuarioPuedeSetearPermisosDeEjecucionAUnDirectorio

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .
	
	Assert should: [unaTerminal habilitarPermisoDeEjecucionAlArchivoLlamado:'anime' .] signal:Error  withDescription: 'Accion inválida. Los directorios no poseen permisos de ejecucion.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:06:33'!
test035_NingunUsuarioPuedeQuitarPermisosDeEjecucionAUnDirectorio

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'root' yContraseña:'admin123'.
	
	Assert should: [unaTerminal deshabilitarPermisoDeEjecucionAlArchivoLlamado:'anime'] signal: Error  withDescription: 'Accion inválida. Los directorios no poseen permisos de ejecucion.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:06:07'!
test036_UnUsuarioRootPuedeSetearTodosLosPermisosDeUnArchivoDeTexto

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado . 
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'root' yContraseña: 'admin123'.

	unaTerminal habilitarPermisoDeEscrituraAlArchivoLlamado: 'saludos.txt'.
	unaTerminal habilitarPermisoDeLecturaAlArchivoLlamado: 'saludos.txt'.
	unaTerminal habilitarPermisoDeEjecucionAlArchivoLlamado: 'saludos.txt'.

	Assert that: (unaTerminal permisosActualesDelArchivo: 'saludos.txt') isEqualTo: 'Lectura/Escritura/Ejecucion/'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:07:15'!
test037_UnUsuarioOwnerPuedeQuitarTodosLosPermisosDeUnArchivoDeTexto

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado .
	
	unaTerminal deshabilitarPermisoDeLecturaAlArchivoLlamado: 'saludos.txt'.
	unaTerminal deshabilitarPermisoDeEjecucionAlArchivoLlamado: 'saludos.txt'.
	unaTerminal deshabilitarPermisoDeEscrituraAlArchivoLlamado: 'saludos.txt'.

	Assert that: (unaTerminal permisosActualesDelArchivo: 'saludos.txt') isEqualTo: ''! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:07:44'!
test038_UnUsuarioDistintoAlOwnerDelArchivoOAlRootNoPuedeAccederAUnDirectorioSinPermisosDeLectura

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .
	unaTerminal deshabilitarPermisoDeLecturaAlArchivoLlamado: 'anime'.
	
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.

	Assert should: [unaTerminal accederAlSubdirectorio: 'anime'] signal:Error withDescription:'Ups!! Acceso restringido.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:08:08'!
test039_UnUsuarioQueNoEsRootNiCreadorDeUnArchivoNoPuedeSetearlePermisosDeLectura

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
		
	Assert should: [unaTerminal habilitarPermisoDeLecturaAlArchivoLlamado: 'anime'] signal:Error  withDescription: 'Lo sentimos. Usted no puede setearle permisos a este archivo.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:08:24'!
test040_UnUsuarioQueNoEsRootNiCreadorDeUnArchivoNoPuedeSetearlePermisosDeEjecucion

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado .
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	Assert should: [unaTerminal habilitarPermisoDeEjecucionAlArchivoLlamado: 'saludos.txt'] signal:Error  withDescription: 'Lo sentimos. Usted no puede setearle permisos a este archivo.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:08:50'!
test041_UnUsuarioQueNoEsRootNiCreadorDeUnArchivoNoPuedeQuitarlePermisosDeEjecucion

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado .
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
		
	Assert should: [unaTerminal habilitarPermisoDeEjecucionAlArchivoLlamado: 'saludos.txt'] signal:Error  withDescription: 'Lo sentimos. Usted no puede setearle permisos a este archivo.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:09:11'!
test042_UnUsuarioQueNoEsRootNiCreadorDeUnArchivoNoPuedeQuitarlePermisosDeEscritura

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	Assert should: [unaTerminal deshabilitarPermisoDeEscrituraAlArchivoLlamado: 'anime'.] signal:Error  withDescription:'Lo sentimos. Usted no puede setearle permisos a este archivo.' ! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:09:27'!
test043_UnUsuarioQueNoEsRootNiCreadorDeUnArchivoNoPuedeQuitarlePermisosDeEjecucion

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado .
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	Assert should: [unaTerminal deshabilitarPermisoDeEjecucionAlArchivoLlamado: 'saludos.txt'.] signal:Error  withDescription: 'Lo sentimos. Usted no puede setearle permisos a este archivo.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 17:12:37'!
test044_UnUsuarioQueNoEsRootNiCreadorDeUnArchivoNoPuedeQuitarlePermisosDeLectura

	| unaTerminal |
	unaTerminal _ factory unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado .
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	Assert should: [unaTerminal deshabilitarPermisoDeLecturaAlArchivoLlamado: 'saludos.txt'.] signal:Error  withDescription:'Lo sentimos. Usted no puede setearle permisos a este archivo.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:10:28'!
test047_UnaTerminalUnixLevantaExcepcionSiSeQuiereLeerUnArchivoSinPermisoDeLectura

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado .
	unaTerminalUnix deshabilitarPermisoDeLecturaAlArchivoLlamado: 'saludos.txt'.
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	Assert should: [unaTerminalUnix leerElArchivo:'saludos.txt'] signal: Error withDescription:'Ups!! Accion restringida.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:11:02'!
test048_UnaTerminalUnixLevantaExcepcionSiSeQuiereEscribirUnArchivoSinPermisoDeEscritura

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado .
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	Assert should: [unaTerminalUnix escribir: 'no sé' enElArchivo: 'saludos.txt'] signal: Error withDescription:'Ups!! Accion restringida.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:12:19'!
test049_UnUsuarioDeLaTerminalUnixPuedeModificarElNombreDeUnArchivoConPermisosDeEscritura

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .
	unaTerminalUnix habilitarPermisoDeEscrituraAlArchivoLlamado: 'anime'.
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.

	unaTerminalUnix cambiarNombreDe:'anime' a: 'cosasOtakus'.
	
	Assert isTrue: (unaTerminalUnix suDirectorioActualContieneA: 'cosasOtakus').! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:13:02'!
test050_UnUsuarioDeLaTerminalUnixNoPuedeModificarElNombreDeUnArchivoSinPermisosDeEscritura

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .	
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	Assert should: [unaTerminalUnix cambiarNombreDe:'anime' a: 'cosasOtakus'] signal: Error withDescription:'Ups!! Accion restringida.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:13:37'!
test051_UnUsuarioDeLaTerminalUnixNoPuedeCrearArchivosEnUnDirectorioSinPermisosDeEscritura

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .	
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	unaTerminalUnix accederAlSubdirectorio: 'anime'.

	Assert should: [unaTerminalUnix crearSubdirectorioLlamado: 'high'] signal: Error withDescription:'Ups!! Accion restringida.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:14:48'!
test055_UnaTerminalPuedeEjecutarArchivosDeTextoSiTienenPermisosDeEjecucion

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado .
	unaTerminalUnix escribir: '((12500/5*8)+120)*peso'enElArchivo:'saludos.txt'.
	unaTerminalUnix habilitarPermisoDeEjecucionAlArchivoLlamado: 'saludos.txt'.
	
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	Assert that: (unaTerminalUnix ejecutarElArchivo:'saludos.txt') isEqualTo: 20120*peso.! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:16:18'!
test057_UnaTerminalPuedeEliminarUnArchivoSiTienePermisosDeEscritura

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConVariosArchivosCreados .
	
	unaTerminalUnix eliminarElArchivoLlamado:'alexandrite.txt'.
	
	Assert isFalse: (unaTerminalUnix suDirectorioActualContieneA: 'alexandrite.txt').! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:16:34'!
test058_UnaTerminalLevantaUnaExcepcionSiSeQuiereEliminarUnArchivoSinPermisosDeEscritura

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	unaTerminalUnix crearArchivoDeTextoLlamado: 'malcolm'.
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña: 'guest'.
	
	Assert should: [unaTerminalUnix eliminarElArchivoLlamado:'malcolm.txt'] signal: Error withDescription: 'Ups!! Accion restringida.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:16:57'!
test059_UnaTerminalLevantaUnaExcepcionSiSeEjecutaUnArchivoSinPermisosDeEjecucion

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado .
	unaTerminalUnix escribir: '((12500/5*8)+120)*peso'enElArchivo:'saludos.txt'.
		
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	
	Assert should:[unaTerminalUnix ejecutarElArchivo:'saludos.txt'] signal: Error withDescription: 'Ups!! Accion restringida.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:17:32'!
test062_UnUsuarioDeLaTerminalUnixNoPuedeCrearArchivosDeTextoEnUnDirectorioSinPermisosDeEscritura

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .
	
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	unaTerminalUnix accederAlSubdirectorio: 'anime'.

	Assert should: [unaTerminalUnix crearArchivoDeTextoLlamado: 'high'] signal: Error withDescription:'Ups!! Accion restringida.'! !

!MiniTerminalUnixTest methodsFor: 'filesPermissions test' stamp: 'FS 7/17/2019 13:18:04'!
test063_UnUsuarioDeLaTerminalUnixNoPuedeCrearArchivosDeTextoEscritosEnUnDirectorioSinPermisosDeEscritura

	| unaTerminalUnix |
	
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado .
	
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña:'guest'.
	unaTerminalUnix accederAlSubdirectorio: 'anime'.

	Assert should: [unaTerminalUnix crearArchivoDeTextoLlamado: 'high' queContiene:'hola!!'] signal: Error withDescription:'Ups!! Accion restringida.'
! !


!MiniTerminalUnixTest methodsFor: 'setUp' stamp: 'FS 6/20/2019 16:36:17'!
setUp

	factory _ FactoryDeTest new.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MiniTerminalUnixTest class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
MiniTerminalUnixTest class
	instanceVariableNames: ''!

!MiniTerminalUnixTest class methodsFor: 'as yet unclassified' stamp: 'FS 7/17/2019 16:59:30'!
testEnArchivoTXTReal
	
	| unaTerminal |
	
	unaTerminal _ FactoryDeTest new  unaTerminalUnixConVariosArchivosCreados .
	
	unaTerminal generarArchivoRealConInformacionDelContenido .
	! !


!classDefinition: #PermisoTest category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
TestCase subclass: #PermisoTest
	instanceVariableNames: 'factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!PermisoTest methodsFor: 'setUp' stamp: 'FS 7/3/2019 21:21:51'!
setUp

	factory _ FactoryDeTest new.! !


!PermisoTest methodsFor: 'permissions test' stamp: 'deg 7/19/2019 15:02:09'!
test001_UnPermisoPuedeSerDeTipoEscritura

	| unPermiso |
	
	self flag: #observaciones.
		"La palabra permiso en el nombre del mensaje es redundante, ya que es la clase Permiso quien recibe el mensaje.
		Quedaria mas simple enviandole a la clase el mensaje #deEscritura"
	
	unPermiso _ Permiso generarPermisoDeEscritura .
	
	Assert isTrue: unPermiso esDeEscritura.! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/6/2019 15:01:49'!
test002_UnPermisoPuedeSerDeTipoLectura

	| unPermiso |
	unPermiso _ Permiso generarPermisoDeLectura .
	
	Assert isTrue: unPermiso esDeLectura.! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/6/2019 15:03:04'!
test003_UnPermisoPuedeSerDeTipoEjecucion

	| unPermiso |
	unPermiso _ Permiso generarPermisoDeEjecucion .
	
	Assert isTrue: unPermiso esDeEjecucion.! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/6/2019 15:43:26'!
test004_UnPermisoDeTipoEscrituraComienzaDeshabilitado

	| unPermiso |
	unPermiso _ Permiso generarPermisoDeEscritura .
	
	Assert isFalse: unPermiso estaHabilitado .! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/6/2019 15:03:47'!
test005_UnPermisoDeTipoEjecucionComienzaDeshabilitado

	| unPermiso |
	unPermiso _ Permiso generarPermisoDeEjecucion .
	
	Assert isFalse: unPermiso estaHabilitado .! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/6/2019 15:04:01'!
test006_UnPermisoDeTipoLecturaComienzaHabilitado

	| unPermiso |
	unPermiso _ Permiso generarPermisoDeLectura .
	
	Assert isTrue: unPermiso estaHabilitado .! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/17/2019 16:57:27'!
test007_UnPermisoDeTipoEscrituraPuedeHabilitarse
	
	| unPermiso |
	unPermiso _ Permiso generarPermisoDeEscritura .
	
	unPermiso habilitarPermiso .
	
	Assert isTrue: unPermiso estaHabilitado .! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/17/2019 16:57:33'!
test008_UnPermisoDeTipoEjecucionPuedeHabilitarse
	
	| unPermiso |
	unPermiso _ Permiso generarPermisoDeEjecucion .
	
	unPermiso habilitarPermiso .
	
	Assert isTrue: unPermiso estaHabilitado .! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/17/2019 16:57:42'!
test009_UnPermisoDeTipoLecturaPuedeHabilitarse
	
	| unPermiso |
	unPermiso _ Permiso generarPermisoDeLectura .
	
	unPermiso habilitarPermiso .
	
	Assert isTrue: unPermiso estaHabilitado .! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/17/2019 16:57:50'!
test010_UnPermisoDeTipoEscrituraPuedeDeshabilitarse
	
	| unPermiso |
	unPermiso _ Permiso generarPermisoDeEscritura .
	
	unPermiso habilitarPermiso .
	unPermiso deshabilitarPermiso .
	
	Assert isFalse: unPermiso estaHabilitado .! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/17/2019 16:57:56'!
test011_UnPermisoDeTipoEjecucionPuedeDeshabilitarse
	
	| unPermiso |
	unPermiso _ Permiso generarPermisoDeEjecucion .
	
	unPermiso habilitarPermiso .
	unPermiso deshabilitarPermiso .
	
	Assert isFalse: unPermiso estaHabilitado .! !

!PermisoTest methodsFor: 'permissions test' stamp: 'FS 7/17/2019 16:58:03'!
test012_UnPermisoDeTipoLecturaPuedeDeshabilitarse
	
	| unPermiso |
	unPermiso _ Permiso generarPermisoDeLectura .
	
	unPermiso deshabilitarPermiso .
	
	Assert isFalse: unPermiso estaHabilitado .! !


!classDefinition: #UsuariosTest category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
TestCase subclass: #UsuariosTest
	instanceVariableNames: 'factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
!UsuariosTest commentStamp: '<historical>' prior: 0!
Están mal testeados?!


!UsuariosTest methodsFor: 'setUp' stamp: 'deg 7/19/2019 15:12:27'!
setUp

	self flag: #buenisimoMeSacoElSombrero.

	factory _ FactoryDeTest new.! !


!UsuariosTest methodsFor: 'usser tests' stamp: 'deg 7/19/2019 15:08:11'!
test001_AUnUsuarioSeLeAsignaElNombreJuan
	
	| unUsuario |
	
	unUsuario _ factory unUsuarioConElNombreJuanYLaContraseñaPanDeJamon .
	
	self flag: #observacion. "En el mensaje #nombreDeUsuario, el DeUsuario es redundante. El mensaje podria llamarse simplemente #nombre"
	
	Assert that: unUsuario nombreDeUsuario isEqualTo: 'Juan'! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'FS 7/17/2019 16:42:38'!
test002_AUnUsuarioSeLeAsignaLaContraseñaPanDeJamon
	
	| unUsuario |
	unUsuario _ factory unUsuarioConElNombreJuanYLaContraseñaPanDeJamon.
	
	Assert that: unUsuario contraseña  isEqualTo: 'PanDeJamon'! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'FS 7/17/2019 16:58:15'!
test003_UnUsuarioRootPuedeCrearUnoNuevo
	
	| unaTerminalUnix usuarioRoot |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	usuarioRoot _ unaTerminalUnix usuarioActual .	
	
	Assert isTrue: usuarioRoot puedeCrearYEliminarUsuarios.! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'deg 7/19/2019 15:28:16'!
test004_UnUsuarioNormalNoPuedeCrearUnoNuevo
	
	| unUsuario |
	unUsuario _ factory unUsuarioConElNombreChanoYContraseñaLaRenga .	
	
	self flag: #observacion.
		"Tal vez un nombre mas conveniente sea #puedeAdministrarUsuarios que es mas general"
	
	Assert isFalse: unUsuario puedeCrearYEliminarUsuarios.! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'FS 7/17/2019 16:43:00'!
test005_UnUsuarioRootPuedeEliminarAOtro
	
	| unUsuarioRoot |
	unUsuarioRoot _ factory unUsuarioRoot.	
	
	Assert isTrue: unUsuarioRoot puedeCrearYEliminarUsuarios .! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'FS 7/17/2019 16:43:10'!
test006_UnUsuarioNormalNoPuedeEliminarAOtro
	
	| unUsuarioNormal |
	unUsuarioNormal _ factory unUsuarioConElNombreChanoYContraseñaLaRenga .	
	
	Assert isFalse: unUsuarioNormal puedeCrearYEliminarUsuarios .! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'FS 7/17/2019 16:58:25'!
test007_UnUsuarioRootCreaAOtroEnUnaTerminalUnix
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	unaTerminalUnix registrarUnUsuarioConElNombre: 'chano' yLaContraseña: 'LaRenga'.
	
	Assert isTrue: (unaTerminalUnix tieneAlUsuarioLlamado: 'chano')! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'FS 7/17/2019 16:43:30'!
test008_UnUsuarioNormalCreaAOtroEnUnaTerminalUnixYEstaLevantaUnaExcepcion
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert should: [unaTerminalUnix registrarUnUsuarioConElNombre: 'Chano' yLaContraseña: '123'] 
				signal: Error 
					  withDescription: 'Acción inválida. Usted no puede crear usuarios.'! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'FS 7/17/2019 16:58:31'!
test009_UnUsuarioRootEliminaAOtroEnUnaTerminalUnix
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	unaTerminalUnix registrarUnUsuarioConElNombre: 'chano' yLaContraseña: 'LaRenga'.
	unaTerminalUnix eliminarAlUsuarioLlamado: 'chano'.
	
	Assert isFalse: (unaTerminalUnix tieneAlUsuarioLlamado: 'chano').! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'FS 7/17/2019 16:43:52'!
test010_UnUsuarioRootEliminaAOtroQueNoExisteEnUnaTerminalUnixYSeLevantaUnaExcepcion
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .	
	
	Assert should: [unaTerminalUnix eliminarAlUsuarioLlamado: 'Chano']
					signal: Error 
					 		withDescription: 'Lo sentimos. El usuario que desea eliminar no existe en el sistema.'! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'FS 7/17/2019 16:43:58'!
test011_UnUsuarioComunEliminaAOtroEnUnaTerminalUnixPeroEstaLevantaUnaExcepcion
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixNueva .
	
	Assert should: [unaTerminalUnix eliminarAlUsuarioLlamado: 'guest']
				 signal:  Error 
					withDescription: 'Acción inválida. Usted no puede eliminar usuarios.'! !

!UsuariosTest methodsFor: 'usser tests' stamp: 'FS 7/17/2019 16:58:41'!
test012_UnUsuarioRootNoPuedeCrearDosUsuariosIguales
	
	| unaTerminalUnix |
	unaTerminalUnix _ factory unaTerminalUnixConLaSesionDeRoot .
	
	unaTerminalUnix registrarUnUsuarioConElNombre: 'pepe' yLaContraseña: 'pepe123'.
	
	Assert should: [unaTerminalUnix registrarUnUsuarioConElNombre: 'pepe' yLaContraseña:'akademia' ]
				 signal:  Error 
					withDescription:'Lo sentimos. El nombre de usuario seleccionado ya existe. Por favor, intente con otro nombre.'! !


!classDefinition: #CorroboradorDeCaracteres category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #CorroboradorDeCaracteres
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!CorroboradorDeCaracteres methodsFor: 'accessing' stamp: 'FS 7/12/2019 16:22:40'!
caracteresEspecialesPermitidos
	
	^'¿?!!¡.'! !

!CorroboradorDeCaracteres methodsFor: 'accessing' stamp: 'FS 7/8/2019 17:35:36'!
caracteresValidosParaArchivos
	
	^self letrasMayusculas , self letrasMinusculas , self numeros, self caracteresEspecialesPermitidos .! !

!CorroboradorDeCaracteres methodsFor: 'accessing' stamp: 'FS 7/8/2019 16:24:26'!
caracteresValidosParaContraseñas
	
	^self letrasMinusculas, self letrasMayusculas, self numeros.! !

!CorroboradorDeCaracteres methodsFor: 'accessing' stamp: 'FS 7/8/2019 16:24:07'!
caracteresValidosParaNombresDeUsuarios
	
	^self letrasMinusculas, self numeros.! !

!CorroboradorDeCaracteres methodsFor: 'accessing' stamp: 'FS 7/8/2019 16:26:16'!
letrasMayusculas
	
	^'ABCDEFGHIJKLMNÑOPQRSTUVWXYZ'! !

!CorroboradorDeCaracteres methodsFor: 'accessing' stamp: 'FS 7/8/2019 17:36:06'!
letrasMinusculas
	
	^'abcdefghijklmnñopqrstuvwxyz'! !

!CorroboradorDeCaracteres methodsFor: 'accessing' stamp: 'FS 7/12/2019 16:22:15'!
numeros
	
	^'0123456789'.! !


!CorroboradorDeCaracteres methodsFor: 'testing private' stamp: 'FS 7/15/2019 00:13:36'!
tieneAPartirDeCuatroCaracteres: unNombreDeUsuarioOContraseña

	^unNombreDeUsuarioOContraseña size >= 4.! !

!CorroboradorDeCaracteres methodsFor: 'testing private' stamp: 'FS 7/15/2019 00:09:03'!
tieneCaracteresValidosElNombreDeArchivo: nombreDeUnArchivo 
		
	^nombreDeUnArchivo allSatisfy: [:unCaracter | self caracteresValidosParaArchivos includes: unCaracter ] ! !

!CorroboradorDeCaracteres methodsFor: 'testing private' stamp: 'FS 7/15/2019 00:07:20'!
tieneCaracteresValidosElNombreDeUsuario: nombreDeUnUsuario 
																						
	^nombreDeUnUsuario allSatisfy: [:unCaracter | self caracteresValidosParaNombresDeUsuarios includes: unCaracter ] ! !

!CorroboradorDeCaracteres methodsFor: 'testing private' stamp: 'FS 7/15/2019 00:01:48'!
tieneCaracteresValidosLaContraseña: unaContraseña
																					
	^unaContraseña allSatisfy: [: unCaracter | self caracteresValidosParaContraseñas includes: unCaracter ]! !

!CorroboradorDeCaracteres methodsFor: 'testing private' stamp: 'FS 7/15/2019 00:13:17'!
tieneHastaDiesciseisCaracteres: unNombreDeUsuarioOContraseña
	
	^unNombreDeUsuarioOContraseña size <= 16.! !

!CorroboradorDeCaracteres methodsFor: 'testing private' stamp: 'FS 7/15/2019 00:16:43'!
tieneHastaTreintaYDosCaracteres: nombreDeUnArchivo

	^nombreDeUnArchivo size <= 32! !


!CorroboradorDeCaracteres methodsFor: 'testing' stamp: 'FS 7/15/2019 00:17:30'!
tieneElTamañoPermitido: unNombreDeUsuarioOContraseña 
	
	^self tieneAPartirDeCuatroCaracteres: unNombreDeUsuarioOContraseña :: and: (self tieneHastaDiesciseisCaracteres: unNombreDeUsuarioOContraseña).! !

!CorroboradorDeCaracteres methodsFor: 'testing' stamp: 'FS 7/15/2019 00:16:29'!
tieneElTamañoPermitidoParaNombresDeArchivos: nombreDeUnArchivo 
	
	^self tieneAPartirDeCuatroCaracteres: nombreDeUnArchivo  :: and: (self tieneHastaTreintaYDosCaracteres: nombreDeUnArchivo)! !


!CorroboradorDeCaracteres methodsFor: 'valuate private' stamp: 'FS 7/15/2019 00:01:25'!
esValidaLaContraseña: unaContraseña 
	
	^ (self tieneCaracteresValidosLaContraseña: unaContraseña :: and: (self tieneElTamañoPermitido: unaContraseña)) 
																					ifFalse:[ErroresTerminalUnix errorDeContraseñaInvalida]! !

!CorroboradorDeCaracteres methodsFor: 'valuate private' stamp: 'FS 7/15/2019 00:08:01'!
esValidoElNombreDeUsuario: nombreDeUnUsuario 
	
	(self tieneCaracteresValidosElNombreDeUsuario: nombreDeUnUsuario :: and: (self tieneElTamañoPermitido:nombreDeUnUsuario))
											 											ifFalse:[ErroresTerminalUnix errorDeNombreDeUsuarioInvalido] ! !


!CorroboradorDeCaracteres methodsFor: 'valuate' stamp: 'FS 7/15/2019 00:08:51'!
esValidoElNombreDeArchivo: nombreDeUnArchivo 
	
	^(self tieneCaracteresValidosElNombreDeArchivo: nombreDeUnArchivo :: and: (self tieneElTamañoPermitidoParaNombresDeArchivos: nombreDeUnArchivo)) 
										ifFalse: [ErroresTerminalUnix errorDeNombreDeArchivoInvalido].! !

!CorroboradorDeCaracteres methodsFor: 'valuate' stamp: 'FS 7/12/2019 11:45:52'!
esValidoElUsuario: unUsuario 
	
	self esValidoElNombreDeUsuario: unUsuario nombreDeUsuario .
	self esValidaLaContraseña: unUsuario contraseña.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CorroboradorDeCaracteres class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
CorroboradorDeCaracteres class
	instanceVariableNames: ''!

!CorroboradorDeCaracteres class methodsFor: 'as yet unclassified' stamp: 'FS 7/8/2019 16:09:27'!
esValidaLaContraseñaDeUsuario: aString 
	
	^self new esValidaLaContraseña: aString 
	! !

!CorroboradorDeCaracteres class methodsFor: 'as yet unclassified' stamp: 'FS 7/14/2019 16:17:04'!
esValidoElNombreDeArchivo: unNombreDeArchivo 
	
	^self new esValidoElNombreDeArchivo: unNombreDeArchivo .! !

!CorroboradorDeCaracteres class methodsFor: 'as yet unclassified' stamp: 'FS 7/14/2019 16:26:23'!
esValidoElNombreDeUsuario: unNombreDeUsuario 
	
	^self new esValidoElNombreDeUsuario: unNombreDeUsuario .! !

!CorroboradorDeCaracteres class methodsFor: 'as yet unclassified' stamp: 'FS 7/12/2019 11:45:17'!
esValidoElUsuario: unUsuario

	self new esValidoElUsuario: unUsuario .! !


!classDefinition: #ErroresTerminalUnix category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #ErroresTerminalUnix
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!ErroresTerminalUnix methodsFor: 'access errors' stamp: 'FS 7/14/2019 23:46:43'!
errorDeAccesoRestringido

	self error: 'Ups!! Acceso restringido.'! !


!ErroresTerminalUnix methodsFor: 'actions errors' stamp: 'FS 7/14/2019 23:41:54'!
errorDeAccionRestringida
	
	self error: 'Ups!! Accion restringida.'! !


!ErroresTerminalUnix methodsFor: 'usser errors' stamp: 'FS 7/17/2019 16:28:50'!
errorDeContraseñaInvalida
	
	self error:'La contraseña ingresada no cumple con los requisitos del sistema. Solo debe contener letras minusculas y numeros; también debe contener entre 4 y 16 caracteres. Intente nuevamente.'! !

!ErroresTerminalUnix methodsFor: 'usser errors' stamp: 'FS 7/14/2019 23:50:50'!
errorDeCrearUsuarioConNombreYaRegistrado

	self error: 'Lo sentimos. El nombre de usuario seleccionado ya existe. Por favor, intente con otro nombre.'! !

!ErroresTerminalUnix methodsFor: 'usser errors' stamp: 'FS 7/14/2019 23:49:24'!
errorDeEliminacionDeUsuarioInexistente
	
	self error: 'Lo sentimos. El usuario que desea eliminar no existe en el sistema.'! !

!ErroresTerminalUnix methodsFor: 'usser errors' stamp: 'FS 7/17/2019 16:29:03'!
errorDeInicioDeSesion
	
	self error:'Fallo de inicio de sesion. usuario y/o contraseña incorrecto/s.'! !

!ErroresTerminalUnix methodsFor: 'usser errors' stamp: 'FS 7/16/2019 00:43:03'!
errorDeIntentarEliminarAlUsuarioRootOAlGuest
	
	self error:'Lo sentimos. No es posible eliminar al usuario root o al usuario guest.'! !

!ErroresTerminalUnix methodsFor: 'usser errors' stamp: 'FS 7/15/2019 00:00:09'!
errorDeNombreDeUsuarioInvalido
	
	self error:'Lo sentimos. El nombre ingresado es invalido. Por favor, escriba un nombre solo con letras minusculas o numeros, sin espacios, y que posea entre 4 a 16 caracteres.'! !

!ErroresTerminalUnix methodsFor: 'usser errors' stamp: 'FS 7/14/2019 23:56:19'!
errorNoPuedeCrearUsuarios
	
	self error:  'Acción inválida. Usted no puede crear usuarios.'! !

!ErroresTerminalUnix methodsFor: 'usser errors' stamp: 'FS 7/14/2019 23:55:23'!
errorNoPuedeEliminarUsuarios
	
	self error: 'Acción inválida. Usted no puede eliminar usuarios.'! !


!ErroresTerminalUnix methodsFor: 'permissions errors' stamp: 'FS 7/14/2019 23:53:08'!
errorDeIntentoDeSetearLosPermisosSinSerRootUOwner

	self error: 'Lo sentimos. Usted no puede setearle permisos a este archivo.'! !

!ErroresTerminalUnix methodsFor: 'permissions errors' stamp: 'FS 7/15/2019 00:20:54'!
errorDeSetearPermisoDeEjecucionADirectorio
	
	self error: 'Accion inválida. Los directorios no poseen permisos de ejecucion.'! !


!ErroresTerminalUnix methodsFor: 'file errors' stamp: 'FS 7/16/2019 12:34:33'!
errorDeArchivoDeTextoNoEncontrado
	
	self error:'Lo sentimos. El archivo de texto buscado no existe, intente nuevamente.'! !

!ErroresTerminalUnix methodsFor: 'file errors' stamp: 'FS 7/16/2019 12:34:44'!
errorDeArchivoUnixNoEncontrado
	
	self error:'Lo sentimos. El archivo buscado no existe, intente nuevamente.'! !

!ErroresTerminalUnix methodsFor: 'file errors' stamp: 'FS 7/14/2019 23:54:25'!
errorDeIntentarAccederAlDirectorioPadreDelDirectorioRoot
	
	self error:  'Usted se encuentra en el directorio principal, por lo que ya no hay más directorios.' ! !

!ErroresTerminalUnix methodsFor: 'file errors' stamp: 'FS 7/14/2019 23:39:46'!
errorDeNombreDeArchivoExistente
	
	self error: 'Lo sentimos. El nombre ingresado para el archivo ya existe. Intente con otro.'! !

!ErroresTerminalUnix methodsFor: 'file errors' stamp: 'FS 7/14/2019 23:59:26'!
errorDeNombreDeArchivoInvalido
	
	self error:'El nombre ingresado para el archivo es invalido. Por favor, escriba el nombre con mayusculas, minusculas o numeros; signos de interrogacion o exclamacion; y que contenga entre 4 a 32 caracteres.'! !

!ErroresTerminalUnix methodsFor: 'file errors' stamp: 'FS 7/16/2019 12:34:20'!
errorDeSubdirectorioNoEncontrado
	
	self error: 'Lo sentimos. El subdirectorio buscado no existe, intente nuevamente.'! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ErroresTerminalUnix class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
ErroresTerminalUnix class
	instanceVariableNames: ''!

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:46:13'!
errorDeAccesoRestringido
	
	self new errorDeAccesoRestringido .! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:41:47'!
errorDeAccionRestringida

	self new errorDeAccionRestringida .! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 12:34:34'!
errorDeArchivoDeTextoNoEncontrado
	
	self new errorDeArchivoDeTextoNoEncontrado.! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 12:34:44'!
errorDeArchivoUnixNoEncontrado
	
	self new errorDeArchivoUnixNoEncontrado ! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:57:29'!
errorDeContraseñaInvalida

	self new errorDeContraseñaInvalida .! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:50:43'!
errorDeCrearUsuarioConNombreYaRegistrado
	
	self new errorDeCrearUsuarioConNombreYaRegistrado .! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:49:14'!
errorDeEliminacionDeUsuarioInexistente
	
	self new errorDeEliminacionDeUsuarioInexistente ! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:45:03'!
errorDeInicioDeSesion

	self new errorDeInicioDeSesion ! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:54:18'!
errorDeIntentarAccederAlDirectorioPadreDelDirectorioRoot
	
	self new errorDeIntentarAccederAlDirectorioPadreDelDirectorioRoot ! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 00:40:21'!
errorDeIntentarEliminarAlUsuarioRootOAlGuest

	self new errorDeIntentarEliminarAlUsuarioRootOAlGuest .! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:52:58'!
errorDeIntentoDeSetearLosPermisosSinSerRootUOwner
	
	self new errorDeIntentoDeSetearLosPermisosSinSerRootUOwner ! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:39:31'!
errorDeNombreDeArchivoExistente
	
	self new errorDeNombreDeArchivoExistente 
	! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:59:20'!
errorDeNombreDeArchivoInvalido
	
	self new errorDeNombreDeArchivoInvalido ! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/15/2019 00:00:03'!
errorDeNombreDeUsuarioInvalido
	
	self new errorDeNombreDeUsuarioInvalido ! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/15/2019 00:20:46'!
errorDeSetearPermisoDeEjecucionADirectorio
	
	self new errorDeSetearPermisoDeEjecucionADirectorio .! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 12:34:21'!
errorDeSubdirectorioNoEncontrado
	
	self new errorDeSubdirectorioNoEncontrado ! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:56:11'!
errorNoPuedeCrearUsuarios

	self new  errorNoPuedeCrearUsuarios ! !

!ErroresTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 7/14/2019 23:55:15'!
errorNoPuedeEliminarUsuarios
	
	self new errorNoPuedeEliminarUsuarios ! !


!classDefinition: #EstadoParaAlmacenarNuevosArchivos category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadoParaAlmacenarNuevosArchivos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstadoParaAlmacenarNuevosArchivos methodsFor: 'actions' stamp: 'FS 7/17/2019 00:00:08'!
agregarElArchivo: unArchivoUnix para: unDirectorio 

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoParaAlmacenarNuevosArchivos class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaAlmacenarNuevosArchivos class
	instanceVariableNames: ''!

!EstadoParaAlmacenarNuevosArchivos class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:30:53'!
canHandle: unDirectorio with: nombreDelArchivo

	self subclassResponsibility ! !


!EstadoParaAlmacenarNuevosArchivos class methodsFor: 'instance creation' stamp: 'FS 7/17/2019 00:10:37'!
existeElArchivo: unArchivoUnix en: unDirectorio 
	
	^(self allSubclasses detect: [:unEstado| unEstado canHandle: unDirectorio with: unArchivoUnix ]) new! !


!classDefinition: #ExisteElArchivo category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaAlmacenarNuevosArchivos subclass: #ExisteElArchivo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!ExisteElArchivo methodsFor: 'actions' stamp: 'FS 7/17/2019 16:29:26'!
agregarElArchivo: unArchivoUnix para: unDirectorio 

	ErroresTerminalUnix errorDeNombreDeArchivoExistente.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ExisteElArchivo class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
ExisteElArchivo class
	instanceVariableNames: ''!

!ExisteElArchivo class methodsFor: 'handling' stamp: 'FS 7/17/2019 00:11:11'!
canHandle: unDirectorio with: unArchivoUnix 
	
	^unDirectorio contieneElArchivoLlamado: unArchivoUnix nombre .
! !


!classDefinition: #NoExisteElArchivo category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaAlmacenarNuevosArchivos subclass: #NoExisteElArchivo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!NoExisteElArchivo methodsFor: 'actions' stamp: 'FS 7/17/2019 12:57:38'!
agregarElArchivo: unArchivoUnix para: unDirectorio 
	
	unDirectorio añadirSeguroElArchivo: unArchivoUnix.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoExisteElArchivo class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
NoExisteElArchivo class
	instanceVariableNames: ''!

!NoExisteElArchivo class methodsFor: 'handling' stamp: 'FS 7/17/2019 00:11:26'!
canHandle: unDirectorio with: unArchivoUnix
	
	^(unDirectorio contieneElArchivoLlamado: unArchivoUnix nombre) not.! !


!classDefinition: #EstadoParaEjecutarArchivos category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadoParaEjecutarArchivos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstadoParaEjecutarArchivos methodsFor: 'actions' stamp: 'FS 7/11/2019 16:57:34'!
ejecutarElArchivo: unArchivoDeTexto 

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoParaEjecutarArchivos class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaEjecutarArchivos class
	instanceVariableNames: ''!

!EstadoParaEjecutarArchivos class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:32:24'!
canHandle: unUsuario with: unArchivoDeTexto 

	self subclassResponsibility ! !


!EstadoParaEjecutarArchivos class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 11:32:10'!
elUsuario: unUsuario puedeEjecutar: unArchivoDeTexto 
	
	
	^(self allSubclasses detect: [:unEstado | unEstado canHandle: unUsuario with: unArchivoDeTexto ]) new
	! !


!classDefinition: #NoPuedeEjecutarse category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaEjecutarArchivos subclass: #NoPuedeEjecutarse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!NoPuedeEjecutarse methodsFor: 'actions' stamp: 'FS 7/14/2019 23:41:33'!
ejecutarElArchivo: unArchivoDeTexto 
	
	ErroresTerminalUnix errorDeAccionRestringida! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoPuedeEjecutarse class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
NoPuedeEjecutarse class
	instanceVariableNames: ''!

!NoPuedeEjecutarse class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:32:40'!
canHandle: unUsuario with: unArchivoDeTexto 
	
	^(unUsuario esElRootOElOwnerDe: unArchivoDeTexto :: or: unArchivoDeTexto tienePermisosDeEjecucion )not! !


!classDefinition: #PuedeEjecutarse category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaEjecutarArchivos subclass: #PuedeEjecutarse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!PuedeEjecutarse methodsFor: 'actions' stamp: 'FS 7/16/2019 12:53:47'!
ejecutarElArchivo: unArchivoDeTexto 
	
	^unArchivoDeTexto ejecutar .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PuedeEjecutarse class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
PuedeEjecutarse class
	instanceVariableNames: ''!

!PuedeEjecutarse class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:33:03'!
canHandle: unUsuario with: unArchivoDeTexto 
	
	^unUsuario esElRootOElOwnerDe: unArchivoDeTexto :: or: unArchivoDeTexto tienePermisosDeEjecucion .! !


!classDefinition: #EstadoParaEliminarUsuarios category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadoParaEliminarUsuarios
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstadoParaEliminarUsuarios methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:11'!
eliminarAlUsuarioLlamado: nombreDeUnUsuario para: unaMiniTerminalUnix 

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoParaEliminarUsuarios class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaEliminarUsuarios class
	instanceVariableNames: ''!

!EstadoParaEliminarUsuarios class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 23:59:32'!
sePuedeEliminarAlUsuarioLlamado: unNombreDeUsuario 
	
	^(self allSubclasses detect:[:unEstado | unEstado canHandle: unNombreDeUsuario ]) new! !


!EstadoParaEliminarUsuarios class methodsFor: 'testing private' stamp: 'FS 7/16/2019 23:58:47'!
esElNombreDelRootOElGuest: unNombreDeUsuario

	^unNombreDeUsuario ='root' or: unNombreDeUsuario ='guest'! !


!EstadoParaEliminarUsuarios class methodsFor: 'handling' stamp: 'FS 7/14/2019 17:01:08'!
canHandle: unNombreDeUsuario 


	self subclassResponsibility ! !


!classDefinition: #SeQuiereEliminarAlRootOAlGuest category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaEliminarUsuarios subclass: #SeQuiereEliminarAlRootOAlGuest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!SeQuiereEliminarAlRootOAlGuest methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:10'!
eliminarAlUsuarioLlamado: nombreDeUnUsuario para: unaMiniTerminalUnix 
	
	ErroresTerminalUnix errorDeIntentarEliminarAlUsuarioRootOAlGuest.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeQuiereEliminarAlRootOAlGuest class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
SeQuiereEliminarAlRootOAlGuest class
	instanceVariableNames: ''!

!SeQuiereEliminarAlRootOAlGuest class methodsFor: 'handling' stamp: 'FS 7/16/2019 23:58:47'!
canHandle: unNombreDeUsuario 
	
	^self esElNombreDelRootOElGuest: unNombreDeUsuario ! !


!classDefinition: #SeQuiereEliminarOtroUsuario category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaEliminarUsuarios subclass: #SeQuiereEliminarOtroUsuario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!SeQuiereEliminarOtroUsuario methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:11'!
eliminarAlUsuarioLlamado: nombreDeUnUsuario para: unaMiniTerminalUnix 
	
	(EstadoParaRealizarEliminacionDeUsuario existeElUsuarioLlamado: nombreDeUnUsuario en: unaMiniTerminalUnix ) eliminarAlUsuarioLlamado: nombreDeUnUsuario para: unaMiniTerminalUnix .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeQuiereEliminarOtroUsuario class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
SeQuiereEliminarOtroUsuario class
	instanceVariableNames: ''!

!SeQuiereEliminarOtroUsuario class methodsFor: 'handling' stamp: 'FS 7/16/2019 23:58:48'!
canHandle: unNombreDeUsuario 
	
	^(self esElNombreDelRootOElGuest: unNombreDeUsuario ) not! !


!classDefinition: #EstadoParaEscribirArchivos category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadoParaEscribirArchivos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstadoParaEscribirArchivos methodsFor: 'actions' stamp: 'FS 7/12/2019 10:24:19'!
cambiarNombreDe: unArchivoUnix por: nuevoNombreParaElArchivo 
	
	self subclassResponsibility ! !

!EstadoParaEscribirArchivos methodsFor: 'actions' stamp: 'FS 7/17/2019 00:16:58'!
crearArchivoDeTextoLlamado: nombreDelArchivoDeTexto para: unaTerminalUnix 
	
	self subclassResponsibility ! !

!EstadoParaEscribirArchivos methodsFor: 'actions' stamp: 'FS 7/12/2019 10:24:42'!
crearArchivoDeTextoLlamado: nombreDelArchivoDeTexto queContiene: contenidoDelArchivoDeTexto para: unaMiniTerminalUnix 
	
	self subclassResponsibility ! !

!EstadoParaEscribirArchivos methodsFor: 'actions' stamp: 'FS 7/12/2019 10:24:54'!
crearSubdirectorioLlamado: nombreDeDirectorio para: unaMiniTerminalUnix 
	
	self subclassResponsibility ! !

!EstadoParaEscribirArchivos methodsFor: 'actions' stamp: 'FS 7/17/2019 00:03:38'!
eliminarElArchivoLlamado: nombreDeArchivoUnix para: unDirectorio 
	
	self subclassResponsibility ! !

!EstadoParaEscribirArchivos methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:27'!
escribir: contenidoAEscribir enElArchivo: unArchivoDeTexto 
	
	self subclassResponsibility ! !

!EstadoParaEscribirArchivos methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:34'!
sobrescribir: contenidoASobreescribir enElArchivo: unArchivoDeTexto 
	
	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoParaEscribirArchivos class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaEscribirArchivos class
	instanceVariableNames: ''!

!EstadoParaEscribirArchivos class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 11:33:24'!
canHandle: unUsuario with: unArchivoUnix

	self subclassResponsibility ! !


!EstadoParaEscribirArchivos class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:33:52'!
elUsuario: unUsuario puedeEscribirEn: unArchivoUnix 
	
	^(self allSubclasses detect: [: unEstado | unEstado canHandle: unUsuario with: unArchivoUnix ]) new! !


!classDefinition: #NoPuedeEscribir category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaEscribirArchivos subclass: #NoPuedeEscribir
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!NoPuedeEscribir methodsFor: 'actions' stamp: 'FS 7/14/2019 23:43:53'!
cambiarNombreDe: unArchivoUnix por: nuevoNombreParaElArchivo 
	
	ErroresTerminalUnix errorDeAccionRestringida ! !

!NoPuedeEscribir methodsFor: 'actions' stamp: 'FS 7/17/2019 00:17:04'!
crearArchivoDeTextoLlamado: nombreDelArchivoDeTexto para: unaTerminalUnix 
	
	ErroresTerminalUnix errorDeAccionRestringida ! !

!NoPuedeEscribir methodsFor: 'actions' stamp: 'FS 7/14/2019 23:44:03'!
crearArchivoDeTextoLlamado: nombreDelArchivoDeTexto queContiene: contenidoDelArchivoDeTexto para: unaMiniTerminalUnix 
	
	ErroresTerminalUnix errorDeAccionRestringida ! !

!NoPuedeEscribir methodsFor: 'actions' stamp: 'FS 7/14/2019 23:44:07'!
crearSubdirectorioLlamado: nombreDeDirectorio para: unaMiniTerminalUnix 
	
	ErroresTerminalUnix errorDeAccionRestringida ! !

!NoPuedeEscribir methodsFor: 'actions' stamp: 'FS 7/17/2019 00:03:20'!
eliminarElArchivoLlamado: nombreDeArchivoUnix para: unDirectorio 
	
	ErroresTerminalUnix errorDeAccionRestringida ! !

!NoPuedeEscribir methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:27'!
escribir: contenidoAEscribir enElArchivo: unArchivoDeTexto 
	
	ErroresTerminalUnix errorDeAccionRestringida ! !

!NoPuedeEscribir methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:34'!
sobrescribir: contenidoASobreescribir enElArchivo: unArchivoDeTexto 
	
	ErroresTerminalUnix errorDeAccionRestringida ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoPuedeEscribir class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
NoPuedeEscribir class
	instanceVariableNames: ''!

!NoPuedeEscribir class methodsFor: 'handling' stamp: 'deg 7/19/2019 15:57:59'!
canHandle: unUsuario with: unArchivoUnix 
	
	self flag: #errorLeve. "El mensaje #esElRootOElOwnerDe: esta chequeando 2 cosas distintas "
	
	self flag: #errorMedio.
		"El saber si unUsuario tiene permiso de ecritura deberia ser responsabilidad de unArchivoUnix.
		Para eso le estaria faltando el mensaje #puedeSerEscritoPor: unUsuario
			
			puedeSerEscritoPor unUsuario
				^ unUsuario esRoot or: [ self lePerteneceA: unUsuario ] or: [ self tienePermisosDeEscrituraParaOtros ]
				
		Ademas el mensaje #tienePermisosDeEscritura deberia llamarse #tienePermisosDeEscrituraParaOtros"
	
	^(unUsuario esElRootOElOwnerDe: unArchivoUnix :: or: unArchivoUnix tienePermisosDeEscritura) not .! !


!classDefinition: #PuedeEscribir category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaEscribirArchivos subclass: #PuedeEscribir
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!PuedeEscribir methodsFor: 'accessing private' stamp: 'FS 7/11/2019 17:08:24'!
directorioActualDe: unaMiniTerminalUnix 
	
	^unaMiniTerminalUnix directorioActual .! !

!PuedeEscribir methodsFor: 'accessing private' stamp: 'FS 7/11/2019 17:08:29'!
nombreDelUsuarioActualDe: unaMiniTerminalUnix 

	^unaMiniTerminalUnix usuarioActual nombreDeUsuario.! !


!PuedeEscribir methodsFor: 'actions' stamp: 'deg 7/19/2019 16:00:09'!
cambiarNombreDe: unArchivoUnix por: nuevoNombreParaElArchivo 
	
	self flag: #observacion. "Seria mas conveniente que la validacion se haga dentro del archivo"
	
	CorroboradorDeCaracteres esValidoElNombreDeArchivo: nuevoNombreParaElArchivo.
	 
	unArchivoUnix cambiarNombreA: nuevoNombreParaElArchivo .! !

!PuedeEscribir methodsFor: 'actions' stamp: 'FS 7/17/2019 00:17:28'!
crearArchivoDeTextoLlamado: nombreDelArchivoDeTexto para: unaTerminalUnix 
	
	| nombreDelOwner |
	nombreDelOwner _ unaTerminalUnix usuarioActual nombreDeUsuario .
	
	unaTerminalUnix directorioActual crearArchivoDeTextoDelUsuario: nombreDelOwner llamado: nombreDelArchivoDeTexto .! !

!PuedeEscribir methodsFor: 'actions' stamp: 'deg 7/19/2019 16:03:37'!
crearArchivoDeTextoLlamado: nombreDelArchivoDeTexto queContiene: contenidoDelArchivoDeTexto para: unaMiniTerminalUnix 

	self flag: #errorLeve.
		"Tienen demasiadas colaboraciones y rompen un poco el encapsulamiento
		Seria mas sencillo
		
			unaMiniTerminalUnix
				handleCreacionDeArchivoDeTextoLlamado: nombreDelArchivoDeTexto
				queContiene: contenidoDelArchivoDeTexto
				
			"

	(self directorioActualDe: unaMiniTerminalUnix ) crearArchivoDeTextoDelUsuario: (self nombreDelUsuarioActualDe: unaMiniTerminalUnix ) llamado: nombreDelArchivoDeTexto  queContiene: contenidoDelArchivoDeTexto .! !

!PuedeEscribir methodsFor: 'actions' stamp: 'FS 7/8/2019 15:23:45'!
crearSubdirectorioLlamado: nombreDeSubdirectorio para: unaMiniTerminalUnix 
	
	self directorioActualDe: unaMiniTerminalUnix :: crearSubdirectorioDelUsuario: (self nombreDelUsuarioActualDe: unaMiniTerminalUnix) llamado: nombreDeSubdirectorio .! !

!PuedeEscribir methodsFor: 'actions' stamp: 'FS 7/17/2019 00:03:27'!
eliminarElArchivoLlamado: nombreDeArchivoUnix para: unDirectorio 
	
	unDirectorio eliminarSeguroElArchivo: nombreDeArchivoUnix ! !

!PuedeEscribir methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:27'!
escribir: contenidoAEscribir enElArchivo: unArchivoDeTexto 
	
	unArchivoDeTexto escribir: contenidoAEscribir .! !

!PuedeEscribir methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:34'!
sobrescribir: contenidoASobreescribir enElArchivo: unArchivoDeTexto 
	
	unArchivoDeTexto sobrescribir: contenidoASobreescribir .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PuedeEscribir class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
PuedeEscribir class
	instanceVariableNames: ''!

!PuedeEscribir class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:34:12'!
canHandle: unUsuario with: unArchivoUnix
	
	^unUsuario esElRootOElOwnerDe: unArchivoUnix :: or: unArchivoUnix tienePermisosDeEscritura .! !


!classDefinition: #EstadoParaIniciarSesion category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadoParaIniciarSesion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstadoParaIniciarSesion methodsFor: 'actions' stamp: 'FS 7/16/2019 12:20:17'!
iniciarSesionConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña para: unaMiniTerminalUnix

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoParaIniciarSesion class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaIniciarSesion class
	instanceVariableNames: ''!

!EstadoParaIniciarSesion class methodsFor: 'handling' stamp: 'FS 7/14/2019 17:03:55'!
canHandle: unaMiniTerminalUnix with: unNombreDeUsuario with: unaContraseña


	self subclassResponsibility ! !


!EstadoParaIniciarSesion class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 11:52:17'!
puedeIniciarSesionConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña en: unaMiniTerminalUnix 
	
	^(self allSubclasses detect: [:unEstado | unEstado canHandle: unaMiniTerminalUnix with: unNombreDeUsuario with: unaContraseña])new! !


!classDefinition: #EstaRegistrado category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaIniciarSesion subclass: #EstaRegistrado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstaRegistrado methodsFor: 'actions' stamp: 'FS 7/16/2019 11:52:34'!
iniciarSesionConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña para: unaMiniTerminalUnix

	unaMiniTerminalUnix iniciarSesionSeguraConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstaRegistrado class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstaRegistrado class
	instanceVariableNames: ''!

!EstaRegistrado class methodsFor: 'handling' stamp: 'FS 7/14/2019 16:46:44'!
canHandle: unaMiniTerminalUnix with: unNombreDeUsuario with: unaContraseña

	^unaMiniTerminalUnix tieneAlUsuarioConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña ! !


!classDefinition: #NoEstaRegistrado category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaIniciarSesion subclass: #NoEstaRegistrado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!NoEstaRegistrado methodsFor: 'actions' stamp: 'FS 7/16/2019 11:52:34'!
iniciarSesionConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña para: unaMiniTerminalUnix
	
	ErroresTerminalUnix errorDeInicioDeSesion.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoEstaRegistrado class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
NoEstaRegistrado class
	instanceVariableNames: ''!

!NoEstaRegistrado class methodsFor: 'handling' stamp: 'FS 7/14/2019 16:43:01'!
canHandle: unaMiniTerminalUnix with: unNombreDeUsuario with: unaContraseña

	^(unaMiniTerminalUnix tieneAlUsuarioConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña ) not! !


!classDefinition: #EstadoParaLeerUnArchivo category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadoParaLeerUnArchivo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstadoParaLeerUnArchivo methodsFor: 'actions' stamp: 'FS 7/11/2019 17:09:29'!
accederAlDirectorio: unDirectorio para: unaTerminalUnix 

	self subclassResponsibility ! !

!EstadoParaLeerUnArchivo methodsFor: 'actions' stamp: 'FS 7/11/2019 17:09:45'!
leerSeguroA: unArchivoDeTexto 

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoParaLeerUnArchivo class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaLeerUnArchivo class
	instanceVariableNames: ''!

!EstadoParaLeerUnArchivo class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:34:38'!
canHandle: unUsuario with: unSubdirectorio 

	self subclassResponsibility ! !


!EstadoParaLeerUnArchivo class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 11:34:49'!
elUsuario: unUsuario puedeAbrir: unSubdirectorio

	^(self allSubclasses detect:[:unEstado | unEstado canHandle: unUsuario with: unSubdirectorio ])new! !


!classDefinition: #NoPuedeLeerse category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaLeerUnArchivo subclass: #NoPuedeLeerse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!NoPuedeLeerse methodsFor: 'actions' stamp: 'FS 7/14/2019 23:45:34'!
accederAlDirectorio: unDirectorio para: unaTerminalUnix 
	
	ErroresTerminalUnix errorDeAccesoRestringido.! !

!NoPuedeLeerse methodsFor: 'actions' stamp: 'FS 7/14/2019 23:47:12'!
leerSeguroA: unArchivoDeTexto 
	
	ErroresTerminalUnix errorDeAccionRestringida .
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoPuedeLeerse class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
NoPuedeLeerse class
	instanceVariableNames: ''!

!NoPuedeLeerse class methodsFor: 'handling' stamp: 'FS 7/17/2019 00:05:37'!
canHandle: unUsuario with: unArchivoUnix

	^(unUsuario esElRootOElOwnerDe: unArchivoUnix :: or: unArchivoUnix tienePermisosDeLectura) not .! !


!classDefinition: #PuedeLeerse category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaLeerUnArchivo subclass: #PuedeLeerse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!PuedeLeerse methodsFor: 'actions' stamp: 'FS 7/3/2019 16:38:43'!
accederAlDirectorio: unDirectorio para: unaTerminalUnix 
	
	unaTerminalUnix entrarSeguroA: unDirectorio .
! !

!PuedeLeerse methodsFor: 'actions' stamp: 'FS 7/11/2019 17:09:12'!
leerSeguroA: unArchivoDeTexto 
	
	^unArchivoDeTexto contenidoTextual ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PuedeLeerse class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
PuedeLeerse class
	instanceVariableNames: ''!

!PuedeLeerse class methodsFor: 'handling' stamp: 'FS 7/17/2019 00:07:53'!
canHandle: unUsuario with: unArchivoUnix 

	^unUsuario esElRootOElOwnerDe: unArchivoUnix :: or: unArchivoUnix tienePermisosDeLectura .! !


!classDefinition: #EstadoParaRealizarEliminacionDeUsuario category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadoParaRealizarEliminacionDeUsuario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstadoParaRealizarEliminacionDeUsuario methodsFor: 'actions' stamp: 'FS 7/16/2019 12:21:07'!
eliminarAlUsuarioLlamado: nombreDeUnUsuario para: unaMiniTerminalUnix

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoParaRealizarEliminacionDeUsuario class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaRealizarEliminacionDeUsuario class
	instanceVariableNames: ''!

!EstadoParaRealizarEliminacionDeUsuario class methodsFor: 'handling' stamp: 'FS 7/14/2019 17:05:33'!
canHandle: unaMiniTerminalUnix with: nombreDeUnUsuario

	self subclassResponsibility ! !


!EstadoParaRealizarEliminacionDeUsuario class methodsFor: 'instance creation' stamp: 'FS 7/17/2019 17:01:26'!
existeElUsuarioLlamado: nombreDeUnUsuario en: unaMiniTerminalUnix

	^(self allSubclasses detect: [:unEstado | unEstado canHandle: unaMiniTerminalUnix with: nombreDeUnUsuario ])new! !


!classDefinition: #ElUsuarioEstaRegistrado category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaRealizarEliminacionDeUsuario subclass: #ElUsuarioEstaRegistrado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!ElUsuarioEstaRegistrado methodsFor: 'actions' stamp: 'FS 7/14/2019 23:48:00'!
eliminarAlUsuarioLlamado: nombreDeUnUsuario para: unaMiniTerminalUnix

	unaMiniTerminalUnix eliminarSeguroAlUsuario: nombreDeUnUsuario .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ElUsuarioEstaRegistrado class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
ElUsuarioEstaRegistrado class
	instanceVariableNames: ''!

!ElUsuarioEstaRegistrado class methodsFor: 'handling' stamp: 'FS 7/14/2019 16:53:06'!
canHandle: unaMiniTerminalUnix with: nombreDeUnUsuario

	^unaMiniTerminalUnix tieneAlUsuarioLlamado: nombreDeUnUsuario ! !


!classDefinition: #ElUsuarioNoEstaRegistrado category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaRealizarEliminacionDeUsuario subclass: #ElUsuarioNoEstaRegistrado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!ElUsuarioNoEstaRegistrado methodsFor: 'actions' stamp: 'FS 7/14/2019 23:48:58'!
eliminarAlUsuarioLlamado: nombreDeUnUsuario para: unaMiniTerminalUnix

	ErroresTerminalUnix errorDeEliminacionDeUsuarioInexistente.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ElUsuarioNoEstaRegistrado class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
ElUsuarioNoEstaRegistrado class
	instanceVariableNames: ''!

!ElUsuarioNoEstaRegistrado class methodsFor: 'handling' stamp: 'FS 7/14/2019 23:48:33'!
canHandle: unaMiniTerminalUnix with: nombreDeUnUsuario

	^(unaMiniTerminalUnix tieneAlUsuarioLlamado: nombreDeUnUsuario) not ! !


!classDefinition: #EstadoParaRegistrarUsuarios category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadoParaRegistrarUsuarios
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
!EstadoParaRegistrarUsuarios commentStamp: '<historical>' prior: 0!
El objetivo de este Estado es para verificar si el nombre del usuario que se quiere registrar ya existe.!


!EstadoParaRegistrarUsuarios methodsFor: 'actions' stamp: 'FS 7/11/2019 17:20:01'!
realizarRegistroDe: unUsuario para: unaMiniTerminalUnix 

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoParaRegistrarUsuarios class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaRegistrarUsuarios class
	instanceVariableNames: ''!

!EstadoParaRegistrarUsuarios class methodsFor: 'handling' stamp: 'FS 7/14/2019 17:05:52'!
canHandle: unaMiniTerminalUnix with: unUsuario 

	self subclassResponsibility ! !


!EstadoParaRegistrarUsuarios class methodsFor: 'instance creation' stamp: 'FS 7/11/2019 17:11:35'!
existeElUsuario: nombreDeUnUsuario en: unaMiniTerminalUnix 
	
	^(self allSubclasses detect:[:unEstado | unEstado canHandle: unaMiniTerminalUnix with: nombreDeUnUsuario]) new.! !


!classDefinition: #ExisteElUsuario category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaRegistrarUsuarios subclass: #ExisteElUsuario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!ExisteElUsuario methodsFor: 'actions' stamp: 'FS 7/14/2019 23:50:28'!
realizarRegistroDe: unUsuario para: unaMiniTerminalUnix 
	
	ErroresTerminalUnix errorDeCrearUsuarioConNombreYaRegistrado.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ExisteElUsuario class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
ExisteElUsuario class
	instanceVariableNames: ''!

!ExisteElUsuario class methodsFor: 'handling' stamp: 'FS 7/11/2019 17:18:24'!
canHandle: unaMiniTerminalUnix with: unUsuario 
	
	^unaMiniTerminalUnix tieneAlUsuarioLlamado: unUsuario nombreDeUsuario .! !


!classDefinition: #NoExisteElUsuario category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaRegistrarUsuarios subclass: #NoExisteElUsuario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!NoExisteElUsuario methodsFor: 'actions' stamp: 'FS 7/11/2019 17:18:56'!
realizarRegistroDe: unUsuario para: unaMiniTerminalUnix 
	
	unaMiniTerminalUnix registrarSeguroA: unUsuario .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoExisteElUsuario class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
NoExisteElUsuario class
	instanceVariableNames: ''!

!NoExisteElUsuario class methodsFor: 'handling' stamp: 'FS 7/11/2019 17:18:39'!
canHandle: unaMiniTerminalUnix with: unUsuario 
	
	^(unaMiniTerminalUnix tieneAlUsuarioLlamado: unUsuario nombreDeUsuario) not.! !


!classDefinition: #EstadoParaSetearPermisos category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadoParaSetearPermisos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
!EstadoParaSetearPermisos commentStamp: '<historical>' prior: 0!
El objetivo de este Estado es para verificar que solo el root y el owner de un archivo puedan setearles permisos.!


!EstadoParaSetearPermisos methodsFor: 'actions' stamp: 'FS 7/12/2019 10:27:20'!
deshabilitarPermisoDeEjecucionAlArchivo: unArchivoUnix

	self subclassResponsibility ! !

!EstadoParaSetearPermisos methodsFor: 'actions' stamp: 'FS 7/12/2019 10:27:29'!
deshabilitarPermisoDeEscrituraAlArchivo: unArchivoUnix

	self subclassResponsibility ! !

!EstadoParaSetearPermisos methodsFor: 'actions' stamp: 'FS 7/12/2019 10:27:38'!
deshabilitarPermisoDeLecturaAlArchivo: unArchivoUnix

	self subclassResponsibility ! !

!EstadoParaSetearPermisos methodsFor: 'actions' stamp: 'FS 7/12/2019 10:27:49'!
habilitarPermisoDeEjecucionAlArchivo: unArchivoUnix

	self subclassResponsibility ! !

!EstadoParaSetearPermisos methodsFor: 'actions' stamp: 'FS 7/12/2019 10:27:54'!
habilitarPermisoDeEscrituraAlArchivo: unArchivoUnix

	self subclassResponsibility ! !

!EstadoParaSetearPermisos methodsFor: 'actions' stamp: 'FS 7/12/2019 10:27:59'!
habilitarPermisoDeLecturaAlArchivo: unArchivoUnix

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoParaSetearPermisos class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaSetearPermisos class
	instanceVariableNames: ''!

!EstadoParaSetearPermisos class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 11:37:53'!
elUsuario: unUsuario puedeSetearlePermisosA: unArchivoUnix 
	
	^(self allSubclasses detect: [:unEstado | unEstado canHandle: unUsuario with: unArchivoUnix ]) new! !


!EstadoParaSetearPermisos class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:38:43'!
canHandle: unUsuario with: unArchivoUnix 

	self subclassResponsibility ! !


!classDefinition: #NoPuedeSetearse category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaSetearPermisos subclass: #NoPuedeSetearse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!NoPuedeSetearse methodsFor: 'actions' stamp: 'FS 7/14/2019 23:52:35'!
deshabilitarPermisoDeEjecucionAlArchivo: unArchivoUnix
	
	ErroresTerminalUnix errorDeIntentoDeSetearLosPermisosSinSerRootUOwner.! !

!NoPuedeSetearse methodsFor: 'actions' stamp: 'FS 7/14/2019 23:53:17'!
deshabilitarPermisoDeEscrituraAlArchivo: unArchivoUnix
	
	ErroresTerminalUnix errorDeIntentoDeSetearLosPermisosSinSerRootUOwner.! !

!NoPuedeSetearse methodsFor: 'actions' stamp: 'FS 7/14/2019 23:53:19'!
deshabilitarPermisoDeLecturaAlArchivo: unArchivoUnix
	
	ErroresTerminalUnix errorDeIntentoDeSetearLosPermisosSinSerRootUOwner.! !

!NoPuedeSetearse methodsFor: 'actions' stamp: 'FS 7/14/2019 23:53:22'!
habilitarPermisoDeEjecucionAlArchivo: unArchivoUnix
	
	ErroresTerminalUnix errorDeIntentoDeSetearLosPermisosSinSerRootUOwner.! !

!NoPuedeSetearse methodsFor: 'actions' stamp: 'FS 7/14/2019 23:53:26'!
habilitarPermisoDeEscrituraAlArchivo: unArchivoUnix
	
	ErroresTerminalUnix errorDeIntentoDeSetearLosPermisosSinSerRootUOwner.! !

!NoPuedeSetearse methodsFor: 'actions' stamp: 'FS 7/14/2019 23:53:30'!
habilitarPermisoDeLecturaAlArchivo: unArchivoUnix
	
	ErroresTerminalUnix errorDeIntentoDeSetearLosPermisosSinSerRootUOwner.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoPuedeSetearse class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
NoPuedeSetearse class
	instanceVariableNames: ''!

!NoPuedeSetearse class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:38:51'!
canHandle: unUsuario with: unArchivoUnix 
	
	^(unUsuario esElRootOElOwnerDe: unArchivoUnix ) not.! !


!classDefinition: #PuedeSetearse category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaSetearPermisos subclass: #PuedeSetearse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!PuedeSetearse methodsFor: 'actions' stamp: 'FS 7/11/2019 17:20:45'!
deshabilitarPermisoDeEjecucionAlArchivo: unArchivoUnix
 
	unArchivoUnix deshabilitarPermisoDeEjecucion .! !

!PuedeSetearse methodsFor: 'actions' stamp: 'FS 7/11/2019 17:20:49'!
deshabilitarPermisoDeEscrituraAlArchivo: unArchivoUnix 
	
	unArchivoUnix deshabilitarPermisoDeEscritura.! !

!PuedeSetearse methodsFor: 'actions' stamp: 'FS 7/11/2019 17:20:54'!
deshabilitarPermisoDeLecturaAlArchivo: unArchivoUnix 
	
	unArchivoUnix deshabilitarPermisoDeLectura. ! !

!PuedeSetearse methodsFor: 'actions' stamp: 'FS 7/6/2019 15:35:58'!
habilitarPermisoDeEjecucionAlArchivo: unArchivoUnix 
	
	unArchivoUnix habilitarPermisoDeEjecucion.! !

!PuedeSetearse methodsFor: 'actions' stamp: 'FS 7/17/2019 16:27:03'!
habilitarPermisoDeEscrituraAlArchivo: unArchivoUnix
 
	unArchivoUnix habilitarPermisoDeEscritura.! !

!PuedeSetearse methodsFor: 'actions' stamp: 'FS 7/11/2019 17:21:04'!
habilitarPermisoDeLecturaAlArchivo: unArchivoUnix 

	unArchivoUnix habilitarPermisoDeLectura .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PuedeSetearse class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
PuedeSetearse class
	instanceVariableNames: ''!

!PuedeSetearse class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:39:01'!
canHandle: unUsuario with: unArchivoUnix 
	
	^unUsuario esElRootOElOwnerDe: unArchivoUnix .! !


!classDefinition: #EstadoParaVolverADirectorioPadre category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadoParaVolverADirectorioPadre
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstadoParaVolverADirectorioPadre methodsFor: 'actions' stamp: 'FS 7/16/2019 12:13:42'!
volverAlDirectorioAnteriorPara: unaTerminalUnix

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoParaVolverADirectorioPadre class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaVolverADirectorioPadre class
	instanceVariableNames: ''!

!EstadoParaVolverADirectorioPadre class methodsFor: 'handling' stamp: 'FS 7/16/2019 12:16:34'!
canHandle: unaMiniTerminalUnix

	self subclassResponsibility ! !


!EstadoParaVolverADirectorioPadre class methodsFor: 'instance creation' stamp: 'FS 7/16/2019 12:15:53'!
estaEnSuDirectorioRootLaTerminal: unaMiniTerminalUnix
	
	^(self allSubclasses detect: [:unEstado | unEstado canHandle: unaMiniTerminalUnix]) new! !


!classDefinition: #EstaEnDirectorioRoot category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaVolverADirectorioPadre subclass: #EstaEnDirectorioRoot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstaEnDirectorioRoot methodsFor: 'actions' stamp: 'FS 7/16/2019 12:13:42'!
volverAlDirectorioAnteriorPara: unaTerminalUnix
	
	ErroresTerminalUnix errorDeIntentarAccederAlDirectorioPadreDelDirectorioRoot! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstaEnDirectorioRoot class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstaEnDirectorioRoot class
	instanceVariableNames: ''!

!EstaEnDirectorioRoot class methodsFor: 'handling' stamp: 'FS 7/16/2019 12:15:22'!
canHandle: unaMiniTerminalUnix

	^unaMiniTerminalUnix seEncuentraEnDirectorioRoot.! !


!classDefinition: #EstaEnOtroDirectorio category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadoParaVolverADirectorioPadre subclass: #EstaEnOtroDirectorio
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstaEnOtroDirectorio methodsFor: 'actions' stamp: 'FS 7/16/2019 12:13:42'!
volverAlDirectorioAnteriorPara: unaTerminalUnix

	unaTerminalUnix regresarADirectorioPadre.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstaEnOtroDirectorio class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstaEnOtroDirectorio class
	instanceVariableNames: ''!

!EstaEnOtroDirectorio class methodsFor: 'handling' stamp: 'FS 7/3/2019 16:39:36'!
canHandle: unaTerminalUnix

	^unaTerminalUnix seEncuentraEnDirectorioRoot not.! !


!classDefinition: #EstadosParaAccionarConUsuarios category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #EstadosParaAccionarConUsuarios
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!EstadosParaAccionarConUsuarios methodsFor: 'actions' stamp: 'FS 6/22/2019 18:49:27'!
eliminarAlUsuarioConNombre: unNombreDeUsuario en: unaTerminalUnix 

	self subclassResponsibility ! !

!EstadosParaAccionarConUsuarios methodsFor: 'actions' stamp: 'FS 7/17/2019 00:19:11'!
registrarUnUsuarioConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña en: unaTerminalUnix 

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadosParaAccionarConUsuarios class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadosParaAccionarConUsuarios class
	instanceVariableNames: ''!

!EstadosParaAccionarConUsuarios class methodsFor: 'instance creation' stamp: 'FS 7/17/2019 16:53:30'!
chequearAlUsuario: unUsuario 

	^(self allSubclasses detect: [:unEstado | unEstado canHandle: unUsuario ]) new! !


!EstadosParaAccionarConUsuarios class methodsFor: 'handling' stamp: 'FS 7/16/2019 12:02:29'!
canHandle: unUsuario 

	self subclassResponsibility ! !


!classDefinition: #NoPuedeRealizarla category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadosParaAccionarConUsuarios subclass: #NoPuedeRealizarla
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!NoPuedeRealizarla methodsFor: 'actions' stamp: 'FS 7/14/2019 23:54:58'!
eliminarAlUsuarioConNombre: unNombreDeUsuario en: unaTerminalUnix 

	ErroresTerminalUnix errorNoPuedeEliminarUsuarios.! !

!NoPuedeRealizarla methodsFor: 'actions' stamp: 'FS 7/17/2019 16:27:51'!
registrarUnUsuarioConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña en: unaTerminalUnix 
	
	ErroresTerminalUnix errorNoPuedeCrearUsuarios.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoPuedeRealizarla class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
NoPuedeRealizarla class
	instanceVariableNames: ''!

!NoPuedeRealizarla class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:49:53'!
canHandle: unUsuario 
	
	^unUsuario puedeCrearYEliminarUsuarios not.! !


!classDefinition: #PuedeRealizarla category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
EstadosParaAccionarConUsuarios subclass: #PuedeRealizarla
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!PuedeRealizarla methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:11'!
eliminarAlUsuarioConNombre: unNombreDeUsuario en: unaTerminalUnix 

	(EstadoParaEliminarUsuarios sePuedeEliminarAlUsuarioLlamado: unNombreDeUsuario ) eliminarAlUsuarioLlamado: unNombreDeUsuario para: unaTerminalUnix ! !

!PuedeRealizarla methodsFor: 'actions' stamp: 'deg 7/19/2019 15:44:17'!
registrarUnUsuarioConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña en: unaTerminalUnix 
		
	| nuevoUsuario |
	nuevoUsuario _ Usuario comunConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña .
	
	self flag: #observacion.
		"Esta buenisimo que hayan se valide el nombre y contraseña,
		pero seria mas conveniente que la verificacion la realice la clase Usuario (delegando la tarea en el CorroboradorDeCaracteres que armaron)"
		
	self validarElNombreYLaContraseñaDe: nuevoUsuario .
	
	(EstadoParaRegistrarUsuarios existeElUsuario: nuevoUsuario en: unaTerminalUnix ) realizarRegistroDe: nuevoUsuario para: unaTerminalUnix .! !


!PuedeRealizarla methodsFor: 'valuate private' stamp: 'FS 7/12/2019 11:49:34'!
validarElNombreYLaContraseñaDe: unUsuario 
	
	CorroboradorDeCaracteres esValidoElUsuario: unUsuario ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PuedeRealizarla class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
PuedeRealizarla class
	instanceVariableNames: ''!

!PuedeRealizarla class methodsFor: 'handling' stamp: 'FS 7/16/2019 11:50:13'!
canHandle: unUsuario 
	
	^unUsuario puedeCrearYEliminarUsuarios.! !


!classDefinition: #FactoryDeTest category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #FactoryDeTest
	instanceVariableNames: 'usuariosRegistrados usuarioActual'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!FactoryDeTest methodsFor: 'terminal' stamp: 'FS 7/17/2019 13:00:18'!
unaTerminalUnixConLaSesionDeAlbertoYUnDirectorioCreado
	
	| unaTerminal |
	unaTerminal _ self unaTerminalUnixConLaSesionDeRoot .
	unaTerminal registrarUnUsuarioConElNombre: 'alberto' yLaContraseña:'Diaz455'.
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'alberto' yContraseña:'Diaz455'.

	unaTerminal crearSubdirectorioLlamado: 'anime'.
	
	^unaTerminal! !

!FactoryDeTest methodsFor: 'terminal' stamp: 'FS 7/17/2019 13:06:01'!
unaTerminalUnixConLaSesionDePedroYUnArchivoDeTextoCreado
	
	| unaTerminal |
	unaTerminal _ self unaTerminalUnixConLaSesionDeRoot .
	unaTerminal registrarUnUsuarioConElNombre: 'pedro' yLaContraseña:'SaltaLaBanca99'.
	unaTerminal iniciarSesionConElUsuarioDeNombre: 'pedro' yContraseña: 'SaltaLaBanca99'.
	
	unaTerminal crearArchivoDeTextoLlamado: 'saludos'.
	
	^unaTerminal! !

!FactoryDeTest methodsFor: 'terminal' stamp: 'FS 7/16/2019 00:36:29'!
unaTerminalUnixConLaSesionDeRoot
	
	| unaTerminalUnix |
	unaTerminalUnix _ self unaTerminalUnixNueva .
	
	unaTerminalUnix iniciarSesionConElUsuarioDeNombre: 'root' yContraseña:'admin123'.
	
	^unaTerminalUnix .	! !

!FactoryDeTest methodsFor: 'terminal' stamp: 'FS 7/16/2019 00:36:44'!
unaTerminalUnixConVariosArchivosCreados
	
	| unaTerminal |
	unaTerminal _ self unaTerminalUnixConLaSesionDeRoot .
	
	unaTerminal crearArchivoDeTextoLlamado: 'idkb'.
	unaTerminal crearSubdirectorioLlamado: 'directory'.
	unaTerminal habilitarPermisoDeEscrituraAlArchivoLlamado: 'directory'.
	unaTerminal habilitarPermisoDeEscrituraAlArchivoLlamado:'idkb.txt'.
		
	unaTerminal iniciarSesionConElUsuarioDeNombre:  'guest' yContraseña:'guest'.
	unaTerminal crearArchivoDeTextoLlamado: 'alexandrite'.
	unaTerminal habilitarPermisoDeEscrituraAlArchivoLlamado:'alexandrite.txt'.	
	unaTerminal habilitarPermisoDeEjecucionAlArchivoLlamado:'alexandrite.txt'. 
	
	^unaTerminal.! !

!FactoryDeTest methodsFor: 'terminal' stamp: 'FS 6/22/2019 10:14:32'!
unaTerminalUnixNueva


	^MiniTerminalUnix terminalNuevaConElUsuarioGuest .! !


!FactoryDeTest methodsFor: 'files' stamp: 'FS 7/16/2019 12:56:27'!
unArchivoDeTextoNuevo
	
	^ArchivoDeTexto delUsuario: 'unUsuario' conElNombre:'unArchivoNuevo'.
! !

!FactoryDeTest methodsFor: 'files' stamp: 'FS 7/16/2019 00:36:09'!
unDirectorioNuevo

	| unaTerminal |
	unaTerminal _ self unaTerminalUnixConLaSesionDeRoot .
	
	^Directorio delUsuario: 'unUsuario' conElNombre:'directorioNuevo'  queEsSubdirectorioDe: unaTerminal directorioActual .
! !


!FactoryDeTest methodsFor: 'ussers' stamp: 'FS 7/12/2019 11:35:13'!
unUsuarioConElNombreChanoYContraseñaLaRenga
	
	^Usuario comunConElNombre: 'Chano' yLaContraseña: 'LaRenga'.! !

!FactoryDeTest methodsFor: 'ussers' stamp: 'FS 7/12/2019 11:36:17'!
unUsuarioConElNombreJuanYLaContraseñaPanDeJamon

	^Usuario comunConElNombre: 'Juan' yLaContraseña: 'PanDeJamon'.
! !

!FactoryDeTest methodsFor: 'ussers' stamp: 'FS 7/15/2019 00:49:28'!
unUsuarioRoot

	^Usuario rootDeLaTerminalUnix .
! !


!classDefinition: #FileSystem category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #FileSystem
	instanceVariableNames: 'nombre owner permisosPublicos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!FileSystem methodsFor: 'accessing private' stamp: 'FS 7/12/2019 10:39:14'!
permisoDeEscritura
	
	^permisosPublicos detect: [:unPermiso | unPermiso esDeEscritura ]! !

!FileSystem methodsFor: 'accessing private' stamp: 'FS 7/12/2019 10:39:14'!
permisoDeLectura
	
	^permisosPublicos detect: [:unPermiso| unPermiso esDeLectura]! !

!FileSystem methodsFor: 'accessing private' stamp: 'FS 7/12/2019 10:39:14'!
permisosHabilitados
	
	^permisosPublicos select: [:unPermiso | unPermiso estaHabilitado ]! !


!FileSystem methodsFor: 'accessing' stamp: 'FS 7/14/2019 17:12:55'!
informacionDeArchivo
	
	| datosDeArchivo |
	datosDeArchivo _ nombre asString,'   ',self mostrarPermisosHabilitados, '   ', owner asString. 
	
	^datosDeArchivo,'.' .! !

!FileSystem methodsFor: 'accessing' stamp: 'FS 7/6/2019 14:58:42'!
mostrarPermisosHabilitados
	
	| permisosHabilitados listaDePermisos |
	permisosHabilitados  _ self permisosHabilitados.
	listaDePermisos _ ''.
	
	permisosHabilitados do:[:unPermiso | listaDePermisos _ listaDePermisos, unPermiso tipo,'/'].
	
	^listaDePermisos.! !

!FileSystem methodsFor: 'accessing' stamp: 'FS 6/22/2019 16:17:51'!
nombre

	^nombre! !

!FileSystem methodsFor: 'accessing' stamp: 'FS 7/2/2019 18:32:23'!
owner
	
	^owner! !


!FileSystem methodsFor: 'testing' stamp: 'FS 7/17/2019 00:21:23'!
esElArchivoDeTextoLlamado: nombreDeUnArchivoUnix 
	
	^self esUnArchivoDeTexto and: (self seLlama: nombreDeUnArchivoUnix )! !

!FileSystem methodsFor: 'testing' stamp: 'FS 7/17/2019 16:31:54'!
esElDirectorioLlamado: nombreDeUnArchivoUnix 
	
	^self esUnDirectorio and: (self seLlama: nombreDeUnArchivoUnix )! !

!FileSystem methodsFor: 'testing' stamp: 'FS 7/17/2019 00:21:52'!
esPropiedadDelUsuarioLlamado: unNombreDeUsuario 
	
	^unNombreDeUsuario = owner ! !

!FileSystem methodsFor: 'testing' stamp: 'FS 7/1/2019 19:04:24'!
esUnArchivoDeTexto

	^false! !

!FileSystem methodsFor: 'testing' stamp: 'FS 7/1/2019 19:04:46'!
esUnDirectorio

	^false! !

!FileSystem methodsFor: 'testing' stamp: 'FS 7/17/2019 00:22:37'!
seLlama: unNombreDeArchivoUnix 
	
	^nombre = unNombreDeArchivoUnix ! !

!FileSystem methodsFor: 'testing' stamp: 'FS 7/16/2019 11:58:27'!
tienePermisosDeEjecucion
	
	^false! !

!FileSystem methodsFor: 'testing' stamp: 'FS 7/16/2019 00:52:13'!
tienePermisosDeEscritura
	
	^self permisoDeEscritura estaHabilitado .! !

!FileSystem methodsFor: 'testing' stamp: 'FS 7/16/2019 00:52:30'!
tienePermisosDeLectura
	
	^self permisoDeLectura estaHabilitado .! !


!FileSystem methodsFor: 'actions' stamp: 'FS 7/17/2019 00:20:20'!
cambiarNombreA: nuevoNombreDeArchivoUnix 
	
	nombre _ nuevoNombreDeArchivoUnix.! !

!FileSystem methodsFor: 'actions' stamp: 'FS 7/15/2019 00:28:30'!
deshabilitarPermisoDeEjecucion
	
	self permisoDeEjecucion deshabilitarPermiso .! !

!FileSystem methodsFor: 'actions' stamp: 'FS 7/6/2019 15:41:05'!
deshabilitarPermisoDeEscritura
	
	self permisoDeEscritura deshabilitarPermiso .! !

!FileSystem methodsFor: 'actions' stamp: 'FS 7/6/2019 15:56:52'!
deshabilitarPermisoDeLectura
	
	self permisoDeLectura  deshabilitarPermiso .! !

!FileSystem methodsFor: 'actions' stamp: 'FS 7/6/2019 15:36:29'!
habilitarPermisoDeEjecucion
	
	self permisoDeEjecucion habilitarPermiso.! !

!FileSystem methodsFor: 'actions' stamp: 'FS 7/8/2019 14:08:04'!
habilitarPermisoDeEscritura
	
	self permisoDeEscritura habilitarPermiso.! !

!FileSystem methodsFor: 'actions' stamp: 'FS 7/6/2019 15:38:03'!
habilitarPermisoDeLectura
	
	self permisoDeLectura habilitarPermiso.! !


!FileSystem methodsFor: 'initialization' stamp: 'FS 7/17/2019 00:22:24'!
inicializarArchivoSiendoDelUsuario: nombreDeOwner conElNombre: nombreDelArchivoUnix 
	
	| permisoEscritura permisoLectura |
	permisoEscritura _ Permiso generarPermisoDeEscritura .
	permisoLectura _ Permiso generarPermisoDeLectura .
		
	permisosPublicos _ OrderedCollection with: permisoLectura with: permisoEscritura.
	owner _ nombreDeOwner .
	nombre _ nombreDelArchivoUnix .
! !


!classDefinition: #ArchivoDeTexto category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
FileSystem subclass: #ArchivoDeTexto
	instanceVariableNames: 'contenidoTextual'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!ArchivoDeTexto methodsFor: 'initialization' stamp: 'FS 7/16/2019 00:59:49'!
inicializaSiendoDelUsuario: nombreDeOwner conElNombre: nombreDelArchivoDeTexto 
	
	| permisoEjecucion |
	permisoEjecucion _ Permiso generarPermisoDeEjecucion .
		
	self inicializarArchivoSiendoDelUsuario: nombreDeOwner conElNombre: nombreDelArchivoDeTexto,'.txt'.
	
	permisosPublicos add: permisoEjecucion .
	contenidoTextual _ ''.
! !

!ArchivoDeTexto methodsFor: 'initialization' stamp: 'FS 7/17/2019 16:32:22'!
inicializaSiendoDelUsuario: nombreDelOwnerDelArchivo conElNombre: nombreDelArchivoDeTexto queContiene: contenidoTextualNuevo 

	self inicializaSiendoDelUsuario: nombreDelOwnerDelArchivo conElNombre: nombreDelArchivoDeTexto.
	
	contenidoTextual _ contenidoTextualNuevo.
! !


!ArchivoDeTexto methodsFor: 'accessing' stamp: 'FS 6/22/2019 16:40:38'!
contenidoTextual
	
	^contenidoTextual! !

!ArchivoDeTexto methodsFor: 'accessing' stamp: 'FS 7/15/2019 00:29:49'!
permisoDeEjecucion
	
	^permisosPublicos detect:[:unPermiso | unPermiso esDeEjecucion ]! !


!ArchivoDeTexto methodsFor: 'actions' stamp: 'FS 7/17/2019 00:23:39'!
cambiarNombreA: nuevoNombreDeArchivoDeTexto 
	
	nombre _ nuevoNombreDeArchivoDeTexto,'.txt'.! !

!ArchivoDeTexto methodsFor: 'actions' stamp: 'FS 7/16/2019 12:53:20'!
ejecutar
	
	^Compiler evaluate: contenidoTextual ! !

!ArchivoDeTexto methodsFor: 'actions' stamp: 'FS 7/17/2019 00:24:05'!
escribir: unTexto 

	contenidoTextual _ contenidoTextual , unTexto .! !

!ArchivoDeTexto methodsFor: 'actions' stamp: 'FS 7/16/2019 12:01:17'!
sobrescribir: unNuevoTexto 

	contenidoTextual _ unNuevoTexto ! !


!ArchivoDeTexto methodsFor: 'testing' stamp: 'FS 7/1/2019 19:04:16'!
esUnArchivoDeTexto

	^true! !

!ArchivoDeTexto methodsFor: 'testing' stamp: 'deg 7/19/2019 14:09:35'!
tieneContenidoTextual
	
	self flag: #observacion. "existe el mensaje #notEmpty"
	
	^contenidoTextual isNotEqualTo: ''! !

!ArchivoDeTexto methodsFor: 'testing' stamp: 'FS 7/6/2019 16:10:43'!
tienePermisosDeEjecucion
	
	^self permisoDeEjecucion estaHabilitado .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ArchivoDeTexto class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
ArchivoDeTexto class
	instanceVariableNames: ''!

!ArchivoDeTexto class methodsFor: 'instance creation' stamp: 'deg 7/19/2019 14:02:47'!
delUsuario: nombreDeOwner conElNombre: nombreDelArchivoDeTexto 
	
	self flag: #observacion. "Estaria bueno que conozca al usuario al que pertenece en lugar de solo su nombre"
	
	^self new inicializaSiendoDelUsuario: nombreDeOwner conElNombre: nombreDelArchivoDeTexto .! !

!ArchivoDeTexto class methodsFor: 'instance creation' stamp: 'FS 7/17/2019 15:13:48'!
delUsuario: nombreDelOwner conElNombre: nombreDelArchivoDeTexto queContiene: contenidoTextualDelArchivo

	^self new inicializaSiendoDelUsuario: nombreDelOwner conElNombre: nombreDelArchivoDeTexto queContiene: contenidoTextualDelArchivo .! !


!classDefinition: #Directorio category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
FileSystem subclass: #Directorio
	instanceVariableNames: 'directorioPadre archivosGuardados'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!Directorio methodsFor: 'initialization' stamp: 'FS 7/16/2019 20:04:30'!
inicializaSiendoDelUsuario: nombreDelOwner conElNombre: nombreDelDirectorio queEsSubdirectorioDe: elDirectorioPadre 
		
	self inicializarArchivoSiendoDelUsuario: nombreDelOwner conElNombre: nombreDelDirectorio .
	
	directorioPadre _ elDirectorioPadre .
	archivosGuardados _ OrderedCollection new.
! !


!Directorio methodsFor: 'actions' stamp: 'FS 7/17/2019 16:32:42'!
crearArchivoDeTextoDelUsuario: nombreDeOwner llamado: nombreDelArchivoDeTexto 

	| unNuevoArchivo |
	
	self validarElNombreDeArchivo: nombreDelArchivoDeTexto .

	unNuevoArchivo _ ArchivoDeTexto delUsuario: nombreDeOwner conElNombre: nombreDelArchivoDeTexto.
	
	(EstadoParaAlmacenarNuevosArchivos existeElArchivo: unNuevoArchivo en: self) agregarElArchivo: unNuevoArchivo para: self.! !

!Directorio methodsFor: 'actions' stamp: 'FS 7/17/2019 16:32:53'!
crearArchivoDeTextoDelUsuario: nombreDelOwnerDelArchivo llamado: nombreDelArchivoDeTexto queContiene: contenidoTextualDelArchivo

	| unNuevoArchivo |
	
	self validarElNombreDeArchivo: nombreDelArchivoDeTexto .
		
	unNuevoArchivo _ ArchivoDeTexto delUsuario: nombreDelOwnerDelArchivo conElNombre: nombreDelArchivoDeTexto queContiene: contenidoTextualDelArchivo .
	
	(EstadoParaAlmacenarNuevosArchivos existeElArchivo: unNuevoArchivo en: self) agregarElArchivo: unNuevoArchivo para: self.! !

!Directorio methodsFor: 'actions' stamp: 'FS 7/17/2019 00:09:44'!
crearSubdirectorioDelUsuario: nombreDelOwner llamado: nombreDeSubdirectorio
	
	| unNuevoSubdirectorio |
	
	self validarElNombreDeArchivo: nombreDeSubdirectorio .
	
	unNuevoSubdirectorio _ Directorio delUsuario: nombreDelOwner conElNombre: nombreDeSubdirectorio queEsSubdirectorioDe: self.
	
	(EstadoParaAlmacenarNuevosArchivos existeElArchivo: unNuevoSubdirectorio en: self) agregarElArchivo: unNuevoSubdirectorio para: self.! !

!Directorio methodsFor: 'actions' stamp: 'FS 7/15/2019 00:20:28'!
deshabilitarPermisoDeEjecucion
	
	ErroresTerminalUnix errorDeSetearPermisoDeEjecucionADirectorio.! !

!Directorio methodsFor: 'actions' stamp: 'FS 7/15/2019 00:21:05'!
habilitarPermisoDeEjecucion
	
	ErroresTerminalUnix errorDeSetearPermisoDeEjecucionADirectorio.! !


!Directorio methodsFor: 'accessing' stamp: 'FS 7/16/2019 20:04:42'!
archivosGuardados

	^archivosGuardados .! !

!Directorio methodsFor: 'accessing' stamp: 'FS 6/22/2019 18:22:04'!
directorioPadre

	^directorioPadre! !

!Directorio methodsFor: 'accessing' stamp: 'FS 7/17/2019 00:25:41'!
encontrarAlArchivo: nombreDeUnArchivoUnix 

	^archivosGuardados detect: [:unArchivo | unArchivo seLlama: nombreDeUnArchivoUnix ] ifNone: [ErroresTerminalUnix errorDeArchivoUnixNoEncontrado]! !

!Directorio methodsFor: 'accessing' stamp: 'FS 7/17/2019 16:33:03'!
encontrarAlSubdirectorio: nombreDeDirectorio 

	^archivosGuardados detect: [:unArchivo | unArchivo esElDirectorioLlamado: nombreDeDirectorio ] 
															ifNone: [ErroresTerminalUnix errorDeSubdirectorioNoEncontrado]! !

!Directorio methodsFor: 'accessing' stamp: 'FS 7/17/2019 16:33:18'!
encontrarElArchivoDeTextoLlamado: nombreDeArchivoDeTexto
 
	^archivosGuardados detect: [:unArchivo | unArchivo esElArchivoDeTextoLlamado: nombreDeArchivoDeTexto ] 
															ifNone: [ErroresTerminalUnix errorDeArchivoDeTextoNoEncontrado]! !

!Directorio methodsFor: 'accessing' stamp: 'FS 7/16/2019 20:04:30'!
informacionDeArchivosActuales

	| listaDeContenido informacionDeContenido |
	
	listaDeContenido _ archivosGuardados collect:[:unArchivo | unArchivo informacionDeArchivo] .
	
	informacionDeContenido _ OrderedCollection with: nombre asString,': '.
	
	listaDeContenido do:[:informacionDeCadaArchivo |  informacionDeContenido add: informacionDeCadaArchivo].
	
	^informacionDeContenido.! !

!Directorio methodsFor: 'accessing' stamp: 'FS 7/17/2019 00:27:02'!
leerElArchivo: nombreDelArchivoDeTexto 

	| elArchivoBuscado |
	elArchivoBuscado  _ self encontrarElArchivoDeTextoLlamado: nombreDelArchivoDeTexto .
	
	^elArchivoBuscado contenidoTextual .! !

!Directorio methodsFor: 'accessing' stamp: 'FS 7/16/2019 20:04:30'!
nombresDeSusArchivos
	
	^archivosGuardados collect:[:unArchivo | unArchivo nombre].! !


!Directorio methodsFor: 'testing' stamp: 'FS 7/17/2019 00:25:08'!
contieneElArchivoLlamado: unNombreDeArchivoUnix 

	^archivosGuardados anySatisfy: [:unArchivo | unArchivo seLlama: unNombreDeArchivoUnix ]! !

!Directorio methodsFor: 'testing' stamp: 'FS 7/1/2019 23:35:25'!
esSubdirectorioDe: nombreDeDirectorio 
	
	^directorioPadre nombre = nombreDeDirectorio ! !

!Directorio methodsFor: 'testing' stamp: 'FS 7/1/2019 18:46:49'!
esUnDirectorio
	
	^true! !


!Directorio methodsFor: 'actions private' stamp: 'FS 7/17/2019 12:57:38'!
añadirSeguroElArchivo: unArchivoUnix 
	
	archivosGuardados add: unArchivoUnix .! !

!Directorio methodsFor: 'actions private' stamp: 'FS 7/17/2019 00:25:32'!
eliminarSeguroElArchivo: nombreDelArchivoUnix
 
	| archivoAEliminar |
	archivoAEliminar _ self encontrarAlArchivo: nombreDelArchivoUnix.
	
	archivosGuardados remove: archivoAEliminar.! !


!Directorio methodsFor: 'valuate private' stamp: 'FS 7/17/2019 00:27:14'!
validarElNombreDeArchivo: nombreDelArchivoUnix

	CorroboradorDeCaracteres esValidoElNombreDeArchivo: nombreDelArchivoUnix ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Directorio class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Directorio class
	instanceVariableNames: ''!

!Directorio class methodsFor: 'instance creation' stamp: 'FS 7/1/2019 19:30:55'!
delUsuario: nombreDelOwner conElNombre: nombreDeLaCarpeta queEsSubdirectorioDe: nombreDeDirectorioPadre
	
	^self new inicializaSiendoDelUsuario: nombreDelOwner conElNombre: nombreDeLaCarpeta queEsSubdirectorioDe: nombreDeDirectorioPadre 
	! !


!classDefinition: #DirectorioNulo category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
FileSystem subclass: #DirectorioNulo
	instanceVariableNames: 'directorioRoot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!DirectorioNulo methodsFor: 'initialization' stamp: 'FS 7/16/2019 01:01:45'!
inicializaPorDefecto
	
	self inicializarArchivoSiendoDelUsuario: 'root' conElNombre: '/'.
	
	directorioRoot _ Directorio delUsuario: 'root' conElNombre:'directorioRoot'  queEsSubdirectorioDe: self.
	
	directorioRoot habilitarPermisoDeEscritura .	! !


!DirectorioNulo methodsFor: 'accessing' stamp: 'FS 7/16/2019 01:06:18'!
directorioRootParaUnaNuevaTerminal

	^directorioRoot! !


!DirectorioNulo methodsFor: 'testing' stamp: 'FS 7/16/2019 11:57:38'!
tienePermisosDeEjecucion

	^false! !


!DirectorioNulo methodsFor: 'actions' stamp: 'FS 7/15/2019 00:27:52'!
cambiarNombreA: unNuevoNombreParaElArchivo 

	self shouldNotImplement ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DirectorioNulo class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
DirectorioNulo class
	instanceVariableNames: ''!

!DirectorioNulo class methodsFor: 'instance creation' stamp: 'FS 7/3/2019 18:35:46'!
directorioPorDefecto
	
	^self new inicializaPorDefecto! !


!classDefinition: #MiniTerminalUnix category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #MiniTerminalUnix
	instanceVariableNames: 'usuariosRegistrados usuarioActual directorioActual directorioRoot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!MiniTerminalUnix methodsFor: 'actions private' stamp: 'FS 7/3/2019 23:54:57'!
eliminarSeguroAlUsuario: unNombreDeUsuario 
	
	usuariosRegistrados remove: (self elUsuarioLlamado: unNombreDeUsuario )! !

!MiniTerminalUnix methodsFor: 'actions private' stamp: 'FS 7/2/2019 18:36:15'!
entrarSeguroA: unDirectorio 

	directorioActual _ unDirectorio .! !

!MiniTerminalUnix methodsFor: 'actions private' stamp: 'FS 7/16/2019 18:30:14'!
escribirInformacionDeContenidoEn: unStream

	^self informacionDeArchivosActuales do:[:unaLineaDeInformacion | unStream nextPutAll: unaLineaDeInformacion; newLine]
	
	! !

!MiniTerminalUnix methodsFor: 'actions private' stamp: 'FS 7/14/2019 17:19:35'!
iniciarSesionSeguraConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña

	usuarioActual _ self encontrarSeguroAlUsuarioConElNombre: unNombreDeUsuario yContraseña: unaContraseña.
	directorioActual _ directorioRoot.! !

!MiniTerminalUnix methodsFor: 'actions private' stamp: 'FS 7/11/2019 17:42:51'!
registrarSeguroA: unUsuario 
	
	usuariosRegistrados add: unUsuario .! !

!MiniTerminalUnix methodsFor: 'actions private' stamp: 'FS 7/2/2019 18:11:23'!
regresarADirectorioPadre
	
	directorioActual _ directorioActual directorioPadre .! !


!MiniTerminalUnix methodsFor: 'accessing private' stamp: 'FS 7/8/2019 16:46:15'!
elArchivoDeTextoLlamado: nombreDelArchivoDeTexto

	^directorioActual encontrarElArchivoDeTextoLlamado: nombreDelArchivoDeTexto .! !

!MiniTerminalUnix methodsFor: 'accessing private' stamp: 'FS 7/16/2019 23:48:26'!
elArchivoLlamado: nombreDeArchivoUnix 
	
	^directorioActual encontrarAlArchivo: nombreDeArchivoUnix ! !

!MiniTerminalUnix methodsFor: 'accessing private' stamp: 'deg 7/19/2019 16:08:31'!
elDirectorioLlamado: nombreDelDirectorio 
	
	self flag: #errorLeve.
		"El mensaje #encontrarAlSubdirectorio: esta de mas
		Se podria poner aca el #detect:ifNone:"
	
	^directorioActual encontrarAlSubdirectorio: nombreDelDirectorio ! !

!MiniTerminalUnix methodsFor: 'accessing private' stamp: 'FS 7/14/2019 16:38:21'!
elUsuarioLlamado: unNombreDeUsuario 
	
	^usuariosRegistrados detect: [:unUsuarioRegistrado | unUsuarioRegistrado esElUsuarioLlamado: unNombreDeUsuario]! !

!MiniTerminalUnix methodsFor: 'accessing private' stamp: 'FS 7/14/2019 17:19:35'!
encontrarSeguroAlUsuarioConElNombre: unNombreDeUsuario yContraseña: unaContraseña 

	^usuariosRegistrados detect: [:unUsuario | unUsuario tieneElNombre: unNombreDeUsuario yLaContraseña: unaContraseña ]! !


!MiniTerminalUnix methodsFor: 'initialization' stamp: 'FS 7/17/2019 16:35:48'!
inicializaConElUsuarioGuest

	usuariosRegistrados _ Set with: Usuario rootDeLaTerminalUnix with: (Usuario comunConElNombre: 'guest' yLaContraseña:'guest').
	usuarioActual _ self elUsuarioLlamado: 'guest'.
	directorioRoot _ (DirectorioNulo directorioPorDefecto) directorioRootParaUnaNuevaTerminal .
	directorioActual _ directorioRoot .! !


!MiniTerminalUnix methodsFor: 'testing' stamp: 'FS 7/2/2019 18:11:23'!
estaEnElDirectorio: unNombreDeDirectorio 

	^directorioActual esElDirectorioLlamado: unNombreDeDirectorio .! !

!MiniTerminalUnix methodsFor: 'testing' stamp: 'FS 7/2/2019 18:11:23'!
seEncuentraEnDirectorioRoot
	
	^directorioActual = directorioRoot .! !

!MiniTerminalUnix methodsFor: 'testing' stamp: 'FS 7/16/2019 23:51:30'!
suDirectorioActualContieneA: unNombreDeArchivoUnix 

	^directorioActual contieneElArchivoLlamado: unNombreDeArchivoUnix ! !

!MiniTerminalUnix methodsFor: 'testing' stamp: 'FS 7/14/2019 17:13:44'!
tieneAlUsuarioConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña 
	
	^usuariosRegistrados anySatisfy: [:unUsuario | unUsuario tieneElNombre: unNombreDeUsuario yLaContraseña: unaContraseña ]! !

!MiniTerminalUnix methodsFor: 'testing' stamp: 'FS 7/16/2019 23:51:54'!
tieneAlUsuarioLlamado: unNombreDeUsuario 

	^usuariosRegistrados anySatisfy: [: unUsuarioRegistrado | unUsuarioRegistrado esElUsuarioLlamado: unNombreDeUsuario ]! !

!MiniTerminalUnix methodsFor: 'testing' stamp: 'FS 7/17/2019 16:36:30'!
tieneLogueadoA: unNombreDeUsuario 

	^usuarioActual esElUsuarioLlamado: unNombreDeUsuario .! !

!MiniTerminalUnix methodsFor: 'testing' stamp: 'FS 6/20/2019 15:44:59'!
tieneUsuarios
	
	^usuariosRegistrados isEmpty not.! !


!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/16/2019 11:25:35'!
accederAlSubdirectorio: unNombreDeSubdirectorio 
	
	| directorioBuscado |
	directorioBuscado _ self elDirectorioLlamado: unNombreDeSubdirectorio .
	
	(EstadoParaLeerUnArchivo elUsuario: usuarioActual puedeAbrir: directorioBuscado ) accederAlDirectorio: directorioBuscado para: self .! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/16/2019 11:33:52'!
cambiarNombreDe: unArchivo a: nuevoNombreDeArchivo 
	
	| archivoAModificar |
	archivoAModificar _ self elArchivoLlamado: unArchivo .
	
	(EstadoParaEscribirArchivos elUsuario: usuarioActual puedeEscribirEn: archivoAModificar) cambiarNombreDe: archivoAModificar por: nuevoNombreDeArchivo .! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/17/2019 15:54:53'!
cerrarSesion
	
	self iniciarSesionConElUsuarioDeNombre: 'guest' yContraseña: 'guest'.! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/17/2019 16:34:44'!
crearArchivoDeTextoLlamado: nombreDelArchivoTextual 

	(EstadoParaEscribirArchivos elUsuario: usuarioActual  puedeEscribirEn: directorioActual ) crearArchivoDeTextoLlamado: nombreDelArchivoTextual para: self .! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/17/2019 16:35:03'!
crearArchivoDeTextoLlamado: unNombreDelArchivo queContiene: contenidoTextual 

	(EstadoParaEscribirArchivos elUsuario: usuarioActual  puedeEscribirEn: directorioActual ) crearArchivoDeTextoLlamado: unNombreDelArchivo queContiene: contenidoTextual para: self.! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/16/2019 11:33:52'!
crearSubdirectorioLlamado: unNombreParaNuevoDirectorio 

	(EstadoParaEscribirArchivos elUsuario: usuarioActual  puedeEscribirEn: directorioActual ) crearSubdirectorioLlamado: unNombreParaNuevoDirectorio para: self.! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/16/2019 23:48:10'!
ejecutarElArchivo: nombreDelArchivoDeTexto 

	| archivoBuscado |
	archivoBuscado _ self elArchivoDeTextoLlamado: nombreDelArchivoDeTexto .
	
	^(EstadoParaEjecutarArchivos elUsuario: usuarioActual  puedeEjecutar: archivoBuscado) ejecutarElArchivo: archivoBuscado.
	
	! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/16/2019 11:47:38'!
eliminarAlUsuarioLlamado: unNombreDeUsuario 

	(EstadosParaAccionarConUsuarios chequearAlUsuario: usuarioActual ) eliminarAlUsuarioConNombre: unNombreDeUsuario en: self! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/16/2019 23:48:58'!
eliminarElArchivoLlamado: nombreDeArchivoUnix 

	| archivoAEliminar |
	archivoAEliminar _ directorioActual encontrarAlArchivo: nombreDeArchivoUnix .
	
	(EstadoParaEscribirArchivos elUsuario: usuarioActual  puedeEscribirEn: archivoAEliminar) eliminarElArchivoLlamado: nombreDeArchivoUnix para: directorioActual .! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:28'!
escribir: contenidoTextualAEscribir enElArchivo: archivoAEscribir 

	| archivoParaEscribir |
	archivoParaEscribir _ directorioActual encontrarElArchivoDeTextoLlamado: archivoAEscribir .
	
	(EstadoParaEscribirArchivos elUsuario: usuarioActual  puedeEscribirEn: archivoParaEscribir ) escribir: contenidoTextualAEscribir
																													 enElArchivo: archivoParaEscribir .! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/17/2019 16:35:26'!
generarArchivoRealConInformacionDelContenido

	(directorioActual nombre,'.txt') asFileEntry forceWriteStreamDo: [:fileStream| self escribirInformacionDeContenidoEn: fileStream].

	
	! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/16/2019 18:31:06'!
generarInformacionDelContenidoDelDirectorioActual

	| unStream |
	unStream _ WriteStream on:''.
		
	self escribirInformacionDeContenidoEn: unStream .
	
	^unStream.! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/17/2019 16:36:07'!
iniciarSesionConElUsuarioDeNombre: unNombreDeUsuario yContraseña: unaContraseña

	(EstadoParaIniciarSesion puedeIniciarSesionConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña en: self) 
																		iniciarSesionConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña para: self! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/16/2019 23:49:51'!
leerElArchivo: nombreDeArchivoDeTexto 
	
	| archivoALeer |
	archivoALeer _ self elArchivoDeTextoLlamado: nombreDeArchivoDeTexto .
	
	^(EstadoParaLeerUnArchivo elUsuario: usuarioActual  puedeAbrir:archivoALeer) leerSeguroA: archivoALeer .! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'deg 7/19/2019 15:37:13'!
registrarUnUsuarioConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña 

	self flag: #errorLeve.
		"Los nombres
			EstadosParaAccionarConUsuarios
				NoPuedeRealizarla 
				PuedeRealizarla
				
		no son suficientemente expresivos, no es claro que rol cumple y que significa accionar
		
		Podrian llamarse, por ejemplo
			GestionDeUsuario
				GestionDeUsuarioAutorizada
				 GestionDeUsuarioNoAutorizada
				
		Y en lugar del mensaje #chequearAlUsuario: unUsuario
		
		podria ser GestionDeUsuario llevadaACaboPor: unUsuario"

	(EstadosParaAccionarConUsuarios chequearAlUsuario: usuarioActual ) registrarUnUsuarioConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña en: self.
	! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/17/2019 00:01:35'!
sobrescribir: contenidoTextualASobreescribir enElArchivo: nombreDelArchivoDeTexto 

	| archivoParaSobreescribir |
	archivoParaSobreescribir _ directorioActual encontrarElArchivoDeTextoLlamado: nombreDelArchivoDeTexto .
	
	(EstadoParaEscribirArchivos elUsuario: usuarioActual  puedeEscribirEn: archivoParaSobreescribir ) sobrescribir: contenidoTextualASobreescribir 				enElArchivo: archivoParaSobreescribir .! !

!MiniTerminalUnix methodsFor: 'actions' stamp: 'FS 7/16/2019 12:16:11'!
volverADirectorioPadre

	(EstadoParaVolverADirectorioPadre estaEnSuDirectorioRootLaTerminal:self ) volverAlDirectorioAnteriorPara: self .! !


!MiniTerminalUnix methodsFor: 'accessing' stamp: 'FS 6/20/2019 16:38:07'!
cantidadDeUsuariosRegistrados
	
	^usuariosRegistrados size! !

!MiniTerminalUnix methodsFor: 'accessing' stamp: 'FS 7/2/2019 18:11:41'!
directorioActual

	^directorioActual ! !

!MiniTerminalUnix methodsFor: 'accessing' stamp: 'FS 7/16/2019 01:05:27'!
directorioRoot
	
	^directorioRoot! !

!MiniTerminalUnix methodsFor: 'accessing' stamp: 'FS 7/12/2019 20:01:01'!
informacionDeArchivosActuales
	
	^directorioActual informacionDeArchivosActuales! !

!MiniTerminalUnix methodsFor: 'accessing' stamp: 'FS 7/16/2019 12:43:29'!
nombreDeArchivosEnDirectorioActual
	
	^directorioActual nombresDeSusArchivos.! !

!MiniTerminalUnix methodsFor: 'accessing' stamp: 'FS 7/3/2019 23:51:17'!
nombresDeUsuariosRegistrados
	
	^usuariosRegistrados collect: [:unUsuario | unUsuario nombreDeUsuario ]! !

!MiniTerminalUnix methodsFor: 'accessing' stamp: 'FS 7/4/2019 00:15:26'!
permisosActualesDelArchivo: nombreDeUnArchivoUnix 

	| archivoBuscado |
	archivoBuscado _ directorioActual encontrarAlArchivo: nombreDeUnArchivoUnix .
	
	^archivoBuscado mostrarPermisosHabilitados .! !

!MiniTerminalUnix methodsFor: 'accessing' stamp: 'FS 7/14/2019 17:16:22'!
permisosDeDirectorioActual
	
	^directorioActual mostrarPermisosHabilitados .! !

!MiniTerminalUnix methodsFor: 'accessing' stamp: 'FS 6/20/2019 16:23:27'!
usuarioActual

	^usuarioActual! !

!MiniTerminalUnix methodsFor: 'accessing' stamp: 'FS 6/20/2019 15:39:34'!
usuarios
	
	^usuariosRegistrados ! !


!MiniTerminalUnix methodsFor: 'actions permissions' stamp: 'FS 7/16/2019 23:47:33'!
deshabilitarPermisoDeEjecucionAlArchivoLlamado: nombreDeUnArchivoUnix 
	
	| unArchivoBuscado |
	unArchivoBuscado _ directorioActual encontrarAlArchivo: nombreDeUnArchivoUnix.
	
	(EstadoParaSetearPermisos elUsuario: usuarioActual puedeSetearlePermisosA:unArchivoBuscado) deshabilitarPermisoDeEjecucionAlArchivo: unArchivoBuscado.! !

!MiniTerminalUnix methodsFor: 'actions permissions' stamp: 'FS 7/16/2019 23:47:37'!
deshabilitarPermisoDeEscrituraAlArchivoLlamado: nombreDeUnArchivoUnix 

	| archivoBuscado |
	archivoBuscado _ directorioActual encontrarAlArchivo: nombreDeUnArchivoUnix .
	
	(EstadoParaSetearPermisos elUsuario: usuarioActual  puedeSetearlePermisosA: archivoBuscado) deshabilitarPermisoDeEscrituraAlArchivo: archivoBuscado .! !

!MiniTerminalUnix methodsFor: 'actions permissions' stamp: 'FS 7/16/2019 23:47:41'!
deshabilitarPermisoDeLecturaAlArchivoLlamado: nombreDeUnArchivoUnix
 
	| archivoBuscado |
	archivoBuscado _ directorioActual encontrarAlArchivo: nombreDeUnArchivoUnix .
	
	(EstadoParaSetearPermisos elUsuario: usuarioActual  puedeSetearlePermisosA: archivoBuscado) deshabilitarPermisoDeLecturaAlArchivo: archivoBuscado .! !

!MiniTerminalUnix methodsFor: 'actions permissions' stamp: 'FS 7/16/2019 23:47:45'!
habilitarPermisoDeEjecucionAlArchivoLlamado: nombreDeUnArchivoUnix 

	| unArchivoBuscado |
	unArchivoBuscado _ directorioActual encontrarAlArchivo: nombreDeUnArchivoUnix.
	
	(EstadoParaSetearPermisos elUsuario: usuarioActual  puedeSetearlePermisosA:unArchivoBuscado) habilitarPermisoDeEjecucionAlArchivo: unArchivoBuscado.! !

!MiniTerminalUnix methodsFor: 'actions permissions' stamp: 'FS 7/16/2019 23:47:48'!
habilitarPermisoDeEscrituraAlArchivoLlamado: nombreDeUnArchivoUnix
 
	| archivoBuscado |
	archivoBuscado _ self elArchivoLlamado: nombreDeUnArchivoUnix .
	
	(EstadoParaSetearPermisos elUsuario: usuarioActual  puedeSetearlePermisosA: archivoBuscado) habilitarPermisoDeEscrituraAlArchivo: archivoBuscado .! !

!MiniTerminalUnix methodsFor: 'actions permissions' stamp: 'FS 7/16/2019 23:47:53'!
habilitarPermisoDeLecturaAlArchivoLlamado: nombreDeUnArchivoUnix
	
	| archivoBuscado |
	archivoBuscado _ directorioActual encontrarAlArchivo: nombreDeUnArchivoUnix .
	
	(EstadoParaSetearPermisos elUsuario: usuarioActual  puedeSetearlePermisosA: archivoBuscado) habilitarPermisoDeLecturaAlArchivo: archivoBuscado .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MiniTerminalUnix class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
MiniTerminalUnix class
	instanceVariableNames: ''!

!MiniTerminalUnix class methodsFor: 'instance creation' stamp: 'FS 6/22/2019 10:14:32'!
terminalNuevaConElUsuarioGuest

	^self new inicializaConElUsuarioGuest ! !


!classDefinition: #Permiso category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #Permiso
	instanceVariableNames: 'tipo estado'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
!Permiso commentStamp: '<historical>' prior: 0!
El colaborador 'estado'  cuando está en: 
	-1, representa que el permiso está habilitado.
	-0, representa que el permiso está deshabilitado.!


!Permiso methodsFor: 'testing' stamp: 'FS 7/6/2019 15:03:17'!
esDeEjecucion
	
	^tipo = 'Ejecucion'! !

!Permiso methodsFor: 'testing' stamp: 'FS 7/6/2019 15:00:53'!
esDeEscritura
	
	^tipo = 'Escritura'.! !

!Permiso methodsFor: 'testing' stamp: 'FS 7/6/2019 15:51:56'!
esDeLectura
	
	^tipo = 'Lectura'.! !

!Permiso methodsFor: 'testing' stamp: 'FS 7/15/2019 00:25:07'!
estaHabilitado
	
	^estado = 1! !


!Permiso methodsFor: 'accessing' stamp: 'FS 7/6/2019 14:58:34'!
tipo
	
	^tipo! !


!Permiso methodsFor: 'actions private' stamp: 'FS 7/15/2019 00:25:07'!
deshabilitarPermiso
	
	estado _ 0.! !

!Permiso methodsFor: 'actions private' stamp: 'FS 7/15/2019 00:25:07'!
habilitarPermiso
	
	estado _ 1.! !


!Permiso methodsFor: 'initialization' stamp: 'deg 7/19/2019 14:13:36'!
inicializarPermisoDeEjecucion
	
	tipo _ 'Ejecucion'.
	
	self flag: #observacion.
	
	"en lugar de"
	
	estado _ 0.
	
	"podrian indicarse como
	
	habilitado := false
	
	y en  #estaHabilitado simplemente retornar el colaborador en lugar de hacer  ^estado = 1"! !

!Permiso methodsFor: 'initialization' stamp: 'FS 7/15/2019 00:25:07'!
inicializarPermisoDeEscritura
	
	tipo _ 'Escritura'.
	estado _ 0.! !

!Permiso methodsFor: 'initialization' stamp: 'FS 7/15/2019 00:25:07'!
inicializarPermisoDeLectura
	
	tipo _ 'Lectura'.
	estado _ 1.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Permiso class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Permiso class
	instanceVariableNames: ''!

!Permiso class methodsFor: 'instance creation' stamp: 'FS 7/6/2019 14:57:30'!
generarPermisoDeEjecucion
	
	^self new inicializarPermisoDeEjecucion ! !

!Permiso class methodsFor: 'instance creation' stamp: 'FS 7/6/2019 14:55:45'!
generarPermisoDeEscritura
	
	^self new inicializarPermisoDeEscritura ! !

!Permiso class methodsFor: 'instance creation' stamp: 'FS 7/6/2019 14:56:06'!
generarPermisoDeLectura
	
	^self new inicializarPermisoDeLectura ! !


!classDefinition: #Usuario category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Object subclass: #Usuario
	instanceVariableNames: 'nombreDeUsuario contraseña tipoDeUsuario'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!

!Usuario methodsFor: 'accessing' stamp: 'FS 6/19/2019 18:33:42'!
contraseña

	^contraseña! !

!Usuario methodsFor: 'accessing' stamp: 'FS 6/19/2019 18:32:47'!
nombreDeUsuario
	
	^nombreDeUsuario.! !


!Usuario methodsFor: 'testing' stamp: 'deg 7/19/2019 15:50:44'!
esElRootOElOwnerDe: unArchivoUnix

	^self esElUsuarioLlamado: 'root' :: or: (unArchivoUnix esPropiedadDelUsuarioLlamado: nombreDeUsuario) .! !

!Usuario methodsFor: 'testing' stamp: 'FS 7/17/2019 16:44:18'!
esElUsuarioLlamado: unNombreDeUsuario 

	^nombreDeUsuario = unNombreDeUsuario! !

!Usuario methodsFor: 'testing' stamp: 'FS 7/12/2019 11:41:26'!
esUnUsuarioRoot
	
	^tipoDeUsuario = 'root'! !

!Usuario methodsFor: 'testing' stamp: 'FS 7/16/2019 11:49:36'!
puedeCrearYEliminarUsuarios
	
	^self esUnUsuarioRoot .! !

!Usuario methodsFor: 'testing' stamp: 'FS 7/17/2019 16:44:45'!
tieneElNombre: unNombreDeUsuario yLaContraseña: unaContraseña 

	^(self tieneElNombre: unNombreDeUsuario ) and: (self tieneLaContraseña: unaContraseña )! !


!Usuario methodsFor: 'initialization private' stamp: 'FS 7/12/2019 11:53:15'!
inicializaConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña 
	
	nombreDeUsuario _ unNombreDeUsuario.
	contraseña _ unaContraseña .! !


!Usuario methodsFor: 'initialization' stamp: 'FS 7/17/2019 16:44:33'!
inicializarUsuarioComunConElNombre: unNombreDeUsuario yConLaContraseña: unaContraseña 
	
	self inicializaConElNombre: unNombreDeUsuario yLaContraseña: unaContraseña.
	tipoDeUsuario _ 'comun'.! !

!Usuario methodsFor: 'initialization' stamp: 'FS 7/15/2019 00:46:18'!
inicializarUsuarioRoot
	
	self inicializaConElNombre: 'root' yLaContraseña: 'admin123' .
	tipoDeUsuario _ 'root'.
	! !


!Usuario methodsFor: 'testing private' stamp: 'FS 7/16/2019 23:54:03'!
tieneElNombre:unNombreDeUsuario

	^unNombreDeUsuario = nombreDeUsuario ! !

!Usuario methodsFor: 'testing private' stamp: 'FS 7/16/2019 23:54:26'!
tieneLaContraseña: unaContraseña

	^contraseña = unaContraseña ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Usuario class' category: #'TrabajoFinal-Objetos-l-s1-2019-Sandoval-Federico'!
Usuario class
	instanceVariableNames: ''!

!Usuario class methodsFor: 'instance creation' stamp: 'FS 7/12/2019 11:35:25'!
comunConElNombre: unNombreDeUsuario yLaContraseña: unaContraseñaParaElUsuario
	
	^self new inicializarUsuarioComunConElNombre: unNombreDeUsuario yConLaContraseña: unaContraseñaParaElUsuario! !

!Usuario class methodsFor: 'instance creation' stamp: 'FS 7/15/2019 00:48:45'!
rootDeLaTerminalUnix
	
	^self new inicializarUsuarioRoot.! !
