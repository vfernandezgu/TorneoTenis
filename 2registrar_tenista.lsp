;TRABAJO ESTRUCTURA DE LENGUAJES HECHO POR:
;	-Valentina Fernandez Guerrero
;	-David Santiago Fernandez Dejoy


;Se encarga de registrar un tenista en un torneo
;Retorna 1 si se registro, 0 en caso contrario
(defun registrarTenista()
    ;Verificar si existen torneos
    (if (zerop cantidadTorneos)
        (progn
            (print "ERROR : No hay torneos registrados")
            (if 1 0) ;Retorna 0 como señal de que el tenista NO se registro
        )
        (progn
            (setq codigoTorneo (pedirCodigoTorneo))
            (setq torneo (encontrarEnArray codigoTorneo))
            ;Verifica si el torneo existe
            (if(null torneo)
                (progn
                    (print "ERROR : No se encontro el torneo con el codigo ingresado")
                    (if 1 0) ;Retorna 0 como señal de que el tenista NO se registro
                )  
                (progn
                    ;Verifica si hay espacio en el torneo para registrar un nuevo turista
                   (if(> (Torneo-cantidadTenistas torneo) 2) 
                        (progn
                            (print "ERROR :El torneo ya no acepta mas tenistas, llego a su limite (3)")
                            (if 1 0) ;Retorna 0 como señal de que el tenista NO se registro
                        )
                        (progn
                            ;Pedir informacion del tenista
                            (setq codigoInput (pedirCodigoTenista))
                           
                            
                            (setq tenistasTorneo (Torneo-tenistas torneo))
                            (setq cantTenistasTorneo (Torneo-cantidadTenistas torneo))
                            
                            (setq bandera 0)

                            (dotimes (i cantTenistasTorneo)
                                (setq tenista (aref tenistasTorneo i))
                                (if (eq codigoInput (Tenista-codigo tenista)) 
                                    (progn
                                        (setq bandera 1)
                                    )
                                )
                            )

                            (if (eq bandera 1) 
                                (progn
                                    (print "El codigo del tenista ya existe")
                                    (if 1 0);Retorna 0 como señal de que el tenista NO se registro)
                                )
                                (progn
                                    (print "Ingrese el nombre del tenista:")
                                    (setq nombreInput (read))
                                    (setq categoriaInput (pedirCategoriaTenista))

                                    ;Llenar la informacion en el nuevo tenista
                                    (setq nuevoTenista (make-Tenista))
                                    (setf (Tenista-codigo nuevoTenista) codigoInput)
                                    (setf (Tenista-nombre nuevoTenista) nombreInput)
                                    (setf (Tenista-categoria nuevoTenista) categoriaInput)
                                    (setf (aref (Torneo-tenistas torneo) (Torneo-cantidadTenistas torneo)) nuevoTenista)
                                    (setf (Torneo-cantidadTenistas torneo) (+ (Torneo-cantidadTenistas torneo) 1))
                                    (if 1 1) ;Retorna 1 como señal de que el tenista se registro)
                                )
                            )
                        )  
                    )
                )
            )
        )
    )
    

)

;Se encarga de pedir la categoría del tenista,  solo puede
;tomat los valores: NOTAVO, JUNIOR, SENIOR. Se uso una lista (categorias)
;para guardar esta informacion, esta lista se encuntra en "commons.lsp"
;Retorna una categoria del tenista valida
(defun pedirCategoriaTenista ()
    (setq band 0)
    (loop
        (print "Ingrese la categoria del tenista:")
        (setq categoria (read))
        (dolist (i categorias)
            (if (equal categoria i) (setq band 1))
        )
        (when (equal band 1) (return categoria))
        (print "La categoria ingresada no es valida!!")
    )

)



;Se encarga de pedir un codigo de tenista valido (Numero postivo)
;Retorna el codigo
(defun pedirCodigoTenista ()
    (loop
        (print "Ingrese el codigo del tenista:")
        (setq codigo (read))
        (if (numberp codigo) 
            (if (plusp codigo) (return codigo) (print "El codigo debe ser positivo"))
            (print "El codigo debe ser un valor numerico")
        )
    ) 
)

