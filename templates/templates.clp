(deftemplate emotion-valence
"What is the corresponding valence of the emotion?"
(slot task (type STRING))
(slot valence-type (type SYMBOL) (allowed-values NEGATIVE POSITIVE)))

(deftemplate what-status
"What does the declarative sentence convey about the status of a task?"
(slot task (type STRING))
(slot phase (type SYMBOL) (allowed-values BEGIN DURING END))
(slot status (type SYMBOL) (allowed-values SUCCESS FAILURE UNLIKELY LIKELY PROGRESS)))

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
(multislot responsible (type SYMBOL) (allowed-values ROBOT ASTRONAUT BOTH))
(multislot task (type STRING)))