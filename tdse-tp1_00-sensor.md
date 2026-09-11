Utilizamos obsidian (editor de markdown) para redactar este .md
Modelamos el sensor con un pulsador.
### Eventos Sensor
`EV_BTN_PRESSED` => Se detectó que se  presiona el pulsador
`EV_BTN_RELEASED` => Se detectó que se libera libera el pulsador

### Eventos Acciones del sensor
`EV_SYS_OFF` => Señal al modelo *SYSTEM* que indica que el botón está apagado
`EV_SYS_ON` => Señal al modelo *SYSTEM* que indica que el botón está encendido

### Variables accion del sensor
`timer++;`
`timer = 0;`
`DEL_BTN` => delay para implementar debounce del botón

### Estados del sensor
`ST_BTN_OFF` => El estado del pulsador es apagado
`ST_BTN_FALLING` => El estado del pulsador es que está cayendo (transición para pasar de apagado a encendido o filtrar ruido, aquí se aplica lógica debounce)
`ST_BTN_ON` => El estado del pulsador es encendido
`ST_BTN_RISING` => El estado del pulsador es que está subiendo (transición para pasar encendido a apagado o filtrar ruido, aquí se aplica lógica debounce)

### Sensor Statechart - State Transition Table

| Current State  | Event           | [Guard]              | Next State     | Actions                |
| -------------- | --------------- | -------------------- | -------------- | ---------------------- |
| ST_BTN_OFF     | EV_BTN_PRESSED  |                      | ST_BTN_FALLING | timer = 0              |
| ST_BTN_FALLING | tick            | timer - DEL_BTN == 0 | ST_BTN_ON      | EV_SYS_ON<br>timer = 0 |
| ST_BTN_FALLING | tick            |                      | ST_BTN_FALLING | timer++                |
| ST_BTN_FALLING | EV_BTN_RELEASED |                      | ST_BTN_OFF     |                        |
| ST_BTN_ON      | EV_BTN_RELEASED |                      | ST_BTN_RISING  | timer = 0              |
| ST_BTN_RISING  | tick            | timer - DEL_BTN == 0 | ST_BTN_OFF     | EV_SYS_OFF<br>timer = 0|
| ST_BTN_RISING  | tick            |                      | ST_BTN_RISING  | timer++                |
| ST_BTN_RISING  | EV_BTN_PRESSED  |                      | ST_BTN_ON      |                        |

Existe cierta redundancia en igualar timer a 0 en algunos cambios de estado pero consideramos que es mejor que exista esa redundancia para asegurar el correcto funcionamiento del modelo.

Existen dos estados en los que el guard compara y es cuando se hacen las transiciones efectivas de ON/OFF y OFF/ON pasando por RISING, FALLING respectivamente. En ambas se envia una señal al modelo SYSTEM para indicar el estado del pulsador.

### Maquina de estados (boceto)

![[Modelo_Sensor.jpg]]
