;TRABAJO ESTRUCTURA DE LENGUAJES HECHO POR:
;	-Valentina Fernandez Guerrero
;	-David Santiago Fernandez Dejoy

;Se encargar de busca un torneo en aTorneos y mostrar su infomracion
;Devuelve 1 si el torneo se encontro, nil en caso contrario
(defun buscarTorneo ()
    (setq bandera nil)
    (setq cod (pedirCodigoTorneo))
    ;Buscar torneo con el codigo obtenido y verificar si existe
    (setq torneo (encontrarEnArray cod))
    (if (null torneo)
        bandera
        (progn
            (setq bandera (mostrarInfoTorneo torneo))
        ) 
    )
    (if 1 bandera)
)

;Se encarga de pedir un codigo de torneo valido (Numero positivo)
;Retorna el codigo valido
(defun pedirCodigoTorneo ()
    (loop
        (print "Ingrese el codigo del torneo:")
        (setq codigo (read))
        (if (numberp codigo) 
            (if (plusp codigo) (return codigo) (print "El codigo debe ser positivo"))
            (print "El codigo debe ser un valor numerico")
        )
        
    ) 
)

;Se encarga de encontrar en aTorneos el torneo con el codigo
;enviado por parametro
;Retorna el torneo si lo encontro, NIL en caso contrario
(defun encontrarEnArray (codigo)
    (setq auxTorneo nil)
    (dotimes (i cantidadTorneos)
        (setq torneo (aref aTorneos i))
        (if (eq (Torneo-codigo torneo) codigo)
            (setq auxTorneo torneo))
    )
  (if 1 auxTorneo)
)


;Muestra la informacion del torneo
;Retorna 1 confirmando que se mostro la informacion de manera correcta
(defun mostrarInfoTorneo (torneo)
    (format t "Informacion del Torneo:~%")
    (format t "Codigo: ~A~%" (Torneo-codigo torneo))
    (format t "Nombre: ~A~%" (Torneo-nombre torneo))
    (format t "Cuantia del Premio: ~A~%" (Torneo-cantidadPremio torneo))
    (if (plusp (Torneo-cantidadTenistas torneo))
        (progn       
            (dotimes (i (Torneo-cantidadTenistas torneo))
                (setq cont (+ i 1))
                (format t "Informacion del tenista #~D ~%" cont)
                (mostrarInfoTenista (aref (Torneo-tenistas torneo) i))
            )
        )
        (format t "Este torneo no tiene tenistas registrados ~%")
    )
    
    (if 1 1);Retorna 1 una vez mostrada toda la informacion
)