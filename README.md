# TorneoTenis
Implementación de un Sistema de Registro y Consulta para Torneos de Tenis en XLISP
Planteamiento del Problema:

El objetivo es desarrollar un sistema de gestión para un Torneo de Tenis que permita el registro y consulta de información sobre torneos y tenistas participantes. Se contemplan dos torneos en total, cada uno con la capacidad de registrar hasta tres tenistas.

Funcionalidades del Sistema:

Registro de Torneo de Tenis:

A través de un menú de opciones, se podrá ingresar la información de cada torneo, incluyendo el código del torneo, el nombre y la cuantía del premio.
Registro de Tenista:

El sistema permitirá la inclusión de información detallada de cada tenista, como el código del tenista, nombre y categoría, con las categorías posibles: NOTAVO, JUNIOR, SENIOR.
Búsqueda de Torneo por Código:

Se brindará la opción de buscar un torneo específico mediante su código. En caso de existir, se mostrarán todos los campos asociados al torneo y los tenistas participantes. En caso contrario, se informará al usuario sobre la inexistencia del torneo.
Búsqueda de Tenista para un Torneo Específico:

El usuario podrá buscar un tenista en un torneo determinado proporcionando el código del torneo y el código del tenista. Si ambos existen, se mostrarán todos los detalles del tenista. Se gestionarán los diversos casos en los que la consulta no se realice de manera satisfactoria, informando al usuario sobre lo ocurrido.
Consulta de Tenistas JUNIOR en un Torneo:

Se permitirá al usuario consultar el número de tenistas de categoría JUNIOR en un torneo específico. El código del torneo será solicitado al usuario, y se proporcionarán mensajes de salida claros.

Consideraciones Adicionales:
El sistema deberá manejar la información de los torneos como un vector de Torneo de Tenis, contemplando la posibilidad de hasta dos torneos.
La categoría del tenista se restringe a los valores: NOTAVO, JUNIOR, SENIOR.
