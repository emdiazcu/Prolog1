(defun division-con-pasos (dividendo divisor &optional (paso 1))
  "Función recursiva que realiza la división usando restas"
  (cond
    ;; divisor es cero
    ((zerop divisor) (error "División por cero no permitida"))
    
    ((< dividendo divisor)
     (format t "Paso ~d: ~d - ~d = ~d (¡Terminado! No se puede restar más)~%" 
             paso dividendo divisor (- dividendo divisor))
     0)
    
    ;; Caso base 3: dividendo es igual a divisor (ESTE ESTABA MAL)
    ((= dividendo divisor)
     (format t "Paso ~d: ~d - ~d = 0 (¡Terminado! Última resta)~%" 
             paso dividendo divisor)
     1)  ; Esta línea suma 1 al resultado final
    
    ;; Caso recursivo
    (t 
     (let ((nuevo-dividendo (- dividendo divisor)))
       (format t "Paso ~d: ~d - ~d = ~d~%" 
               paso dividendo divisor nuevo-dividendo)
       (+ 1 (division-con-pasos nuevo-dividendo divisor (+ paso 1)))))))