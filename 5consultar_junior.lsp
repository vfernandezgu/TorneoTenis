;TRABAJO ESTRUCTURA DE LENGUAJES HECHO POR:
;	-Valentina Fernandez Guerrero
;	-David Santiago Fernandez Dejoy

;Consultar el número de Tenistas que son de categoría JUNIOR para un Torneo de Tenis
;específico.
(defun buscarTenistasJunior ()
    (setq contador 0)
    (setq codTorneo (pedirCodigoTorneo))
    (setq torneo (encontrarEnArray codTorneo))

    (if (null torneo)
        (progn
            (print "El torneo no existe")
            (setq contador -1)
        ) 
        (progn
            (setq cantTenistasTorneo (Torneo-cantidadTenistas torneo))
            (setq tenistasTorneo (Torneo-tenistas torneo))
            (dotimes (i cantTenistasTorneo)
                (setq tenistaaux (aref tenistasTorneo i))
                (if (string= (Tenista-categoria tenistaaux) 'JUNIOR)
                    (setq contador (+ contador 1))
                )
            )
        ) 
    )
    (if 1 contador);retornamos el contador

)