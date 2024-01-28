## Tipos de Kernel y sus diferencias
| Tipo | Ventajas | Desventajas |
| --- | -----------| -----| 
| **Monolitico** Todas las funciones del kernel se encuentran en un único archivo binario estático ejecutado en un único espacio de direcciones. Ej: Unix Original | Eficiencia y velocidad en la interfaz de llamada al sistema y comunicación dentro del núcleo. | Difíciles de implementar y ampliar debido a la complejidad. Limitada flexibilidad y escalabilidad. | 
| **Microkernel** Elimina componentes no esenciales del kernel, moviéndolos a programas a nivel de usuario en espacios de direcciones separados. Ej: Darwin (componente de macOS e Ios) | Facilita la ampliación del sistema operativo. Mayor seguridad y confiabilidad, ya que la mayoría de los servicios se ejecutan como procesos de usuario | Rendimiento puede verse afectado por la sobrecarga funcional y la necesidad de copiar mensajes entre espacios de direcciones separados. | 
| **Hibrido** Combina características de diferentes estructuras (monolítica, microkernel) para abordar rendimiento, seguridad y usabilidad. Ej: Linux | Equilibrio entre eficiencia y flexibilidad. Puede abordar problemas específicos de rendimiento y seguridad. | Menos definido y más complejo que los tipos puros. Requiere equilibrar compromisos entre diferentes enfoques de diseño. | 


### Modo usuario
- Tiene como propósito la ejecución de aplicaciones de usuario.
- Valor del bit mode en 1
- Acceso restringido a ciertas instrucciones privilegiadas.
- En el momento del arranque del sistema, el hardware se inicia en modo kernel luego se carga el sistema operativo e inicia las aplicaciones de usuario en modo de usuario

### Modo kernel 
- Tambien denominado supervisor mode, system mode o privileged mode. Tiene como propósito la ejecución del sistema operativo y servicios críticos.
- Valor del bit mode en 0
- Acceso completo a todas las instrucciones
- Cada vez que ocurre una trampa o interrupción, el hardware cambia del modo de usuario al modo kernel (es decir, cambia el estado del bit de modo a 0)

### Interrupción 
- la interrupción es una señal a la CPU emitida por hardware que indica un evento que requiere atención inmediata.
- Es un evento asíncrono y puede ocurrir después de la ejecución de la instrucción

### Trampa 
- La trampa es una señal generada por un programa de usuario que indica al sistema operativo que realice alguna funcionalidad inmediatamente.
- Es un evento sincrónico y puede ocurrir en cualquier momento 



 