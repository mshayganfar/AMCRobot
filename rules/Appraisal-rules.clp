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

(defrule APPRAISAL::emotion-instance
"The most relevent emotion instance to current appraisal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (EMOTION-INSTANCE::emotion-instance (event "ee-au-01") (agent HUMAN) (emotion-instance FRUSTRATION))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule APPRAISAL::emotion-instance-somatic-markers
"The most relevent emotion instance to current appraisal."
(EMOTION-INSTANCE::emotion-instance (event "ee-au-01") (agent HUMAN) (emotion-instance FRUSTRATION))
=>
(assert (UTTERANCE::verbal-emotion-somatic-marker (task "install-panel") (event "ee-au-01") (valence -0.5) (arousal -0.5) (stance 0.1))))
;; A method should be called in Java to assert this fact into the working memory.


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


(defrule APPRAISAL::emotion-based-appraisal-process
"To appraise the current event based on other's emotion."
(UTTERANCE::verbal-emotion-somatic-marker (task "install-panel") (event "ee-au-01") (valence -0.5) (arousal -0.5) (stance 0.1))
;; Other mental states asserted as facts should be added here to be used to build the graph.
=>
(assert (APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to MENTAL-STATE-DISTANCE) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))))
;; A method should be called in Java to assert this fact into the working memory.


