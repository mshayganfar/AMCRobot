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

(defrule APPRAISAL::appraisal
"To appraise the current event."
(UTTERANCE::propose-status (task "install-panel") (event "ee-au-01") (phase END) (status UNLIKELY))
(UTTERANCE::when (task "install-panel") (event "ee-au-01") (time-span FUTURE))
(UTTERANCE::causality (task "install-panel") (event "ee-au-01") (cause "measurement-tool-problem") (effect "finish-task"))
(UTTERANCE::propose-stop (task "install-panel") (event "ee-au-01"))
=>
(assert (EMOTION-INSTANCE::emotion-instance (event "ee-au-01") (emotion-instance FRUSTRATION))))
;; A method should be called in Java to assert this fact into the working memory.