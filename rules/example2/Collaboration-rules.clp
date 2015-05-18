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

(defrule COLLABORATION::task-status-1
"The status of the given task."
(UTTERANCE::propose-status (task "install-panel") (event "ee-au-01") (phase END) (status UNLIKELY))
(UTTERANCE::when (task "install-panel") (event "ee-au-01") (time-span FUTURE))
=>
(assert (COLLABORATION::task-status (task "install-panel") (event "ee-au-01") (task-status BLOCKED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::task-status-2
"The status of the given task."
(UTTERANCE::propose-status (task "install-panel") (event "ee-au-01") (phase END) (status UNLIKELY))
(UTTERANCE::explain (task "install-panel") (event "ee-au-02") (reason "measurement-tool-problem"))
(UTTERANCE::propose-stop (task "install-panel") (event "ee-au-02"))
=>
(assert (COLLABORATION::task-status (task "install-panel") (event "ee-au-02") (task-status BLOCKED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::attention-focus-1
"The object of focus of attention."
(UTTERANCE::causality (task "install-panel") (event "ee-au-01") (cause "measurement-tool-problem") (effect "finish-task"))
=>
(assert (COLLABORATION::attention-focus (task "install-panel") (event "ee-au-01") (agent HUMAN) (focus ENVIRONMENT))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::attention-focus-2
"The object of focus of attention."
(UTTERANCE::ask-can (task "fix-measurement-tool") (event "ee-au-03"))
=>
(assert (COLLABORATION::attention-focus (task "install-panel") (event "ee-au-03") (agent HUMAN) (focus ENVIRONMENT))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::shared-goal-status-1
"The current shared goal's status."
(UTTERANCE::propose-stop (task "install-panel") (event "ee-au-01"))
=>
(assert (COLLABORATION::shared-goal-status (task "install-panel") (event "ee-au-01") (shared-goal-status BLOCKED))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::recipe-applicability-1
"The applicability of the given recipe."
(UTTERANCE::ask-can (task "fix-measurement-tool") (event "ee-au-03"))
;; Other mental states are required here.
=>
(assert (COLLABORATION::recipe-applicability (task "install-panel") (event "ee-au-03") (recipe "fix-meaurement-tool") (recipe-applicability INAPPLICABLE))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.


(defrule COLLABORATION::alternative-recipe-1
"The applicability of the given recipe."
(UTTERANCE::ask-can (task "fix-measurement-tool") (event "ee-au-03"))
;; Other mental states are required here.
=>
(assert (COLLABORATION::alternative-recipe (task "install-panel") (event "ee-au-03") (recipes "fix-meaurement-tool") (alternative-recipe FALSE))))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.