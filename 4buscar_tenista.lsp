;TRABAJO ESTRUCTURA DE LENGUAJES HECHO POR:
;	-Valentina Fernandez Guerrero
;	-David Santiago Fernandez Dejoy

;Busca un tenista especifico en un torneo especifico
;Retorna  1 si la consulta tuvo resultados , nil en caso contrario
(defun buscarTenista ()
    (setq bandera nil)
    (setq codTorneo (pedirCodigoTorneo))
    (setq torneo (encontrarEnArray codTorneo))
    ;Verifica si el torneo existe
    (if (null torneo)
        (progn
            (print "El torneo no existe")
        ) 
        (progn
            (setq codTenista (pedirCodigoTenista))
            (setq tenistasTorneo (Torneo-tenistas torneo))
            (setq cantTenistasTorneo (Torneo-cantidadTenistas torneo))
            (dotimes (i cantTenistasTorneo)
                (setq tenista (aref tenistasTorneo i))
                (if (eq codTenista (Tenista-codigo tenista)) 
                    (progn
                        (print "Informacion del tenista")
                        (setq bandera (mostrarInfoTenista tenista))
                    )
                )
                (if bandera bandera);Retorna 1 si encontro resultados    
            )
        ) 
    )
    (if 1 bandera)

)

;Se encarga de mostrar la informacion de un tenista
;Retorna 1 cuando la informacion se mostro completamente
(defun mostrarInfoTenista (tenista)
    (format t "Codigo: ~S~%" (Tenista-codigo tenista))
    (format t "Nombre: ~S~%" (Tenista-nombre tenista))
    (format t "Categoria: ~S~%" (Tenista-categoria tenista))
    (if 1 1);Retorna 1  una vez que se mostro toda la informacion
)