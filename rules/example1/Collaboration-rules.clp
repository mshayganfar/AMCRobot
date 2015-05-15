;;;=============================================================
;;;                 *** Collaboration Module ***
;;;     
;;; Collaboration mechanism will construct a hierarchy of tasks
;;; and also manage and maintain the constraints and other 
;;; required details of the collaboration specified by the plan.
;;;
;;; (To read more, see: 
;;;  doc/PhDThesisProposal-MohammadShayganfar.pdf)
;;;
;;;     Jess version 4.1
;;;
;;;     Author: Mohammad Shayganfar
;;;
;;;=============================================================

(focus COLLABORATION)

(defrule COLLABORATION::shared-goal-status
"The current shared goal's status."
(UTTERANCE::propose-stop (task "install-panel") (event "ee-au-01"))
=>
(assert (COLLABORATION::shared-goal-status (task "install-panel") (event "ee-au-01") (shared-goal-status BLOCKED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::shared-goal-status-2
"The current shared goal's status."
(UTTERANCE::ask-can (task "fix-measurement-tool") (event "ee-au-02"))
;; No change, so we have the same RHS.
=>
(assert (COLLABORATION::shared-goal-status (task "install-panel") (event "ee-au-02") (shared-goal-status BLOCKED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::task-status
"The status of the given task."
(UTTERANCE::propose-status (task "install-panel") (event "ee-au-01") (phase END) (status UNLIKELY))
(UTTERANCE::when (task "install-panel") (event "ee-au-01") (time-span FUTURE))
=>
(assert (COLLABORATION::task-status (task "install-panel") (event "ee-au-01") (task-status BLOCKED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::task-status-2
"The status of the given task."
(UTTERANCE::ask-can (task "fix-measurement-tool") (event "ee-au-02"))
;; No change, so we have the same RHS.
=>
(assert (COLLABORATION::task-status (task "install-panel") (event "ee-au-02") (task-status BLOCKED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::attention-focus
"The object of focus of attention."
(UTTERANCE::causality (task "install-panel") (event "ee-au-01") (cause "measurement-tool-problem") (effect "finish-task"))
=>
(assert (COLLABORATION::attention-focus (task "install-panel") (event "ee-au-01") (agent HUMAN) (focus TASK))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::attention-focus-2
"The object of focus of attention."
(UTTERANCE::ask-can (task "fix-measurement-tool") (event "ee-au-02"))
=>
(assert (COLLABORATION::attention-focus (task "install-panel") (event "ee-au-02") (agent HUMAN) (focus ENVIRONMENT))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::task-precondition-status
"The precondition status of the given task."
(UTTERANCE::emotion-valence (task "install-panel") (event "ee-au-01") (valence-type NEGATIVE))
(UTTERANCE::propose-status (task "install-panel") (event "ee-au-01") (phase END) (status UNLIKELY))
=>
(assert (COLLABORATION::task-precondition-status (task "install-panel") (event "ee-au-01") (preconditions-status UNSATISFIED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::task-precondition-status-2
"The precondition status of the given task."
(UTTERANCE::ask-can (task "fix-measurement-tool") (event "ee-au-02"))
;; No change, so we have the same RHS.
=>
(assert (COLLABORATION::task-precondition-status (task "install-panel") (event "ee-au-02") (preconditions-status UNSATISFIED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::task-postcondition-status
"The postcondition status of the given task."
(COLLABORATION::task-precondition-status (task "install-panel") (event "ee-au-01") (preconditions-status UNSATISFIED))
=>
(assert (COLLABORATION::task-postcondition-status (task "install-panel") (event "ee-au-01") (postconditions-status UNSATISFIED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::task-postcondition-status-2
"The postcondition status of the given task."
(COLLABORATION::task-precondition-status (task "install-panel") (event "ee-au-02") (preconditions-status UNSATISFIED))
;; No change, so we have the same RHS.
=>
(assert (COLLABORATION::task-postcondition-status (task "install-panel") (event "ee-au-02") (postconditions-status UNSATISFIED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


;; I am not sure whether this particular rule should be in this module!
(defrule MENTAL-STATE::mental-states-distance
"To compute the mental distance between collaborators."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
;; Other mental states asserted as facts should be added here to be used to build the graph.
=>
(assert (MENTAL-STATE::mental-states-distance (task "install-panel") (event "ee-au-01") (distance SMALL))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


;; I am not sure whether this particular rule should be in this module!
(defrule MENTAL-STATE::mental-states-distance-2
"To compute the mental distance between collaborators."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness EXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
;; Other mental states asserted as facts should be added here to be used to build the graph.
=>
(assert (MENTAL-STATE::mental-states-distance (task "install-panel") (event "ee-au-02") (distance SMALL))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.