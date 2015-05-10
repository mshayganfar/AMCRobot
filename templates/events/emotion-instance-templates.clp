(deftemplate EMOTION-INSTANCE::emotion-instance
"Actual emotion instance."
(slot event (type STRING))
(slot emotion-instance (type SYMBOL) (allowed-values JOY ANGER HOPE GUILT PRIDE SHAME WORRY FRUSTRATION NEUTRAL UNKNOWN) (default UNKNOWN)))
