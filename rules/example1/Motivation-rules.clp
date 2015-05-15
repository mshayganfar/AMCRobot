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
;(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "task-blocked") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-belief-2
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness EXPECTED) (urgency URGENT))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-02") (agent ROBOT) (belief "fixing-measurement-tool-problem") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength HIGH) (accuracy HIGH) (frequency MEDIUM) (recency HIGH) (saliency HIGH) (persistence MEDIUM))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-negotiation-belief
"To generate a new belief according to the new negotiation motive."
(MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "negotiate-removing-impasse") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "negotiate-removing-impasse") (belief-type PRIVATE) (belief-about OTHER) (strength HIGH) (accuracy MEDIUM) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence HIGH))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-negotiation-belief-2
"To generate a new belief according to the new negotiation motive."
(MENTAL-STATE::motive (task "install-panel") (event "ee-au-02") (motive "negotiate-removing-impasse") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-02") (agent ROBOT) (belief "negotiate-removing-impasse") (belief-type PRIVATE) (belief-about OTHER) (strength HIGH) (accuracy MEDIUM) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence HIGH))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
;(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "task-blocked") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "remove-blocked-task") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention-2
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness EXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-02") (agent ROBOT) (belief "fixing-measurement-tool-problem") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength HIGH) (accuracy HIGH) (frequency MEDIUM) (recency HIGH) (saliency HIGH) (persistence MEDIUM))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-02") (agent ROBOT) (intention "fixing-measurement-tool-problem") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-negotiation-intention
"To generate a new intention with respect to the new belief about negotiation."
;(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "negotiate-removing-impasse") (belief-type PRIVATE) (belief-about OTHER) (strength HIGH) (accuracy MEDIUM) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence HIGH))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "negotiate-removing-impasse") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-negotiation-intention-2
"To generate a new intention with respect to the new belief about negotiation."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness EXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-02") (agent ROBOT) (belief "negotiate-removing-impasse") (belief-type PRIVATE) (belief-about OTHER) (strength HIGH) (accuracy MEDIUM) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence HIGH))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-02") (agent ROBOT) (intention "negotiate-removing-impasse") (temporal-status CONSISTENT) (direct-experience SIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-motive
"To generate a new motive according to the result of appraisal with respect to the shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "acknowledge-emotion") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-motive-2
"To generate a new motive according to the result of appraisal with respect to the shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness EXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-02") (motive "acknowledge-emotion") (agent ROBOT) (motive-insistence LOW) (motive-importance UNIMPORTANT) (motive-urgency NONURGENT) (motive-intensity LOW) (motive-failure-disruptiveness NONDISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-negotiation-motive
"To generate a new motive according to the need for negotiation."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "negotiate-removing-impasse") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-negotiation-motive-2
"To generate a new motive according to the need for negotiation."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness EXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(UTTERANCE::ask-can (task "fix-measurement-tool") (event "ee-au-02"))
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-02") (motive "negotiate-removing-impasse") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-belief
"To generate an inferred new belief of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
;(ToM::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent HUMAN) (belief "broken-measurement-tool") (belief-type MUTUAL) (belief-about ENVIRONMENT) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-belief-2
"To generate an inferred new belief of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
;(ToM::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-02") (agent HUMAN) (belief "broken-measurement-tool") (belief-type MUTUAL) (belief-about ENVIRONMENT) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-intention
"To generate an inferred new intention of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
;(ToM::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent HUMAN) (intention "remove-blocked-task") (temporal-status CONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-intention-2
"To generate an inferred new intention of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
;(ToM::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-02	") (agent HUMAN) (intention "remove-blocked-task") (temporal-status CONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-motive
"To generate an inferred new motive of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "remove-blocked-task") (agent HUMAN) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-motive-2
"To generate an inferred new motive of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-02") (motive "remove-blocked-task") (agent HUMAN) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-goal
"To generate an inferred new goal of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
;(ToM::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to OTHER-GOAL) (perspective OTHER) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution UNKNOWN) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::goal (task "install-panel") (event "ee-au-01") (agent HUMAN) (goal "succeed-finishing-mission") (proximity DISTAL) (specificity SPECIFIC) (difficulty DIFFICULT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-inferred-goal-2
"To generate an inferred new goal of the human according to the result of appraisal and reverse appraisal with respect to the human's goal."
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
=>
(assert (MENTAL-STATE::goal (task "install-panel") (event "ee-au-02") (agent HUMAN) (goal "succeed-finishing-mission") (proximity DISTAL) (specificity SPECIFIC) (difficulty DIFFICULT))))
;; A method should be called in Java to assert this fact into the working memory.