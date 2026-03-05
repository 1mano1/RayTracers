# PIECES OF THE MIND

![Logo del Juego](./IMGS/logo_juego.png)


---

## PÁGINA 1: PORTADA E IDENTIDAD

### **DATOS TÉCNICOS**

* **Sistemas de juego:** PC (Windows/Steam), PlayStation 5 y Xbox Series X/S.
* **Edad del jugador:** 17 años en adelante.
* **Clasificación ESRB:** Mature (M). Debido a temas de horror psicológico, violencia implícita y salud mental.
* **Fecha de entrega:** Junio 2026 (Final del semestre).

### **HIGH CONCEPT**

**Pieces of the Mind** es una aventura de horror psicológico en tercera persona en la que controlas a un padre que busca desesperadamente a su hija en un bosque lleno de recuerdos y peligros sobrenaturales. En tu camino, sufrirás ataques de locura que te harán ver monstruos horribles, pero al parpadear descubrirás que en realidad son personas atrapadas que necesitan tu ayuda para sanar sus propios traumas. 

La jugabilidad alterna entre la exploración y los **"Viajes Mentales"**, niveles surrealistas dentro de la mente de estas almas donde debes recuperar objetos clave bajo una gran presión de tiempo. Si logras resolver estos acertijos, recibirás pastillas de cordura que te ayudan a ver el mundo normal, pero si fallas o te retiras antes de tiempo, obtendrás recompensas falsas que distorsionan la realidad y vuelven el bosque mucho más peligroso.

Con el apoyo de una misteriosa niña que aparece en momentos críticos y una piedra mágica que revela secretos ocultos, deberás intercambiar objetos entre los habitantes y explorar lugares importantes como una casa del árbol para recuperar tu bondad y descubrir la verdad sobre tu hija.

---

## PÁGINA 2: ESQUEMA DEL JUEGO (GAME OUTLINE)

### **FLUJO DEL JUEGO (GAME FLOW)**

El jugador explora el bosque como nexo central para localizar a las almas y entrar en sus mentes.

* **Desafíos:** La principal dificultad reside en los acertijos de búsqueda de objetos dentro de las mentes. El jugador debe lidiar con un límite de tiempo asfixiante y la desorientación visual causada por su propia locura.
* **Progresión:** Se basa en un sistema de intercambio. Al sanar una mente, obtienes un objeto que otra alma necesita, lo que permite desbloquear nuevas áreas del bosque.
* **Recompensas:** Las pastillas (reales o falsas) son el motor que regula la dificultad visual del entorno.
* **Condición de Victoria:** Resolver los conflictos de las almas principales, recolectar los objetos clave en la casa del árbol y obtener el perdón final para reunirse con su hija.
* **Condición de Derrota:** Perder toda la cordura (haciendo el bosque visualmente inexplorable) o que el tiempo se agote en un viaje mental crítico, provocando que el alma te mate.

### **CORE LOOP: INCURSIÓN MENTAL Y GESTIÓN DE CORDURA**

1.  **Input del jugador:** El jugador camina por el bosque con **WASD**, encuentra a un alma y presiona **E** para iniciar el viaje mental. Dentro de la mente, el jugador presiona la tecla **Q** para usar la piedra y revelar objetos.
2.  **Respuesta del sistema:** Se activa el nivel de la mente. Aparece un *checklist* de objetos y se inicia un temporizador de cuenta regresiva. Al presionar **Q**, el sistema resalta visualmente los objetos ocultos necesarios.
3.  **Cambio de estado:**
    * **Si el jugador acierta (completa checklist):** La Cordura aumenta, el filtro de la cámara se vuelve nítido y se desbloquea una **Pastilla Real**.
    * **Si el tiempo se agota:** La Cordura disminuye, la cámara se llena de distorsión y el jugador recibe una **Pastilla Falsa**.
    * **Resultado medible:** La claridad visual del entorno cambia según el valor de la variable de cordura.
4.  **Decisión siguiente:** El jugador decide:
    * ¿Consumir la pastilla inmediatamente para estabilizar la vista?
    * ¿Ir a buscar al alma que requiere el objeto obtenido?
    * ¿Usar la piedra (**Q**) en el bosque para buscar pistas hacia la casa del árbol?
5.  **Repetición con variación:** El ciclo se repite con menos tiempo disponible en el reloj, puzles que requieren intercambio de ítems previos y mundos mentales visualmente más caóticos.

## Mundo de Juego

### Visión General
El mundo de *Pieces of the Mind* reacciona dinámicamente a la salud mental del protagonista, la cual se gestiona mediante una **barra de cordura**. Esta mecánica actúa como el pilar visual y de dificultad del juego, dividiendo la percepción del entorno en dos estados:

