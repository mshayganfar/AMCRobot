(deftemplate COLLABORATION::attention-focus
"Collaborators' focus of attention."
(slot task (type STRING))
(slot event (type STRING))
(slot agent (type SYMBOL) (allowed-values ROBOT HUMAN BOTH UNKNOWN) (default UNKNOWN))
(slot focus (type SYMBOL) (allowed-values EVENT ENVIRONMENT TASK SELF OTHER UNKNOWN) (default UNKNOWN)))

(deftemplate COLLABORATION::collaboration-goal
"Collaborators' goals."
(slot task (type STRING))
(slot event (type STRING))
(slot agent (type SYMBOL) (allowed-values ROBOT HUMAN UNKNOWN) (default UNKNOWN))
(slot goal (type STRING)))

(deftemplate COLLABORATION::shared-goal
"Shared goal (abstract) between collaborators."
(slot task (type STRING))
(slot event (type STRING))
(slot shared-goal (type STRING)))

(deftemplate COLLABORATION::shared-goal-status
"Shared goal (abstract) between collaborators."
(slot task (type STRING))
(slot event (type STRING))
(slot shared-goal-status (type SYMBOL) (allowed-values ACHIEVED BLOCKED INPROGRESS UNKNOWN) (default UNKNOWN)))

(deftemplate COLLABORATION::temporal-order
"Temporal order of the tasks."
(multislot tasks (type STRING))
(slot event (type STRING)))

(deftemplate COLLABORATION::task-inputs
"Inputs of a task."
(slot task (type STRING))
(slot event (type STRING))
(multislot task-inputs (type STRING)))

(deftemplate COLLABORATION::task-outputs
"Outputs of a task."
(slot task (type STRING))
(slot event (type STRING))
(multislot task-outputs (type STRING)))

(deftemplate COLLABORATION::task-input-types
"Input type of a task."
(slot task (type STRING))
(slot event (type STRING))
(multislot input-types (type STRING)))

(deftemplate COLLABORATION::task-output-types
"Output type of a task."
(slot task (type STRING))
(slot event (type STRING))
(multislot output-types (type STRING)))

(deftemplate COLLABORATION::task-preconditions
"Preconditions of a task."
(slot task (type STRING))
(slot event (type STRING))
(multislot task-preconditions (type STRING)))

(deftemplate COLLABORATION::task-precondition-status
"Precondition status of a task."
(slot task (type STRING))
(slot event (type STRING))
(multislot preconditions-status (type SYMBOL) (allowed-values SATISFIED UNSATISFIED UNKNOWN) (default UNKNOWN)))

(deftemplate COLLABORATION::task-postconditions
"Postconditions of a task."
(slot task (type STRING))
(slot event (type STRING))
(multislot task-postconditions (type STRING)))

(deftemplate COLLABORATION::task-postcondition-status
"Postcondition status of a task."
(slot task (type STRING))
(slot event (type STRING))
(multislot postconditions-status (type SYMBOL) (allowed-values SATISFIED UNSATISFIED UNKNOWN) (default UNKNOWN)))

(deftemplate COLLABORATION::postcondition-sufficiency
"Sufficiency of the postcondition of a task."
(slot task (type STRING))
(slot event (type STRING))
(multislot postcondition-sufficiency (type SYMBOL) (allowed-values SUFFICIENT INSUFFICIENT UNKNOWN) (default UNKNOWN)))

(deftemplate COLLABORATION::recipe-applicability
"Applicability of a recipe."
(slot task (type STRING))
(slot event (type STRING))
(slot recipe (type STRING))
(slot recipe-applicability (type SYMBOL) (allowed-values APPLICABLE INAPPLICABLE UNKNOWN) (default UNKNOWN)))

(deftemplate COLLABORATION::alternative-recipe
"Alternative recipe(s) of a task."
(slot task (type STRING))
(slot event (type STRING))
(multislot recipes (type STRING))
(multislot alternative-recipe (type atom) (allowed-values TRUE FALSE nil) (default nil)))

(deftemplate COLLABORATION::task-status
"Status of a primitive/non-primitive task."
(slot task (type STRING))
(slot event (type STRING))
(slot task-status (type SYMBOL) (allowed-values DONE-SUCCESS DONE-FAILURE LIVE BLOCKED STARTED UNKNOWN) (default UNKNOWN)))

