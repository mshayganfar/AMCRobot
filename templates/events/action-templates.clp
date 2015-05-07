(deftemplate ACTION::action
"Attributes of an action."
(slot event (type STRING))
(slot action (type STRING))
(slot agent (type SYMBOL) (allowed-values ROBOT HUMAN NONE BOTH UNKNOWN) (default UNKNOWN)))