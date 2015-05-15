;;;=============================================================
;;;                 *** Collaboration Module ***
;;;     
;;; Collaboration mechanism will construct a hierarchy of tasks
;;; and also manage and maintain the constraints and other 
;;; required details of the collaboration specified by the plan.
;;;
;;; (To read more, see: 
;;;  doc/PhDThesisProposal-MohammadShayganfar.pdf)
;;;
;;;     Jess version 4.1
;;;
;;;     Author: Mohammad Shayganfar
;;;
;;;=============================================================

(focus COLLABORATION)

(defrule COLLABORATION::task-status
"The status of the given task."
(UTTERANCE::propose-status (task "install-panel") (event "ee-au-01") (phase END) (status UNLIKELY))
(UTTERANCE::when (task "install-panel") (event "ee-au-01") (time-span FUTURE))
=>
(assert (COLLABORATION::task-status (task "install-panel") (event "ee-au-01") (task-status BLOCKED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::attention-focus
"The object of focus of attention."
(UTTERANCE::causality (task "install-panel") (event "ee-au-01") (cause "measurement-tool-problem") (effect "finish-task"))
=>
(assert (COLLABORATION::attention-focus (task "install-panel") (event "ee-au-01") (agent HUMAN) (focus ENVIRONMENT))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


