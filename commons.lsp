;TRABAJO ESTRUCTURA DE LENGUAJES HECHO POR:
;	-Valentina Fernandez Guerrero
;	-David Santiago Fernandez Dejoy

;ARCHIVO DE INICIO

;Creacion estructura para el tenista
(defstruct Tenista
    codigo
    nombre
    categoria
)

;Creacion estructura para el torneo
(defstruct Torneo
    codigo
    nombre
    cantidadPremio
    tenistas
    cantidadTenistas
)

;Creacion Array GLOBAL de torneos
(setq aTorneos (make-array 2))

;Contador torneos registrados GLOBAL
(setq cantidadTorneos 0)

;Lista GLOBAL que guarda las categorias disponibles
(setq categorias '(NOVATO JUNIOR SENIOR))

;Inicializando array en 0
(dotimes (i 2)
    (setf (aref aTorneos i) 0)
)
