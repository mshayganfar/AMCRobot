;;;=============================================================
;;;                 *** Theory of Mind Module ***
;;;     
;;; The robot uses the Theory of Mind mechanism to infer and 
;;; attribute beliefs, intentions, motives and goals to its 
;;; collaborator based on the user model it creates and maintains 
;;; during the course of the collaboration.
;;;
;;; (To read more, see: 
;;;  doc/PhDThesisProposal-MohammadShayganfar.pdf)
;;;
;;;     Jess version 4.1
;;;
;;;     Author: Mohammad Shayganfar
;;;
;;;=============================================================

(focus ToM)

(defrule ToM::reverse-appraisal
"To do reverse appraisal and infer values for human's appraisal variables."
(EMOTION-INSTANCE::emotion-instance (event "e-a-01") (emotion-instance FRUSTRATION))
=>
(assert (ToM::reverse-appraisal (task "install-panel") (event "e-a-01") (event-type UTTERANCE) (emotion-instance FRUSTRATION) (perspective OTHER) (relevance RELEVANT) (desirability DESIRABLE) (likelihood LIKELY) (causal-attribution NONE) (controllability UNCONTROLLABLE) (changeability UNCHANGEABLE) (expectedness UNEXPECTED) (urgency URGENT))))
;; Corresponding methods should be called in Java obtain these values for appraisal variables based on my own algorithms.