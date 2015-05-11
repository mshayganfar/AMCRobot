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

(defrule COPING::focus-based-coping-process
"To appraise the current event."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::belief (task "install-panel") (event "ee-au-01") (agent ROBOT) (belief "astronaut-frustrated") (belief-type PRIVATE) (belief-about OTHER) (strength MEDIUM) (accuracy HIGH) (frequency LOW) (recency HIGH) (saliency HIGH) (persistence UNKNOWN))
(MENTAL-STATE::belief-about (event "ee-au-01") (mental-state-id "..."))
=>
(assert (COPING::focus-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "acknowledge-emotion") (intention "acknowledge-emotion") (coping-strategy-type EMOTION-FOCUSED) (coping-strategy ACTIVE))))
;; A method should be called in Java to assert this fact into the working memory.


(defrule COPING::relation-based-coping-process
"To appraise the current event."
(APPRAISAL::appraisal-frame (task "install-panel") (event "ee-au-01") (event-type UTTERANCE) (with-respect-to SHARED-GOAL) (perspective SELF) (relevance RELEVANT) (desirability UNDESIRABLE) (likelihood LIKELY) (causal-attribution OTHER) (controllability CONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))
(MENTAL-STATE::intention (task "install-panel") (event "ee-au-01") (agent ROBOT) (intention "remove-blocked-task") (temporal-status INCONSISTENT) (direct-experience DISSIMILAR) (certainty CERTAIN) (ambivalence UNAMBIVALENT) (affective-cognitive-consistency CONSISTENT))
(MENTAL-STATE::belief-about (event "ee-au-01") (mental-state-id "..."))
=>
(assert (COPING::relation-based-coping-behavior (task "install-panel") (event "ee-au-01") (action "provide-alternative-solution") (intention "provide-alternative-solution") (coping-strategy-type INTENTION-RELATED) (coping-strategy PLANNING))))
;; A method should be called in Java to assert this fact into the working memory.

