(defrule MAIN::valIni
   (datos $?x)
   =>
   (assert (datos-aux ?x)))

(defrule MAIN::ordenarVal
   ?f <- (datos-aux $?b ?m1 ?m2&:(> ?m2 ?m1) $?e)
   =>
   (retract ?f)
   (assert (datos-aux $?b ?m2 ?m1 $?e)))

(defrule MAIN::valFi
   (not (datos-aux $?b ?m1 ?m2&:(> ?m2 ?m1) $?e))
   (datos $?x)
   (datos-aux $?y)
   =>
   (printout t "Orden descendente es :" ?y crlf))

