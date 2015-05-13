;;;=============================================================
;;;                   *** Action Module ***
;;;     
;;; Action mechanism is only a sink of data in my computational
;;; model. It functions whenever the agent needs to show a proper
;;; behavior according to the result of the internal processes of
;;; the collaboration procedure.
;;;
;;; (To read more, see: 
;;;  doc/PhDThesisProposal-MohammadShayganfar.pdf)
;;;
;;;     Jess version 4.1
;;;
;;;     Author: Mohammad Shayganfar
;;;
;;;=============================================================

(focus ACTION)

;(defrule emotion-check
;"To check constraints"
;(UTTERANCE::emotion-valence (task test) (valence-type POSITIVE))
;=>
;(printout t "works!" crlf))