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

(defrule ACTION::provide-alternative-solution
"To provide alternative solutions."
(COPING::intention-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "provide-alternative-solutions") (intention "provide-alternative-solutions") (coping-strategy PLANNING))
=>
(printout t "I can help you with the measurement tool and we can finish the task as originally planned." crlf))


(defrule ACTION::seek-advice
"To seek advice as social support for instrumental reasons."
(COPING::problem-focused-coping-behavior (task "install-panel") (event "ee-au-01") (action "ask-next-step") (intention "know-next-step") (coping-strategy SEEK-SOCIAL-INSTRUMENTAL-SUPPORT))
=>
(printout t "What do you want me to do?" crlf)
(reset))

