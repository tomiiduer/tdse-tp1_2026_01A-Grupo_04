### Estados
ST_SYS_IDLE => El sistema está esperando un evento en forma de señal de los modelos sensores para procesarla.
ST_SYS_CAM_ON => Se procesa la señal de cámara encendida.
ST_SYS_CAM_OFF => Se procesa la señal de cámara apagada.
ST_SYS_BTN_ON => Se procesa la señal de botón encendido.
ST_SYS_BTN_OFF => Se procesa la señal de botón apagado.
ST_SYS_COIL_ON => Se procesa la señal de lazo inductivo (coil) encendido.
ST_SYS_COIL_OFF => Se procesa la señal de lazo inductivo (coil) apagado.

### Eventos que llegan de los modelos sensores (señales)
EV_CAM_ON => Modelo cámara encendido
EV_CAM_OFF => Modelo cámara apagado
EV_BTN_ON => Modelo botón encendido
EV_BTN_OFF => Modelo botón apagado
EV_COIL_ON => Modelo lazo inductivo encendido
EV_COIL_OFF => Modelo lazo inductivo apagado

### Acciones
`EV_ACT_DISP_ON` => Señal al modelo *ACTUATOR* (display) de encender
`EV_ACT_DISP_OFF` => Señal al modelo *ACTUATOR* (display) de apagar
`EV_ACT_PRINT_TICKET` => Señal al modelo *ACTUATOR* (impresora) de imprimir ticket
`EV_ACT_BARR_UP` => Señal al modelo *ACTUATOR* (barrera) de subir
`EV_ACT_BARR_DOWN` => Señal al modelo *ACTUATOR* (barrera) de bajar

### System Statechart - State Transition Table

| Current State   | Event        | [Guard] | Next State      | Actions                               |
| --------------- | ------------ | ------- | --------------- | ------------------------------------- |
| ST_SYS_IDLE     | EV_CAM_ON    |         | ST_SYS_CAM_ON   |                                       |
| ST_SYS_CAM_ON   | tick         |         | ST_SYS_IDLE     | EV_ACT_DISP_ON                        |
| ST_SYS_IDLE     | EV_CAM_OFF   |         | ST_SYS_CAM_OFF  |                                       |
| ST_SYS_CAM_OFF  | tick         |         | ST_SYS_IDLE     | EV_ACT_DISP_OFF                       |
| ST_SYS_IDLE     | EV_BTN_ON    |         | ST_SYS_BTN_ON   |                                       |
| ST_SYS_BTN_ON   | tick         |         | ST_SYS_IDLE     | EV_ACT_PRINT_TICKET<br>EV_ACT_BARR_UP |
| ST_SYS_IDLE     | EV_BTN_OFF   |         | ST_SYS_BTN_OFF  |                                       |
| ST_SYS_BTN_OFF  | tick         |         | ST_SYS_IDLE     |                                       |
| ST_SYS_IDLE     | EV_COIL_ON   |         | ST_SYS_COIL_ON  |                                       |
| ST_SYS_COIL_ON  | tick         |         | ST_SYS_IDLE     |                                       |
| ST_SYS_IDLE     | EV_COIL_OFF  |         | ST_SYS_COIL_OFF |                                       |
| ST_SYS_COIL_OFF | tick         |         | ST_SYS_IDLE     | EV_ACT_BARR_DOWN                      |

No existen guardas mayores porque el modelo define los cambios de estados a partir de las señales entrantes de los modelos sensores.

### Maquina de estados (boceto)

![[Modelo_System.jpg]]
