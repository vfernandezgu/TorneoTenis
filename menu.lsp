;TRABAJO ESTRUCTURA DE LENGUAJES HECHO POR:
;	-Valentina Fernandez Guerrero
;	-David Santiago Fernandez Dejoy
(load "commons.lsp" )
(load "1registrar_torneo.lsp" )
(load "2registrar_tenista.lsp" )
(load "3buscar_torneo.lsp" )
(load "4buscar_tenista.lsp" )
(load "5consultar_junior.lsp" )


(loop
      
	(print " ===========================================")
	(print " |                M E N U                  |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1.   Registrar torneo de tenis ")
	(print "   2.   Registrar tenista ")
	(print "   3.   Buscar torneo de tenis por CODIGO ")
	(print "   4.   Buscar tenista en un torneo ")
	(print "   5.   Consultar cantidad de tenistas JUNIOR ")
	(print "   6.    Salir.")
	(format t" ~%")
	(print "   Digite la opcion:")
      (setq opcion (read))	
  	(case opcion
		(1 (progn
			(print "REGISTRANDO NUEVO TORNEO...")
			(setq retornoRegistro (registrarTorneo))
			(if (eq retornoRegistro 1)(print "El torneo se registro exitosamente")(print "El torneo no se pudo registrar"))

		))
		(2 (progn
			(print "REGISTRANDO UN TENISTA...")
			(setq retornoRegistro (registrarTenista))
			(if (eq retornoRegistro 1)(print "El tenista se registro exitosamente")(print "El tenista no se pudo registrar"))

		))
		
		(3 (progn
			(print "BUSCAR TORNEO ...")
			(setq retornoRegistro (buscarTorneo))
			(if (eq retornoRegistro 1)(print "--------Informacio Completa--------")(print "No se encontro informacion"))

		))
		(4 (progn
			(print "BUSCAR TENISTA ...")
			(setq retornoRegistro (buscarTenista))
			(if (eq retornoRegistro 1)(print "--------Informacio Completa--------")(print "No se encontro informacion"))

		))
		(5 (progn
			(setq cantidad (buscarTenistasJunior))
			(if (minusp cantidad) (print "No se encontro informacion")  (format t "La cantidad de tenistas JUNIOR es: ~D" cantidad))
		))
		(6 (print "Saliendo..."))
	    (otherwise (print "Opcion no disponible"))
	)
	(when (eq opcion 6) (print "Gracias por usarme :') Adios...")(return))
  )




