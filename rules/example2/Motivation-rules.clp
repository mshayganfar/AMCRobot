;;;=============================================================
;;;                  *** Motivation Module ***
;;;     
;;; Motivation mechanism closely work with the Appraisal 
;;; mechanism. The purpose of this component is to generate new
;;; motives which will be added to the Mental States. These 
;;; motives are generated based on what the agent believes about 
;;; the environment including self and the other collaborator and
;;; the corresponding appraisal.  
;;;
;;; (To read more, see: 
;;;  doc/PhDThesisProposal-MohammadShayganfar.pdf)
;;;
;;;     Jess version 4.1
;;;
;;;     Author: Mohammad Shayganfar
;;;
;;;=============================================================

(focus MOTIVATION)

(defrule MOTIVATION::generate-intention-1
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "task-blocked") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "remove-blocked-task") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention-2
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "help-with-measurement-tool") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength MEDIUM) (accuracy LOW) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "help-with-measurement-tool") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty UNCERTAIN) (ambivalence AMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention-3
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "task-termination") (belief-type PRIVATE) (belief-about TASK) (strength MEDIUM) (accuracy LOW) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "task-termination") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty UNCERTAIN) (ambivalence AMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention-4
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "help-with-measurement-tool") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty UNCERTAIN) (ambivalence AMBIVALENT) (affective-cognitive-consistency CONSISTENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "task-termination") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty UNCERTAIN) (ambivalence AMBIVALENT) (affective-cognitive-consistency CONSISTENT))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "ask-remove-ambiguity") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-belief-1
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::task-status (task "install-panel") (event "ee-au-01") (task-status BLOCKED))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "task-blocked") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-belief-2
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::attention-focus (task "install-panel") (event "ee-au-01") (agent HUMAN) (focus ENVIRONMENT))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "help-with-measurement-tool") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength MEDIUM) (accuracy LOW) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-belief-3
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::task-status (task "install-panel") (event "ee-au-01") (task-status BLOCKED))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "task-termination") (belief-type PRIVATE) (belief-about TASK) (strength MEDIUM) (accuracy LOW) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.