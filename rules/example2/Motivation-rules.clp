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
(MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "remove-blocked-task") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "remove-blocked-task") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention-2
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "broken-measurement-tool") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength MEDIUM) (accuracy LOW) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
(MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "help-with-measurement-tool") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "help-with-measurement-tool") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty UNCERTAIN) (ambivalence AMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention-3
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "proposed-task-termination") (belief-type PRIVATE) (belief-about TASK) (strength MEDIUM) (accuracy LOW) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
(MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "task-termination") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "task-termination") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty UNCERTAIN) (ambivalence AMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention-4
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "intention-ambiguity") (belief-type PRIVATE) (belief-about TASK) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
(MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "ask-remove-ambiguity") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "remove-blocked-task") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "ask-remove-ambiguity") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention-5
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-02") (agent ROBOT) (belief "intention-ambiguity") (belief-type PRIVATE) (belief-about TASK) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
(MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "ask-remove-ambiguity") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
(MENTAL-STATE::motive (task "install-panel") (event "ee-au-02") (motive "ask-remove-ambiguity") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-02") (agent ROBOT) (intention "ask-remove-ambiguity") (temporal-status CONSISTENT) (direct-experience SIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention-6
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-02") (agent ROBOT) (belief "intention-ambiguity") (belief-type PRIVATE) (belief-about TASK) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
(MENTAL-STATE::motive (task "install-panel") (event "ee-au-02") (motive "ask-remove-ambiguity") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-02") (agent ROBOT) (intention "ask-remove-ambiguity") (temporal-status CONSISTENT) (direct-experience SIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-intention-7
"To generate a new intention according to the result of appraisal with respect to the robot's/shared goal."
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-03") (agent ROBOT) (belief "unacceptable-proposal") (belief-type PRIVATE) (belief-about TASK) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
(MENTAL-STATE::motive (task "install-panel") (event "ee-au-03") (motive "reject-proposal") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
=>
(assert (MENTAL-STATE::intention (task "install-panel") (event "ee-au-03") (agent ROBOT) (intention "reject-proposal") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))))
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
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "broken-measurement-tool") (belief-type PRIVATE) (belief-about ENVIRONMENT) (strength MEDIUM) (accuracy LOW) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-belief-3
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::task-status (task "install-panel") (event "ee-au-01") (task-status BLOCKED))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "proposed-task-termination") (belief-type PRIVATE) (belief-about TASK) (strength MEDIUM) (accuracy LOW) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-belief-4
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "help-with-measurement-tool") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty UNCERTAIN) (ambivalence AMBIVALENT) (affective-cognitive-consistency CONSISTENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "task-termination") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty UNCERTAIN) (ambivalence AMBIVALENT) (affective-cognitive-consistency CONSISTENT))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "intention-ambiguity") (belief-type PRIVATE) (belief-about TASK) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-belief-5
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::task-status (task "install-panel") (event "ee-au-02") (task-status BLOCKED))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-02") (agent ROBOT) (belief "intention-ambiguity") (belief-type PRIVATE) (belief-about TASK) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-belief-6
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-03") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::task-status (task "install-panel") (event "ee-au-02") (task-status BLOCKED))
(COLLABORATION::attention-focus (task "install-panel") (event "ee-au-03") (agent HUMAN) (focus ENVIRONMENT))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::belief (task "install-panel") (event "ee-au-03") (agent ROBOT) (belief "unacceptable-proposal") (belief-type PRIVATE) (belief-about TASK) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-motive-1
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::shared-goal-status (task "install-panel") (event "ee-au-01") (shared-goal-status BLOCKED))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "remove-blocked-task") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-motive-2
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::shared-goal-status (task "install-panel") (event "ee-au-01") (shared-goal-status BLOCKED))
(COLLABORATION::task-status (task "install-panel") (event "ee-au-01") (task-status BLOCKED)) ; This task SHOULD be changed to measurement tool problem.
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "help-with-measurement-tool") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-motive-3
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::shared-goal-status (task "install-panel") (event "ee-au-01") (shared-goal-status BLOCKED))
(COLLABORATION::task-status (task "install-panel") (event "ee-au-01") (task-status BLOCKED))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "task-termination") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-motive-4
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::shared-goal-status (task "install-panel") (event "ee-au-01") (shared-goal-status BLOCKED))
(COLLABORATION::task-status (task "install-panel") (event "ee-au-01") (task-status BLOCKED))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "intention-ambiguity") (belief-type PRIVATE) (belief-about TASK) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-01") (motive "ask-remove-ambiguity") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-motive-5
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::shared-goal-status (task "install-panel") (event "ee-au-01") (shared-goal-status BLOCKED))
(COLLABORATION::task-status (task "install-panel") (event "ee-au-02") (task-status BLOCKED))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-02") (agent ROBOT) (belief "intention-ambiguity") (belief-type PRIVATE) (belief-about TASK) (strength HIGH) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence LOW))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-02") (motive "ask-remove-ambiguity") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule MOTIVATION::generate-motive-6
"To generate a new belief according to the result of appraisal with respect to the robot's/shared goal."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-03") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::recipe-applicability (task "install-panel") (event "ee-au-03") (recipe "fix-meaurement-tool") (recipe-applicability INAPPLICABLE))
(COLLABORATION::alternative-recipe (task "install-panel") (event "ee-au-03") (recipes "fix-meaurement-tool") (alternative-recipe FALSE))
;; Other mental states are required here.
=>
(assert (MENTAL-STATE::motive (task "install-panel") (event "ee-au-03") (motive "reject-proposal") (agent ROBOT) (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))))
;; A method should be called in Java to assert this fact into the working memory.