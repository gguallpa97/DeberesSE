(defrule MAIN::inicial
   (initial-fact)
   =>
   (printout t "*** MENU TIPOS DE TRI�NGULOS ***" crlf)
   (printout t "lados" crlf)
   (printout t "angulos" crlf)
   (assert (tipo-triangulo (read))))

(defrule MAIN::medidas
   (tipo-triangulo lados)
   =>
   (printout t "Responda si/no" crlf)
   (printout t "Su tri�ngulo tiene 3 lados iguales ?" crlf)
   (bind ?res (read))
   (if (eq ?res si)
      then
      (assert (num-lados uno))
      else
      (printout t "Su tri�ngulo tiene 2 lados iguales ?" crlf)
      (bind ?res2 (read))
      (if (eq ?res2 si)
         then
         (assert (num-lados dos))
         else
         (printout t "Su tri�ngulo no tiene lados iguales ?" crlf)
         (bind ?res3 (read))
         (if (eq ?res3 si)
            then
            (assert (num-lados tres))
            else
            (printout t "*** MENU TIPOS DE TRI�NGULOS ***" crlf)
            (printout t "lados" crlf)
            (printout t "angulos" crlf)
            (assert (tipo-triangulo (read)))))))

(defrule MAIN::tipo
   (num-lados uno)
   =>
   (printout t " SU TRI�NGULO ES EQUIL�TERO " crlf))

(defrule MAIN::tipo2
   (num-lados dos)
   =>
   (printout t " SU TRI�NGULO ES IS�SCELES " crlf))

(defrule MAIN::tipo3
   (num-lados tres)
   =>
   (printout t " SU TRI�NGULO ES ESCALENO " crlf))

(defrule MAIN::medidas2
   (tipo-triangulo angulos)
   =>
   (printout t "Responda si/no" crlf)
   (printout t "Su tri�ngulo tiene 1 �ngulo recto ?" crlf)
   (bind ?res (read))
   (if (eq ?res si)
      then
      (assert (angulos uno))
      else
      (printout t "Su tri�ngulo tiene 3 �ngulos agudos?" crlf)
      (bind ?res2 (read))
      (if (eq ?res2 si)
         then
         (assert (angulos dos))
         else
         (printout t "Su tri�ngulo tiene 1 �ngulo obtuso?" crlf)
         (bind ?res3 (read))
         (if (eq ?res3 si)
            then
            (assert (angulos tres))
            else
            (printout t "*** MENU TIPOS DE TRI�NGULOS ***" crlf)
            (printout t "lados" crlf)
            (printout t "angulos" crlf)
            (assert (tipo-triangulo (read)))))))

(defrule MAIN::angulo1
   (angulos uno)
   =>
   (printout t " SU TRI�NGULO ES RECT�NGULO " crlf))

(defrule MAIN::angulo2
   (angulos dos)
   =>
   (printout t " SU TRI�NGULO ES ACUT�NGULO" crlf))

(defrule MAIN::angulo3
   (angulos tres)
   =>
   (printout t "SU TRI�NGULO ES OBTUS�NGULO " crlf))

