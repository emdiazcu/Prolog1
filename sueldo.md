<div align="center">

---

# INSTITUTO TECNOLÓGICO DE MORELIA  

## Acertijo

### Ingeniería en Sistemas Computacionales
### Programación Lógica y Funcional


---

### Alumno:
**Díaz Curiel Emiliano**

### No. Control:
***22121369***

---

**Docente:** Alcaraz Chavez Jesus Eduardo

---

## Condicionales en Lisp
<div>

<div align="justify">

### Problema 1

 Que calcule el sueldo que le corresponde al trabajador de una
empresa que cobra 40.000 euros anuales, el programa debe realizar los
cálculos en función de los siguientes criterios:

- Si lleva más de 10 años en la empresa se le aplica un aumento del 10%.
- Si lleva menos de 10 años pero más que 5 se le aplica un aumento del
  7%.
- Si lleva menos de 5 años pero más que 3 se le aplica un aumento del
  5%.
- Si lleva menos de 3 años se le aplica un aumento del 3%.()
  
  ### Solución: 

```lisp
(defun calcular-sueldo (tiempo)
  (let ((sueldo-base 40000))
    (cond ((> tiempo 10) (* sueldo-base 1.10))  ; +10%
          ((and (> tiempo 5) (<= tiempo 10)) (* sueldo-base 1.07)) ; +7%
          ((and (> tiempo 3) (<= tiempo 5)) (* sueldo-base 1.05))  ; +5%
          ((<= tiempo 3) (* sueldo-base 1.03))))) ; +3%

```
---

### Problema 2

Hacer un algortimo que tome el peso en libras de una cantidad de
ropa a lavar en una lavadora y nos devuelva el nivel dependiendo del
peso; además nos informe la cantidad de litros de agua que
necesitamos. Se sabe que con más de 30 libras la lavadora no funcionara
ya que es demasiado peso. Si la ropa pesa 22 ó más libras, el nivel será
de máximo; si pesa 15 ó más nivel será de alto; si pesa 8 ó más será un
nivel medio o de lo contrario el nivel será mínimo.

### Solución:

```lisp
(defun lavadora (peso-libras)
  (cond
    ((> peso-libras 30) 
     (format t "La lavadora no funciona. Peso demasiado alto (D libras).%" peso-libras))
    ((>= peso-libras 22)
     (let ((litros-agua (* peso-libras 4))) ; Suponiendo 4 litros por libra
       (format t "Nivel: MÁXIMO~%")
       (format t "Cantidad de agua necesaria: ~D litros%" litros-agua)))
    ((>= peso-libras 15)
     (let ((litros-agua (* peso-libras 3))) ; Suponiendo 3 litros por libra
       (format t "Nivel: ALTO~%")
       (format t "Cantidad de agua necesaria: D litros%" litros-agua)))
    ((>= peso-libras 8)
     (let ((litros-agua (* peso-libras 2))) ; Suponiendo 2 litros por libra
       (format t "Nivel: MEDIO~%")
       (format t "Cantidad de agua necesaria: ~D litros%" litros-agua)))
    (t
     (let ((litros-agua (* peso-libras 1.5))) ; Suponiendo 1.5 litros por libra
       (format t "Nivel: MÍNIMO~%")
       (format t "Cantidad de agua necesaria: ~D litros%" litros-agua)))))
```
---

### Problema 3

Martha va a realizar su fiesta de quince años. Por lo cual ha
invitado a una gran cantidad de personas. Pero también ha decidido
algunas reglas: Que todas las personas con edades mayores a los quince
años, sólo pueden entrar si traen regalos; que jóvenes con los quince
años cumplidos entra totalmente gratis pero los de menos de quince años
no pueden entrar a la fiesta. Hacer un algoritmo donde se tome la edad
de una persona y que requisito de los anteriores le toca cumplir si
quiere entrar.

### Solución:

```lisp
(defun requisitos-fiesta (edad)
  (cond
    ((< edad 15)
     (format t "Edad: D años%" edad)
     (format t "No puede entrar a la fiesta.~%"))
    ((= edad 15)
     (format t "Edad: ~D años%" edad)
     (format t "Entra totalmente GRATIS.~%"))
    ((> edad 15)
     (format t "Edad: ~D años%" edad)
     (format t "Puede entrar pero debe traer REGALO.~%"))))
```


