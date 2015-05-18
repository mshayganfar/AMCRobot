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

(focus COPING)

(defrule COPING::problem-focused-coping-process-1
"To evoke problem-focused coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "ask-remove-ambiguity") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))
;; Other mental states might be required here.
=>
(assert (COPING::problem-focused-coping-behavior (task "install-panel") (event "ee-au-01") (action "ask-next-step") (intention "know-next-step") (coping-strategy SEEK-SOCIAL-INSTRUMENTAL-SUPPORT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::intention-based-coping-process-1
"To evoke intention-based coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "remove-blocked-task") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))
=>
(assert (COPING::intention-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "provide-alternative-solutions") (intention "provide-alternative-solutions") (coping-strategy PLANNING))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::problem-focused-coping-process-2
"To evoke problem-focused coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-02") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-02") (agent ROBOT) (intention "ask-remove-ambiguity") (temporal-status CONSISTENT) (direct-experience SIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))
;; Other mental states might be required here.
=>
(assert (COPING::problem-focused-coping-behavior (task "install-panel") (event "ee-au-02") (action "ask-next-step") (intention "know-next-step") (coping-strategy SEEK-SOCIAL-INSTRUMENTAL-SUPPORT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::problem-focused-coping-process-3
"To evoke problem-focused coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-03") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-03") (agent ROBOT) (intention "reject-proposal") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))
;; Other mental states might be required here.
=>
(assert (COPING::problem-focused-coping-behavior (task "install-panel") (event "ee-au-03") (action "reject-proposal") (intention "reject-proposal") (coping-strategy ACTIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::intention-based-coping-process-2
"To evoke intention-based coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-04") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood UNLIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "remove-blocked-task") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))
;; Other mental states might be required here.
=>
(assert (COPING::intention-based-coping-behavior (task "install-panel") (event "ee-au-03") (action "provide-alternative-solutions") (intention "provide-alternative-solutions") (coping-strategy PLANNING))))
;; A method should be called in Java to assert this fact into the working memory.