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

(defrule ToM::reverse-appraisal
"To do reverse appraisal and infer values for human's appraisal variables."
(UTTERANCE::verbal-emotion-instance (task "install-panel") (event "ee-au-01") (emotion-instance FRUSTRATION))
=>
(assert (ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule ToM::reverse-appraisal-2
"To do reverse appraisal and infer values for human's appraisal variables."
(UTTERANCE::verbal-emotion-instance (task "install-panel") (event "ee-au-02") (emotion-instance UNKNOWN))
=>
(assert (ToM::reverse-appraisal (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule ToM::user-model
"To update human's user model."
(EMOTION-INSTANCE::emotion-instance (event "ee-au-01") (agent HUMAN) (emotion-instance ?emotionInstance))
(COLLABORATION::task-precondition-status (task "install-panel") (event "ee-au-01") (preconditions-status ?precondStatus))
(COLLABORATION::task-postcondition-status (task "install-panel") (event "ee-au-01") (postconditions-status ?postcondStatus))
(COLLABORATION::task-status (task "install-panel") (event "ee-au-01") (task-status ?taskStatus))
(COLLABORATION::shared-goal-status (task "install-panel") (event "ee-au-01") (shared-goal-status ?sharedGoalStatus))
;; Other mental states asserted as facts should be added here to be used to build the graph.
=>
(assert (ToM::user-type (task "install-panel") (event "ee-au-01") (knowledge-competency LOW-AUTONOMY) (behavior-competency HIGH-COMMUNICATIVE))))
;(printout t "Astronauts emotion: " ?emotionInstance 
;			" , precondition status: " ?precondStatus 
;			" , postcondition status: " ?postcondStatus
;			" , task status: " ?taskStatus
;			" , shared goal status: " ?sharedGoalStatus crlf))
;; Corresponding methods should be called in Java to use these values for updating human's user model.


(defrule ToM::user-model-2
"To update human's user model."
(EMOTION-INSTANCE::emotion-instance (event "ee-au-02") (agent HUMAN) (emotion-instance ?emotionInstance))
(COLLABORATION::attention-focus (task "install-panel") (event "ee-au-02") (agent HUMAN) (focus ENVIRONMENT))
;; Other mental states asserted as facts should be added here to be used to build the graph.
=>
(assert (ToM::user-type (task "install-panel") (event "ee-au-02") (knowledge-competency LOW-AUTONOMY) (behavior-competency HIGH-COMMUNICATIVE))))
;; Corresponding methods should be called in Java to use these values for updating human's user model.
