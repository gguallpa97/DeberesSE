(deffacts MAIN::hechos-iniciales
   (H)
   (K))

(defrule MAIN::r1
   (A)
   =>
   (printout t "---A(Activo)->E" crlf)
   (printout t "E,A,H,K" crlf)
   (assert (E)))

(defrule MAIN::r2
   (B)
   =>
   (printout t "---B(Activo)->D" crlf)
   (printout t "D,B,E,A,H,K" crlf)
   (assert (C)))

(defrule MAIN::r3
   (H)
   =>
   (printout t "---H(Activo)->A" crlf)
   (printout t "A,H,K" crlf)
   (assert (A)))

(defrule MAIN::r4
   (E)
   (G)
   =>
   (printout t "---E,G(Activo)->" crlf)
   (assert (C)))

(defrule MAIN::r5
   (E)
   (K)
   =>
   (printout t "---E,K(Activo)->B" crlf)
   (printout t "B,E,A,H,K" crlf)
   (assert (B)))

(defrule MAIN::r6
   (D)
   (E)
   (K)
   =>
   (printout t "D,E,K(Activo)->C" crlf)
   (assert (C)))

(defrule MAIN::r7
   (B)
   (K)
   (F)
   =>
   (printout t "B,K,F(Activo)->A" crlf)
   (assert (A)))

