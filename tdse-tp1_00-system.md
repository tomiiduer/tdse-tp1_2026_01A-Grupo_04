### Estados
ST_SYS_STOP => El sistema se está deteniendo.
ST_SYS_IDLE => El sistema está esperando un evento en forma de señal del modelo sensor para procesarla.
ST_SYS_ON => El sistema se está inicializando.

### Eventos que llegan del modelo sensor (señales)
EV_SYS_OFF => Modelo sensor apagado
EV_SYS_ON => Modelo sensor encendido

### Eventos que llegan del modelo actuator (señales)
`EV_SYS_STARTING` => Modelo actuator iniciando
`EV_SYS_STARTED` => Modelo actuator iniciado
`EV_SYS_STOPPING` => Modelo actuator deteniéndose
`EV_SYS_STOPPED` => Modelo actuator detenido

### Acciones
`EV_ACT_START` => Señal al modelo *ACTUATOR* de iniciar 
`EV_ACT_STOP` => Señal al modelo *ACTUATOR* de detener 

### System Statechart - State Transition Table

| Current State | Event           | [Guard] | Next State  | Actions      |
| ------------- | --------------- | ------- | ----------- | ------------ |
| ST_SYS_IDLE   | EV_SYS_ON       |         | ST_SYS_ON   | EV_ACT_START |
| ST_SYS_ON     | EV_SYS_STARTING |         | ST_SYS_ON   |              |
| ST_SYS_ON     | EV_SYS_STARTED  |         | ST_SYS_IDLE |              |
| ST_SYS_IDLE   | EV_SYS_OFF      |         | ST_SYS_OFF  | EV_ACT_STOP  |
| ST_SYS_OFF    | EV_SYS_STOPPING |         | ST_SYS_OFF  |              |
| ST_SYS_OFF    | EV_SYS_STOPPED  |         | ST_SYS_IDLE |              |

No existen guarda mayores porque el modelo define los cambios de estados a partir de las señales entrantes del modelo sensor y actuador.

### Maquina de estados (boceto)

![[Modelo_System.jpg]]