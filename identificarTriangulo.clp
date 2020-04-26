(defrule MAIN::inicial
   (initial-fact)
   =>
   (printout t "*** MENU TIPOS DE TRIÁNGULOS ***" crlf)
   (printout t "lados" crlf)
   (printout t "angulos" crlf)
   (assert (tipo-triangulo (read))))

(defrule MAIN::medidas
   (tipo-triangulo lados)
   =>
   (printout t "Responda si/no" crlf)
   (printout t "Su triángulo tiene 3 lados iguales ?" crlf)
   (bind ?res (read))
   (if (eq ?res si)
      then
      (assert (num-lados uno))
      else
      (printout t "Su triángulo tiene 2 lados iguales ?" crlf)
      (bind ?res2 (read))
      (if (eq ?res2 si)
         then
         (assert (num-lados dos))
         else
         (printout t "Su triángulo no tiene lados iguales ?" crlf)
         (bind ?res3 (read))
         (if (eq ?res3 si)
            then
            (assert (num-lados tres))
            else
            (printout t "*** MENU TIPOS DE TRIÁNGULOS ***" crlf)
            (printout t "lados" crlf)
            (printout t "angulos" crlf)
            (assert (tipo-triangulo (read)))))))

(defrule MAIN::tipo
   (num-lados uno)
   =>
   (printout t " SU TRIÁNGULO ES EQUILÁTERO " crlf))

(defrule MAIN::tipo2
   (num-lados dos)
   =>
   (printout t " SU TRIÁNGULO ES ISÓSCELES " crlf))

(defrule MAIN::tipo3
   (num-lados tres)
   =>
   (printout t " SU TRIÁNGULO ES ESCALENO " crlf))

(defrule MAIN::medidas2
   (tipo-triangulo angulos)
   =>
   (printout t "Responda si/no" crlf)
   (printout t "Su triángulo tiene 1 ángulo recto ?" crlf)
   (bind ?res (read))
   (if (eq ?res si)
      then
      (assert (angulos uno))
      else
      (printout t "Su triángulo tiene 3 ángulos agudos?" crlf)
      (bind ?res2 (read))
      (if (eq ?res2 si)
         then
         (assert (angulos dos))
         else
         (printout t "Su triángulo tiene 1 ángulo obtuso?" crlf)
         (bind ?res3 (read))
         (if (eq ?res3 si)
            then
            (assert (angulos tres))
            else
            (printout t "*** MENU TIPOS DE TRIÁNGULOS ***" crlf)
            (printout t "lados" crlf)
            (printout t "angulos" crlf)
            (assert (tipo-triangulo (read)))))))

(defrule MAIN::angulo1
   (angulos uno)
   =>
   (printout t " SU TRIÁNGULO ES RECTÁNGULO " crlf))

(defrule MAIN::angulo2
   (angulos dos)
   =>
   (printout t " SU TRIÁNGULO ES ACUTÁNGULO" crlf))

(defrule MAIN::angulo3
   (angulos tres)
   =>
   (printout t "SU TRIÁNGULO ES OBTUSÁNGULO " crlf))

