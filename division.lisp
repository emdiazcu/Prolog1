(defun division-con-pasos (dividendo divisor &optional (paso 1))
  "Función recursiva que realiza la división usando restas y muestra cada paso"
  (cond
    ;; Caso base 1: divisor es cero
    ((zerop divisor) (error "División por cero no permitida"))
    
    ;; Caso base 2: dividendo es menor que divisor
    ((< dividendo divisor)
     (format t "Paso ~d: ~d - ~d = ~d (¡Terminado! Resultado: 0)~%" 
             paso dividendo divisor (- dividendo divisor))
     0)
    
    ;; Caso base 3: dividendo es igual a divisor
    ((= dividendo divisor)
     (format t "Paso ~d: ~d - ~d = 0 (¡Terminado! Resultado: 1)~%" 
             paso dividendo divisor)
     1)
    
    ;; Caso recursivo
    (t 
     (let ((nuevo-dividendo (- dividendo divisor)))
       (format t "Paso ~d: ~d - ~d = ~d~%" 
               paso dividendo divisor nuevo-dividendo)
       (1+ (division-con-pasos nuevo-dividendo divisor (+ paso 1)))))))

(division-con-pasos 10 2)