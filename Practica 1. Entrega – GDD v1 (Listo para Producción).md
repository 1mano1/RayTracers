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