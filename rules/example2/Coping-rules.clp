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

(defrule COPING::problem-focused-coping-process
"To evoke problem-focused coping strategy."
(ToM::reverse-appraisal (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "astronaut-frustrated") (belief-type PRIVATE) (belief-about OTHER) (strength MEDIUM) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence UNKNOWN))
(MENTAL-STATE::belief-about (event "ee-au-01") (mental-state-id "..."))
=>
(assert (COPING::problem-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "ask-next-step") (intention "know-next-step") (coping-strategy SEEK-SOCIAL-INSTRUMENTAL-SUPPORT))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::intention-based-coping-process
"To evoke intention-based coping strategy."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "remove-blocked-task") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))
=>
(assert (COPING::intention-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "provide-alternative-solutions") (intention "provide-alternative-solutions") (coping-strategy PLANNING))))
;; A method should be called in Java to assert this fact into the working memory.


