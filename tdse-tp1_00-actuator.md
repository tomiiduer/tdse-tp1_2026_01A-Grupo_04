Modelamos el actuador con un LED.
Modelamos el tiempo que demora el actuador en iniciar/detenerse o completar su tarea a partir de un delay fijo.
### Estados
`ST_LED_OFF` => Actuator detenido
`ST_LED_BLINK_STARTING` => Actuator iniciando
`ST_LED_ON` => Actuator iniciado
`ST_LED_BLINK_STOPPING` => Actuator deteniéndose

### Eventos del modelo system
Descritas en tdse-tp1_00-system.md
`EV_ACT_START`
`EV_ACT_STOP`

### Eventos acciones
`EV_LED_ON` => Actuator encendido
`EV_LED_OFF` => Actuator apagado

### Acciones funciones/variables
LED_toggle();
timer++;
timer = 0;
BlinkTimer++;
BlinkTimer = 0;
DEL_ACT_START => Tiempo que demora el actuador en iniciar 
DEL_ACT_STOP => Tiempo que demora el actuador en detenerse.
DEL_BLINK_STARTING => Período de parpadeo del actuador durante el inicio
DEL_BLINK_STOPPING => Período de parpadeo del actuador durante la detención



| Current State         | Event        | [guard]                          | Next State            | Actions                                     |
| --------------------- | ------------ | -------------------------------- | --------------------- | ------------------------------------------- |
| ST_LED_OFF            | EV_ACT_START |                                  | ST_LED_BLINK_STARTING | timer = 0;<br>BlinkTimer = 0                |
| ST_LED_BLINK_STARTING | tick         | timer >= DEL_ACT_START           | ST_LED_ON             | EV_LED_ON                                   |
| ST_LED_BLINK_STARTING | tick         | BlinkTimer >= DEL_BLINK_STARTING | ST_LED_BLINK_STARTING | timer++;<br>LED_toggle();<br>BlinkTimer = 0 |
| ST_LED_BLINK_STARTING | tick         |                                  | ST_LED_BLINK_STARTING | timer++;<br>BlinkTimer++                    |
| ST_LED_ON             | EV_ACT_STOP  |                                  | ST_LED_BLINK_STOPPING | timer = 0;<br>BlinkTimer = 0                |
| ST_LED_BLINK_STOPPING | tick         | timer >= DEL_ACT_STOP            | ST_LED_OFF            | EV_LED_OFF                                  |
| ST_LED_BLINK_STOPPING | tick         | BlinkTimer >= DEL_BLINK_STOPPING | ST_LED_BLINK_STOPPING | timer++;<br>LED_toggle();<br>BlinkTimer = 0 |
| ST_LED_BLINK_STOPPING | tick         |                                  | ST_LED_BLINK_STOPPING | timer++;<br>BlinkTimer++                    |


Para simplificar el modelo, la maquina de estados no contempla el evento de detener la inicialización del actuator. Debe de esperarse a inicializarse para poder pasar al otro estado

Los estados `ON/OFF`, que se describen como actuator iniciado/detenido se pueden pensar de manera muy directa para un actuador como un motor que gira sin restricciones. Sin embargo, para el caso de una barrera, tal vez no sea tan trivial. En este segundo ejemplo se puede pensar como `iniciado = barrera subida`, `detenido = barrera bajada`. Además, los estados `blink` también se pueden pensar como terceros estados funcionales y no únicamente como estados transitorios. 


### Maquina de estados (boceto)

![[Modelo_Actuator.jpg]]
