<div align="center">

---

# INSTITUTO TECNOLÓGICO DE MORELIA  

## Acertijo

### Ingeniería en Sistemas Computacionales
### Programación Lógica y Funcional


---

### Alumno:
**Díaz Curiel Emiliano**

---

**Profesor:** Alcaraz Chavez Jesus Eduardo

---
<div>
<div align="justify">

## Acertijo 1

```
Cuatro personas necesitan cruzar un puente de noche con una sola linterna. El puente es frágil y solo puede soportar a dos personas a la vez. Cada persona tarda diferentes tiempos en cruzar (1, 2, 5 y 10 minutos). Cuando dos personas cruzan, lo hacen al ritmo del más lento ¿Cómo pueden cruzar el puente en 17 minutos?
```
<div>

### Solución:
1.   1 y 2 cruzan → 2 min
2.   1 regresa → 1 min
3.   5 y 10 cruzan → 10 min
4.   2 regresa → 2 min
5.   1 y 2 cruzan → 2 min

**Total** =1⋅c1 + 2⋅c2 + 5⋅c5 + 10⋅c10
	​


### Sustituyendo los contadores:

**Total** = 1⋅1 +  2⋅3  +  5⋅0 + 10⋅1 = 1 + 6 + 0 + 10 = 17

**Total** =1⋅1 + 2⋅3 + 5⋅0 + 10⋅1 = 1 + 6 + 0 + 10 = 17


## Acertijo 2
<div align=justify>

```
En una calle hay cinco casas, cada una de un color distinto.  En cada
casa vive una persona de distinta nacionalidad.  Cada dueño bebe un
único tipo de bebida, fuma una sola marca de cigarrillos y tiene una
mascota diferente a sus vecinos.  A partir de las 15 pistas
presentadas a continuación, la consigna que hay que responder es:
"¿Quién es el dueño del pez?".

El británico vive en la casa roja.
El sueco tiene un perro como mascota.
El danés toma té.
El noruego vive en la primera casa.
El alemán fuma Prince.
La casa verde está inmediatamente a la izquierda de la blanca.
El dueño de la casa verde bebe café.
El propietario que fuma Pall Mall cría pájaros.
El dueño de la casa amarilla fuma Dunhill.
El hombre que vive en la casa del centro bebe leche.
El vecino que fuma Blends vive al lado del que tiene un gato.
El hombre que tiene un caballo vive al lado del que fuma Dunhill.
El propietario que fuma Bluemaster toma cerveza.
El vecino que fuma Blends viveal lado del que toma agua.
El noruego vive al lado de la casa azul.
```
<div>

---

### Solución:

| Nacionalidad | Casa | Mascota | Bebida | Cigarro | Posición |
|-------|-------|-------|-------|-------|-------|
| Británico   | Roja   | Pájaro  | Leche   | Pall Mall   | Casa 3   |
| Sueco   | Blanca   | Perro    | Cerveza   | Bluemasterts   | Casa 5   | 
| Danés    | Azul  | Caballo    | Té    | Brends    | Casa 2 |
| Noruego | Amarilla | Gato | Agua | Dunhill | Casa 1 |
| Alemán | Verde | **Pez** | Café | Prince | Casa 4|

---

**Descartando las casillas que quedaban vacías, el alemán es el dueño del pez.**