* **Cordura Alta (Estable):** Se mantiene al consumir medicación para la psicosis. El bosque y los entornos son oscuros y hostiles, pero mantienen una estructura lógica y legible. A nivel mecánico, la dificultad general disminuye y la tasa de aparición de enemigos es menor.
* **Cordura Baja (Deterioro):** Refleja el daño psicológico del protagonista. El entorno se deforma radicalmente, los colores se saturan y las sombras adquieren siluetas amenazantes. Esto se traduce en un aumento directo de la dificultad y un mundo mucho más opresivo.

### Entornos

| Entorno | Descripción / Mood | Música / Atmósfera |
| :--- | :--- | :--- |
| **El Bosque** | Nexo central. Árboles altos y densos, luz tenue. Se distorsiona progresivamente. Conecta todas las zonas del juego. | Ambient oscuro. Susurros y crepitar de ramas. Se añaden notas disonantes al bajar la cordura. |
| **Mente 1 — El Niño** | Habitación infantil destruida. Juguetes rotos, sombras que se mueven. Tonos desaturados, ambiente sucio y sangriento. | Caja de música distorsionada. Llanto lejano. Silencios incómodos. |
| **Mente 2 — La Mujer** | Cocina doméstica atrapada en un *loop*. Reloj detenido. Humo permanente y ollas que hierven sin parar. | Sonidos de electrodomésticos en *loop*. Voz femenina que tararea fuera de tono. |
| **Mente 3+ — Otras almas** | Cada mente refleja un trauma diferente de su habitante: espacios familiares convertidos en pesadillas surrealistas. | Música diegética ligada al trauma de cada alma. |
| **La Casa del Árbol** | Lugar sagrado de la hija. Madera vieja que rechina pero acogedora. Fotos, dibujos y recuerdos. Luz cálida y tenue. | Melodía de piano simple y melancólica. Sin distorsión, incluso con cordura baja. |

### Conexión entre Zonas
El Bosque actúa como *hub* (nexo). Las Mentes son accesibles desde el Bosque al encontrar cada alma. La Casa del Árbol se desbloquea progresivamente: cada alma sanada elimina una barrera que bloqueaba el camino hacia ella. 

**Flujo de progresión:**
> Bosque → Alma → Mente → Bosque (con objeto) → Siguiente Alma → Casa del Árbol

---

## Experiencia de Juego

### Gestalt del Juego
La experiencia total de *Pieces of the Mind* es inquietante, empática y emocionalmente agotadora. No busca el terror basado en sustos repentinos (*jumpscares*) ni la violencia de forma explícita; su objetivo es generar una incomodidad mediante la ambientación, propia de alguien que sabe que está haciendo daño sin recordar cómo llegó ahí. El jugador debe sentirse en todo momento tan desorientado como el protagonista, pero conservando la claridad suficiente para seguir adelante.

### Emociones Objetivo
* Inquietud y desorientación constante (especialmente en los primeros actos).
* Empatía hacia las almas a medida que se revelan sus historias.
* Culpa progresiva conforme el jugador entiende el rol del protagonista.
* Catarsis y alivio emocional al obtener el perdón final.

### Pantalla de Inicio y Navegación
* **Menú Principal:** Al iniciar, se presenta una pantalla negra con sonido de lluvia y viento. El título aparece lentamente sobre una imagen del bosque nocturno. El menú es minimalista (texto blanco sobre negro), sin música extradiegética al principio, solo sonido ambiente. Opciones: *Nuevo Juego, Continuar y Ajustes*.
* **Interfaz de Juego (HUD):** Es casi inexistente para favorecer la inmersión. Consiste únicamente en una sutil viñeta en los bordes de la pantalla (que se oscurece o intensifica al bajar la cordura) y un pequeño indicador del temporizador (*timer*) durante los Viajes Mentales. El inventario no está en pantalla; se abre manualmente (tecla Tab).

### Uso del Sonido
* **Bosque:** Ambiente generativo que se degrada con la cordura. A mayor locura, más capas disonantes.
* **Mentes:** Cada una tiene su propia identidad sonora basada en el trauma del alma.
* **Pastilla Real:** Sonido limpio y cristalino, resolución armónica.
* **Pastilla Falsa:** Sonido distorsionado, *glitch* de audio, sensación de error.
* **La Casa del Árbol:** Música de piano diegética. El único espacio sonoro que no se corrompe.

