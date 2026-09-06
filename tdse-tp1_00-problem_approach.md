## 1. Solución de COMA Electronics

**Referencia:** COMA Electronics — Intelligent Parking Management System (https://www.comaparking.com/)

La solución comercial de **COMA Electronics**, que propone un **Intelligent Parking Management System** compuesto por:

- **Parking System Server**: centraliza la información de ocupación y pagos.
- **Entry Machine**: controla el ingreso de vehículos.
- **Exit Machine**: controla la salida de vehículos.
- **Toll Computer / Automatic Pay Station**: gestiona el cobro.

Dentro de ese sistema, COMA describe un **Automated Parking System** con el siguiente flujo:

1. El auto llega a la terminal de entrada.
2. Se presiona un botón: se emite un ticket con número de serie, fecha y hora, y se abre la barrera.
3. El auto ingresa y estaciona.
4. Al salir, el cliente paga en una estación central de pago (con un tiempo de gracia preestablecido para volver al auto).
5. En la terminal de salida se lee el ticket pagado y se envía la señal de apertura a la barrera de salida.

De todo ese sistema, en este TP **implementaremos únicamente la Parking Ticket Dispenser Machine (Entry)**

## 2. Implementación de la Parking Ticket Dispenser Machine (Entry)

La terminal de entrada se modela como un sistema con tres bloques funcionales, organizados en un pipeline **Scrutinize → Process → Act**:

| Bloque | Función | Elementos reales |
|---|---|---|
| Scrutinize | Sensar el entorno | Camera, Button, Sensor Coil |
| Process | Decidir qué hacer | PTDM (lógica central) |
| Act | Ejecutar la acción física | Display, Printer, Barrier, Server |

Comportamiento esperado:

- El auto llega → se muestra un mensaje de bienvenida (Display).
- Se presiona el botón → se imprime el ticket (Printer) y se abre la barrera (Barrier).
- El auto avanza y libera el sensor → se cierra la barrera y se informa al servidor que el auto ingresó (Server).

Los tres bloques se ejecutan como **tareas cíclicas no bloqueantes**, cada una invocada cada **1 mS** (Update by Time Code), y se comunican entre sí exclusivamente mediante **mensajes**: ningún módulo debe monopolizar la CPU ni bloquear la ejecución de los demás.

## 3. Modelos de comportamiento (statecharts)

Para describir el comportamiento de cada bloque se define un módulo de código C temporizado independiente, cada uno con su propio statechart:

| Bloque | Modelo | Rol |
|---|---|---|
| Scrutinize | **Sensor** | Lee la entrada digital y filtra el rebote (debounce) |
| Process | **System** | Recibe señales del Sensor y decide qué señal enviar al Actuator |
| Act | **Actuator** | Recibe señales del System y controla la salida digital |

Cada modelo se detalla por separado en:

- `tdse-tp1_00-sensor.md`
- `tdse-tp1_00-system.md`
- `tdse-tp1_00-actuator.md`

## 4. Simplificación de hardware

Dado que no se cuenta con el hardware real de la PTDM, se reemplazan:

**Sensores reales → entradas digitales simples**

| Sensor real | Reemplazo |
|---|---|
| Camera | interruptor dip switch |
| Button | pulsador |
| Sensor Coil | interruptor dip switch |

**Actuadores reales → salidas digitales simples**

| Actuador real | Reemplazo |
|---|---|
| Display | led |
| Printer | led |
| Barrier | led |
| Server | led |
