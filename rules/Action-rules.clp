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

(defrule ACTION::acknowledge-emotion
"To acknowledge emotions."
(COPING::emotion-focused-coping-behavior (task "install-panel") (event "ee-au-01") (action "acknowledge-emotion") (intention "acknowledge-emotion") (coping-strategy UNKNOWN))
=>
(printout t "I see. This is frustrating." crlf)
(assert (ACTION::emotion-acknowledged (status ACKNOWLEDGED))))


(defrule ACTION::provide-alternative-solution
"To provide alternative solutions."
(COPING::intention-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "provide-alternative-solution") (intention "provide-alternative-solution") (coping-strategy PLANNING))
(ACTION::emotion-acknowledged (status ACKNOWLEDGED))
=>
(printout t "But, I can help you with the measurement tool and we can finish the task as originally planned." crlf)
(reset))

(defrule ACTION::negotiate-removing-impasse
"To provide alternative solutions."
(COPING::intention-based-coping-behavior (task "install-panel") (event "ee-au-02") (action "negotiate-removing-impasse") (intention "negotiate-removing-impasse") (coping-strategy PLANNING))
=>
(printout t "The next task is fixing the panel and it needs you to prepare and attach the welding rod to your welding tool. To save our time, I will fetch another measurement tool while you are preparing your welding tool." crlf))

