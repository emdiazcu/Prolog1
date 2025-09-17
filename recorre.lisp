(defun recorre(lista)
    (setq elemento(car lista))
    (format t "El valor de la lista es  ~a " elemento)
    (if lista
        (recorre (cdr lista))
    
    
    )
)

;;diferencia entre el if when unlessy comparadores a y el prong