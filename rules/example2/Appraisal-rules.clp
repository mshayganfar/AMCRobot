;;;=============================================================
;;;                  *** Appraisal Module ***
;;;     
;;; Appraisal is a subjective evaluation mechanism based on
;;; individual processes each of which computes the value of the 
;;; appraisal variables used in my computational model.
;;;
;;; (To read more, see: 
;;;  doc/PhDThesisProposal-MohammadShayganfar.pdf)
;;;
;;;     Jess version 4.1
;;;
;;;     Author: Mohammad Shayganfar
;;;
;;;=============================================================

(focus APPRAISAL)

(defrule APPRAISAL::utterance-based-appraisal-process
"To appraise the current event based on other's utterances."
(UTTERANCE::propose-status (task "install-panel") (event "ee-au-01") (phase END) (status UNLIKELY))
(UTTERANCE::when (task "install-panel") (event "ee-au-01") (time-span FUTURE))
(UTTERANCE::causality (task "install-panel") (event "ee-au-01") (cause "measurement-tool-problem") (effect "finish-task"))
(UTTERANCE::propose-stop (task "install-panel") (event "ee-au-01"))
;; Other mental states asserted as facts should be added here to be used to build the graph.
=>
(assert (APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule APPRAISAL::utterance-based-appraisal-process-2
"To appraise the current event based on other's utterances."
(UTTERANCE::explain (task "install-panel") (event "ee-au-02") (reason "measurement-tool-problem"))
(UTTERANCE::propose-stop (task "install-panel") (event "ee-au-02"))
;; Other mental states asserted as facts should be added here to be used to build the graph.
=>
(assert (APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule APPRAISAL::utterance-based-appraisal-process-3
"To appraise the current event based on other's utterances."
(UTTERANCE::ask-can (task "fix-measurement-tool") (event "ee-au-03"))
;; Other mental states asserted as facts should be added here to be used to build the graph.
=>
(assert (APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-03") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule APPRAISAL::utterance-based-appraisal-process-4
"To appraise the current event based on other's utterances."
(UTTERANCE::reject (task "fetch-measurement-tool") (event "ee-au-04") (responsible ROBOT))
(UTTERANCE::explain (task "install-panel") (event "ee-au-04") (reason "time-shortage"))
;; Other mental states asserted as facts should be added here to be used to build the graph.
=>
(assert (APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-04") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood UNLIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))))
;; A method should be called in Java to assert this fact into the working memory.


