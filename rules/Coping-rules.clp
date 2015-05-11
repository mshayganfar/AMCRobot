;;;=============================================================
;;;                    *** Coping Module ***
;;;     
;;; Coping mechanism is responsible for interpreting ongoing 
;;; changes in the Mental States and adopting the appropriate
;;; behavior with respect to these changes.
;;;
;;; (To read more, see: 
;;;  doc/PhDThesisProposal-MohammadShayganfar.pdf)
;;;
;;;     Jess version 4.1
;;;
;;;     Author: Mohammad Shayganfar
;;;
;;;=============================================================

(defrule COPING::problem-focused-coping-process
"To evoke problem-focused coping strategy."
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "astronaut-frustrated") (belief-type PRIVATE) (belief-about OTHER) (strength MEDIUM) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence UNKNOWN))
(MENTAL-STATE::belief-about (event "ee-au-01") (mental-state-id "..."))
=>
(assert (COPING::problem-focused-coping-behavior (task "install-panel") (event "ee-au-01") (action "acknowledge-emotion") (intention "acknowledge-emotion") (coping-strategy ACTIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::emotion-focused-coping-process
"To evoke emotion-focused coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "astronaut-frustrated") (belief-type PRIVATE) (belief-about OTHER) (strength MEDIUM) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence UNKNOWN))
(MENTAL-STATE::belief-about (event "ee-au-01") (mental-state-id "..."))
=>
(assert (COPING::emotion-focused-coping-behavior (task "install-panel") (event "ee-au-01") (action "acknowledge-emotion") (intention "acknowledge-emotion") (coping-strategy UNKNOWN))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::intention-based-coping-process
"To evoke intention-based coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "remove-blocked-task") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))
=>
(assert (COPING::intention-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "provide-alternative-solution") (intention "provide-alternative-solution") (coping-strategy PLANNING))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::attention-based-coping-process
"To evoke attention-based coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(COLLABORATION::attention-focus (task "install-panel") (event "ee-au-01") (agent ROBOT) (focus TASK))
(MENTAL-STATE::belief-about (event "ee-au-01") (mental-state-id "..."))
=>
(assert (COPING::attention-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "...") (intention "...") (coping-strategy UNKNOWN))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::belief-based-coping-process
"To evoke belief-based coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "astronaut-frustrated") (belief-type PRIVATE) (belief-about OTHER) (strength MEDIUM) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence UNKNOWN))
(MENTAL-STATE::belief-about (event "ee-au-01") (mental-state-id "..."))
=>
(assert (COPING::belief-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "...") (intention "...") (coping-strategy UNKNOWN))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::desire-based-coping-process
"To evoke desire-based coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MOTIVATION::motive (task "install-panel") (event "ee-au-01") (motive "acknowledge-emotion") (motive-insistence HIGH) (motive-importance IMPORTANT) (motive-urgency URGENT) (motive-intensity HIGH) (motive-failure-disruptiveness DISRUPTIVE) (motive-status PASSIVE))
(MENTAL-STATE::belief-about (event "ee-au-01") (mental-state-id "..."))
=>
(assert (COPING::desire-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "...") (intention "...") (coping-strategy UNKNOWN))))
;; A method should be called in Java to assert this fact into the working memory.

