(deftemplate attention-focus
"Collaborators' focus of attention."
(slot task (type STRING))
(slot agent (type SYMBOL) (allowed-values ROBOT HUMAN BOTH)))

(deftemplate collaboration-goal
"Collaborators' goals."
(slot task (type STRING))
(slot agent (type SYMBOL) (allowed-values ROBOT HUMAN))
(slot goal (type STRING)))

(deftemplate shared-goal
"Shared goal (abstract) between collaborators."
(slot task (type STRING))
(slot shared-goal (type STRING)))

(deftemplate temporal-order
"Temporal order of the tasks."
(multislot tasks (type STRING)))

(deftemplate task-inputs
"Inputs of a task."
(slot task (type STRING))
(multislot task-inputs (type STRING)))

(deftemplate task-outputs
"Outputs of a task."
(slot task (type STRING))
(multislot task-outputs (type STRING)))

(deftemplate task-input-types
"Input type of a task."
(slot task (type STRING))
(multislot input-types (type STRING)))

(deftemplate task-output-types
"Output type of a task."
(slot task (type STRING))
(multislot output-types (type STRING)))

(deftemplate task-preconditions
"Preconditions of a task."
(slot task (type STRING))
(multislot task-preconditions (type STRING)))

(deftemplate task-precondition-status
"Precondition status of a task."
(slot task (type STRING))
(multislot task-preconditions (type STRING))
(multislot precondition-status (type SYMBOL) (allowed-values FALSE TRUE UNKNOWN)))

(deftemplate task-postconditions
"Postconditions of a task."
(slot task (type STRING))
(multislot task-postconditions (type STRING)))

(deftemplate task-postcondition-status
"Postcondition status of a task."
(slot task (type STRING))
(multislot task-postconditions (type STRING))
(multislot postcondition-status (type SYMBOL) (allowed-values FALSE TRUE UNKNOWN)))

(deftemplate postcondition-sufficiency
"Sufficiency of the postcondition of a task."
(slot task (type STRING))
(multislot postcondition-sufficiency (type SYMBOL) (allowed-values SUFFICIENT INSUFFICIENT UNKNOWN)))

(deftemplate recipe-applicability
"Applicability of a recipe."
(slot task (type STRING))
(slot recipe (type STRING))
(slot recipe-applicability (type SYMBOL) (allowed-values APPLICABLE INAPPLICABLE UNKNOWN)))

(deftemplate alternative-recipe
"Alternative recipe(s) of a task."
(slot task (type STRING))
(slot alternative-recipe (type atom) (allowed-values TRUE FALSE nil)))

(deftemplate task-status
"Status of a primitive/non-primitive task."
(slot task (type STRING))
(slot task-status (type SYMBOL) (allowed-values DONE-SUCCESS DONE-FAILURE LIVE BLOCKED STARTED)))