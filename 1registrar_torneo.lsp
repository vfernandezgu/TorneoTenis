;TRABAJO ESTRUCTURA DE LENGUAJES HECHO POR:
;	-Valentina Fernandez Guerrero
;	-David Santiago Fernandez Dejoy


;Se encarga de registrar un torneo en el array global aTorneos
;Retorna 1 si se pudo registar, 0 en caso contrario
(defun registrarTorneo ()
    (if (> cantidadTorneos 1) 
        (progn
            (print "ERROR : Se ha completado el limite de torneos que se pueden registrar (2)")
            (if 1 0) ;Retorna 0 como señal de que el torneo no se pudo registrar
        )
        (progn 
            ;Pedir informacion del torneo 
            ;Si el codigo ya existe, da error
            (setq codigoInput (pedirCodigoTorneo)) 
            (if (null (encontrarEnArray codigoInput))
                (progn
                     (print "Ingrese el nombre del torneo:")
                    (setq nombreInput (read))
                    (setq premioInput (pedirValorPremioTorneo))

                    ;Llenar la informacion en el nuevo torneo
                    (setq nuevoTorneo (make-Torneo))
                    (setf (Torneo-codigo nuevoTorneo) codigoInput)
                    (setf (Torneo-nombre nuevoTorneo) nombreInput)
                    (setf (Torneo-cantidadPremio nuevoTorneo) premioInput)
                    (setf (Torneo-tenistas nuevoTorneo) (make-array 3))
                    (setf (Torneo-cantidadTenistas nuevoTorneo) 0)
                    (setf (aref aTorneos cantidadTorneos) nuevoTorneo)
                    (setq cantidadTorneos (+ cantidadTorneos 1))
                    (if 1 1) ;Retorna 1 como señal de que el torneo se registro
                )
                (progn
                    (print "Ya existe el codigo")
                    (if 1 0);Retorna 0 como señal de que el torneo no se pudo registrar
                )
            )
        )
    )
)


;Se encarga de pedir un valor del premio del torneo valido (Positivo y diferente de 0)
;Retorna el valor del premio
(defun pedirValorPremioTorneo ()
    (loop
        (print "Ingrese el valor del premio:")
        (setq premio (read))
        (cond
            ((numberp premio)
             (if (and (> premio 0) (not (zerop premio)))
                 (return premio)
                 (print "La cantidad debe ser positiva y diferente de 0")))
            (t
             (print "El valor debe ser un numero"))
        )
    ) 
)