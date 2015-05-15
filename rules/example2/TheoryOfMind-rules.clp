;;;=============================================================
;;;                 *** Theory of Mind Module ***
;;;     
;;; The robot uses the Theory of Mind mechanism to infer and 
;;; attribute beliefs, intentions, motives and goals to its 
;;; collaborator based on the user model it creates and maintains 
;;; during the course of the collaboration.
;;;
;;; (To read more, see: 
;;;  doc/PhDThesisProposal-MohammadShayganfar.pdf)
;;;
;;;     Jess version 4.1
;;;
;;;     Author: Mohammad Shayganfar
;;;
;;;=============================================================

(focus ToM)

(defrule ToM::user-model
"To update human's user model."
(EMOTION-INSTANCE::emotion-instance (event "ee-au-01") (agent HUMAN) (emotion-instance ?))
(COLLABORATION::attention-focus (task "install-panel") (event "ee-au-02") (agent HUMAN) (focus ENVIRONMENT))
;; Other mental states asserted as facts should be added here to be used to build the graph.
=>
(assert (ToM::user-type (task "install-panel") (event "ee-au-02") (knowledge-competency LOW-AUTONOMY) (behavior-competency MEDIUM-COMMUNICATIVE))))
;; Corresponding methods should be called in Java to use these values for updating human's user model.