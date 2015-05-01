(deftemplate emotion-valence
"What is the corresponding valence of the emotion?"
(slot task (type STRING))
(slot valence-type (type SYMBOL) (allowed-values NEGATIVE POSITIVE)))

(deftemplate propose-status
"The status of a task phase which is conveyed by the declarative sentence."
(slot task (type STRING))
(slot phase (type SYMBOL) (allowed-values BEGIN DURING END))
(slot status (type SYMBOL) (allowed-values SUCCESS FAILURE UNLIKELY LIKELY PROGRESS)))

(deftemplate ask-status
"What is the status of a task phase?"
(slot task (type STRING))
(slot phase (type SYMBOL) (allowed-values BEGIN DURING END)))

(deftemplate when
"What time-span does the declarative sentence refer to?"
(slot task (type STRING))
(slot time-span (type SYMBOL) (allowed-values PAST DURING FUTURE)))

(deftemplate causality
"What are the cause and effect that the declarative sentence talking about?"
(slot task (type STRING))
(slot cause (type STRING))
(slot effect (type STRING)))

(deftemplate propose-stop
"Let's stop achieving task."
(slot task (type STRING)))

(deftemplate verbal-emotion
"What are the somatic markers associated with verbally conveyed emotion?"
(slot task (type STRING))
(slot valence (type FLOAT))
(slot arousal (type FLOAT))
(slot stance (type FLOAT)))

(deftemplate ask-can
"Can you do a task?"
(slot task (type STRING)))

(deftemplate accept
"Yes"
(multislot task (type STRING))
(multislot responsible (type SYMBOL) (allowed-values ROBOT ASTRONAUT BOTH)))

(deftemplate discourse-marker
"To use them (say) for expressing an attitude."
(slot task (type STRING))
(slot marker (type STRING))
(slot type (type SYMBOL) (allowed-values INTERJECTION PAUSE HEDGES ATTITUDE RESPONSE MONITOR ORGANIZER)))

(deftemplate acknowledge
"To acknowledge the collaborator's status/statement."
(slot task (type STRING))
(slot acknowledgement (type STRING)))

(deftemplate propose-can
"To tell the collaborator what can be done by the robot."
(slot task (type STRING))
(slot statement (type STRING)))

(deftemplate propose-who
"The responsible collaborator for the task."
(slot task (type STRING))
(slot responsible (type SYMBOL) (allowed-values ROBOT ASTRONAUT BOTH)))

(deftemplate propose-when
"The time that the task takes place."
(slot task (type STRING))
(slot when (type SYMBOL) (allowed-values AFTER LATER AGO BEFORE BY UNTIL DURING WHILE FROM-TO FROM-TILL FROM-UNTILL ON IN AT PAST TO FOR SINCE AS-SOON-AS AS-LONG-AS))
(slot reference (type STRING) (default nil)))

(deftemplate propose-should
"Let's achieve task."
(multislot task (type STRING)))

(deftemplate explain
"To explain the reason behind an action/task."
(slot task (type STRING))
(slot reason (type STRING)))