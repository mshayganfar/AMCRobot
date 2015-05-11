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

(defrule MOTIVATION::generate-belief
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "...") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.

(defrule MOTIVATION::generate-intention
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "remove-blocked-task") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.

(defrule MOTIVATION::generate-motive
"To generate a new motive according to the result of appraisal with respect to the shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "acknowledge-emotion") (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-belief
"To generate an inferred new belief of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
(ToM::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent HUMAN) (belief "broken-measurement-tool") (belief-type MUTUAL) (belief-about ENVIRONMENT) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-intention
"To generate an inferred new intention of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
(ToM::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent HUMAN) (intention "remove-blocked-task") (temporal-status CONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-motive
"To generate an inferred new motive of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
(ToM::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "remove-blocked-task") (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-goal
"To generate an inferred new goal of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
(ToM::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::goal (task "install-panel") (event "ee-au-01") (agent HUMAN) (goal "succeed-finishing-mission") (proximity DISTAL) (specificity SPECIFIC) (difficulty DIFFICULT))))
;; A method should be called in Java to assert this fact into the working memory.


