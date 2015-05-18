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

(defrule ACTION::provide-alternative-solution-1
"To provide alternative solutions."
(COPING::intention-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "provide-alternative-solutions") (intention "provide-alternative-solutions") (coping-strategy PLANNING))
=>
(printout t "I can help you with the measurement tool and we can finish the task as originally planned." crlf))


(defrule ACTION::seek-advice-1
"To seek advice as social support for instrumental reasons."
(COPING::problem-focused-coping-behavior (task "install-panel") (event "ee-au-01") (action "ask-next-step") (intention "know-next-step") (coping-strategy SEEK-SOCIAL-INSTRUMENTAL-SUPPORT))
=>
(printout t "What do you want me to do?" crlf))


(defrule ACTION::seek-advice-2
"To seek advice as social support for instrumental reasons."
(COPING::problem-focused-coping-behavior (task "install-panel") (event "ee-au-02") (action "ask-next-step") (intention "know-next-step") (coping-strategy SEEK-SOCIAL-INSTRUMENTAL-SUPPORT))
=>
(printout t "Do you want me to fix this problem or terminate the task?" crlf))


(defrule ACTION::reject-proposal-1
"To reject the Astronaut's proposal."
(COPING::problem-focused-coping-behavior (task "install-panel") (event "ee-au-03") (action "reject-proposal") (intention "reject-proposal") (coping-strategy ACTIVE))
=>
(printout t "I cannot fix your measurement tool." crlf))


(defrule ACTION::provide-alternative-solution-2
"To provide alternative solutions."
(COPING::intention-based-coping-behavior (task "install-panel") (event "ee-au-03") (action "provide-alternative-solutions") (intention "provide-alternative-solutions") (coping-strategy PLANNING))
=>
(printout t "But, I can fetch another one for you if you want?" crlf))

