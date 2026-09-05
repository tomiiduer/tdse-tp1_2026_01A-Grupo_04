Modelamos el actuador con un LED.
Modelamos el tiempo que demora el actuador en iniciar/detenserse o completar su tarea a partir de un delay fijo.
### Estados
`ST_LED_OFF` => Actuator detenido
`ST_LED_BLINK` => Actuator iniciando/deteniendose
`ST_LED_ON` => Actuator iniciado

### Eventos del modelo system
Descritas en tdse-tp1_00-system.md
`EV_ACT_START`
`EV_ACT_STOP`

### Eventos acciones (señales que se envian al modelo system)
descritas en tdse-tp1_00-system.md
`EV_SYS_STARTED`
`EV_SYS_STOPPED`
`EV_SYS_STARTING`
`EV_SYS_STOPPING`

### Acciones funciones/variables
LED_toggle();
timer++;
timer=0;
DEL_ACT_START => Tiempo que demora el actuador en iniciar 
DEL_ACT_STOP => TIempo que demora el actuador en detenerse.



| Current State | Event        | [guard]                | Next State   | Actions                    |
| ------------- | ------------ | ---------------------- | ------------ | -------------------------- |
| ST_LED_OFF    | EV_ACT_START |                        | ST_LED_BLINK | EV_SYS_STARTING            |
| ST_LED_BLINK  | tick         |                        | ST_LED_BLINK | LED_toggle():<br>timer++;  |
| ST_LED_BLINK  | tick         | timer >= DEL_ACT_START | ST_LED_ON    | EV_SYS_STARTED<br>timer=0; |
| ST_LED_ON     | EV_ACT_STOP  |                        | ST_LED_BLINK | EV_SYS_STOPPING            |
| ST_LED_BLINK  | tick         |                        | ST_LED_BLINK | LED_toggle();<br>timer++;  |
| ST_LED_BLINK  | tick         | timer>=DEL_ACT_STOP    | ST_LED_OFF   | EV_SYS_STOPPED<br>timer=0; |


Para simplificar el modelo, la maquina de estados no contempla el evento de detener la inicialización del actuator. Debe de esperarse a inicializarse para poder pasar al otro estado

Los estados `ON/OFF`, que se describen como actuator iniciado/detenido se pueden pensar de manera muy directa para un actuador como un motor que gira sin restricciones. Sin embargo, para el caso de una barrera, tal vez no sea tan trivial. En este segundo ejemplo se puede pensar como `iniciado = barrera subida`, `detenido = barrera bajada`. Además, los estados `blink` también se pueden pensar como terceros estados funcionales y no únicamente como estados transitorios. 


### Maquina de estados (boceto)

![[Modelo_Actuator.jpg]]