(deftemplate EMOTION-INSTANCE::emotion-instance
"Actual emotion instance."
(slot event (type STRING))
(slot agent (type SYMBOL) (allowed-values ROBOT HUMAN UNKNOWN) (default UNKNOWN))
(slot emotion-instance (type SYMBOL) (allowed-values JOY ANGER HOPE GUILT PRIDE SHAME WORRY FRUSTRATION NEUTRAL UNKNOWN) (default UNKNOWN)))
