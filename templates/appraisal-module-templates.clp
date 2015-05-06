(deftemplate APPRAISAL::appraisal-frame
"Appraisal frame containing appraisal variables."
(slot task (type STRING))
(slot event (type STRING))
(slot event-type (type SYMBOL) (allowed-values UTTERANCE ACTION EXPRESSION INTERNAL UNKNOWN) (default UNKNOWN))
(slot perspective (type SYMBOL) (allowed-values SELF OTHER UNKNOWN) (default UNKNOWN))
(slot relevance (type SYMBOL) (allowed-values RELEVANT IRRELEVANT NEUTRAL UNKNOWN) (default UNKNOWN))
(slot desirability (type SYMBOL) (allowed-values DESIRABLE UNDESIRABLE NEUTRAL UNKNOWN) (default UNKNOWN))
(slot likelihood (type SYMBOL) (allowed-values LIKELY UNLIKELY NEUTRAL UNKNOWN) (default UNKNOWN))
(slot causal-attribution (type SYMBOL) (allowed-values SELF OTHER BOTH NONE UNKNOWN) (default UNKNOWN))
(slot controllability (type SYMBOL) (allowed-values CONTROLLABLE UNCONTROLLABLE NEUTRAL UNKNOWN) (default UNKNOWN))
(slot changeability (type SYMBOL) (allowed-values CHANGEABLE UNCHANGEABLE NEUTRAL UNKNOWN) (default UNKNOWN))
(slot expectedness (type SYMBOL) (allowed-values EXPECTED UNEXPECTED NEUTRAL UNKNOWN) (default UNKNOWN))
(slot urgency (type SYMBOL) (allowed-values URGENT UNURGENT NEUTRAL UNKNOWN) (default UNKNOWN)))