### Modos Especiales de Interfaz
* **Modo Ataque de Psicosis:** Colapso visual y pérdida de control. Movimiento pesado, colores invertidos y desgarros en pantalla. El jugador, vulnerable, debe usar el parpadeo (tecla F) para "limpiar" temporalmente su visión y orientarse.
* **Modo Viaje Mental:** Transición inmersiva al tomar la mano del alma. El HUD abandona el minimalismo: aparecen de golpe un temporizador y una *checklist* de objetivos, reflejando la urgencia del nivel.

---

## PAGINA 3 (PERSONAJE)

### **El Protagonista** 

**Perfil**

* Nombre: Desconocido ("El Padre")
* Edad: 40 años
* Género: Masculino
* Estado mental: Psicosis, culpa reprimida

**Historia de Trasfondo**
Padre de una niña a la que amaba profundamente. Cometió actos de los que se arrepiente pero que suprimió en su subconsciente. Cuando su hija desaparece, su mente colapsa y convierte su culpa en alucinaciones que lo atacan cada vez que intenta avanzar en el bosque.

**Personalidad**
Un hombre roto que aún no acepta su responsabilidad. Mezcla de amor genuino hacia su hija y negación profunda de sus propios actos. Conforme avanza el juego, su carácter evoluciona hacia la redención y la empatía.

**Relación con el Gameplay**
Las opciones que tiene el jugador están relacionadas con su nivel de cordura. La barra de cordura es, literalmente, la lente con la que el jugador percibe el mundo.

### **La niña Guia**
Aparece en momentos críticos sin identificarse. Actúa como guía indirecta: entrega al protagonista una pastilla de cordura y la Piedra de la Verdad en el primer encuentro. Su identidad real es la hija del protagonista, aunque él no la reconoce debido a su estado mental. No puede ser dañada ni interactúa de forma extendida; su función es narrativa y simbólica.

### **Controles — Esquema Básico (PC)**
| Tecla                | Encabezado 2                        | Encabezado 3                       |
|----------------------|-------------------------------------|------------------------------------|
| WASD                 | moviemiento                         | Siempre Activo                     |
| E                    | Interactuar / Iniciar Viaje Mental  | Cerca de un alma                   |
| Q                    | Usar la piedra de la verdad         | Bosque o mente                     |
| F                    | Parpeadar                           | Durante ataque de locura           |
| Tab                  | Inventario                          | Siempre Activo                     |
| Scroll // Rueda      | Usar pastilla (Consimir)            | Con pastilla en el inventario      |


## GAMEPLAY

### **Secuencia de juego**
El juego se divide en actos narrativos, cada uno centrado en un alma del bosque. Cada acto sigue la estructura: exploración del bosque → encuentro con el alma → viaje mental (puzzle) → resolución y recompensa → la siguiente zona se hace más sencilla de explorar. La progresión no es lineal; el jugador puede elegir el orden en que aborda ciertas almas, aunque algunas requieren objetos obtenidos de otras primero. Esto hace que se pueda completar el juego sin necesidad de ayudar a las almas, aunque sería una experiencia mucho más complicada de hacer.

### **Core Loop — Incursión Mental y Gestión de Cordura**
| 1 | Input del Jugador | El jugador camina por el bosque (WASD), encuentra un alma y presiona E para iniciar el viaje mental. Dentro de la mente, presiona Q para usar la Piedra de la Verdad y revelar objetos ocultos. |
|--------------|--------------|--------------|
| 2       | Respuesta del Sistema       | Se activa el nivel de la mente. Aparece un checklist de objetos y se inicia un temporizador. Al presionar Q, el sistema resalta visualmente los objetos necesarios.       |
| 3       | Cambio de Estado       | ÉXITO: Cordura sube, filtro de cámara se vuelve nítido, se obtiene Pastilla Real. FALLO: Cordura baja, distorsión aumenta, se recibe Pastilla Falsa.      |
| 4       | Decisión Siguiente       | ¿Consumir la pastilla? ¿Buscar al alma que necesita el objeto? ¿Usar la piedra en el bosque para localizar pistas?       |
| 5       | Repetición con Variación     | Menos tiempo disponible en las siguientes mentes. Puzzles que requieren objetos previos. Mundos mentales más caóticos conforme avanza la historia.       |
 

### **Características por Plataforma**
* PC: Teclado y ratón con accesos directos rápidos para la piedra y el parpadeo. Resolución y calidad de distorsión visual ajustable.
* PS5: Gatillos adaptativos para el efecto de "parpadeo" (resistencia háptica al ejecutar la mecánica). Rumble vinculado a la barra de cordura.
* Xbox Series X/S: Equivalente al PS5. Vibración de alta frecuencia durante los ataques de locura.
* Todos: Sin multijugador. Experiencia exclusivamente single-player, guardado automático por checkpoint.
