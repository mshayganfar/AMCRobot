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

(defrule COLLABORATION::precondition-status
"To see whether the precondition(s) of the current task is/are satisfied."
(COLLABORATION::task-precondition-status (task "install-panel") (event "ee-au-01") (preconditions-status ALL))
=>
(printout t "Task can be started!" crlf))
;; Corresponding methods should be called in Java to obtain these values for appraisal variables based on my own algorithms.

