(deftemplate MENTAL-STATE::belief-sharedPlans
"Robot's belief based on SharedPlans theory."
(slot task (type STRING))
(slot event (type STRING))
(slot agent (type SYMBOL) (type SYMBOL) (allowed-values ROBOT HUMAN))
(slot belief (type STRING))
(slot belief-type (type SYMBOL) (allowed-values PRIVATE INFERRED MUTUAL))
(slot belief-about (type SYMBOL) (allowed-values SELF OTHER EVENT ENVIRONMENT))
(slot strength (type SYMBOL) (allowed-values HIGH MEDIUM LOW UNKNOWN) (default UNKNOWN))
(slot accuracy (type SYMBOL) (allowed-values HIGH MEDIUM LOW UNKNOWN) (default UNKNOWN))
(slot frequency (type SYMBOL) (allowed-values HIGH MEDIUM LOW UNKNOWN) (default UNKNOWN))
(slot recency (type SYMBOL) (allowed-values HIGH MEDIUM LOW UNKNOWN) (default UNKNOWN))
(slot saliency (type SYMBOL) (allowed-values HIGH MEDIUM LOW UNKNOWN) (default UNKNOWN))
(slot persistence (type SYMBOL) (allowed-values HIGH MEDIUM LOW UNKNOWN) (default UNKNOWN)))

(deftemplate MENTAL-STATE::intention
"Robot's intention or belief about human's intention."
(slot task (type STRING))
(slot event (type STRING))
(slot agent (type SYMBOL) (type SYMBOL) (allowed-values ROBOT HUMAN))
(slot intention (type STRING))
(slot temporal-status (type SYMBOL) (allowed-values CONSISTENT INCONSISTENT UNKNOWN) (default UNKNOWN))
(slot direct-experience (type SYMBOL) (allowed-values SIMILAR DISSIMILAR UNKNOWN) (default UNKNOWN))
(slot certainty (type SYMBOL) (allowed-values CERTAIN UNCERTAIN UNKNOWN) (default UNKNOWN))
(slot ambivalence (type SYMBOL) (allowed-values AMBIVALENT UNAMBIVALENT UNKNOWN) (default UNKNOWN))
(slot affective-cognitive-consistency (type SYMBOL) (allowed-values CONSISTENT INCONSISTENT UNKNOWN) (default UNKNOWN)))

(deftemplate MENTAL-STATE::goal
"Robot's goal or belief about human's goal."
(slot task (type STRING))
(slot event (type STRING))
(slot agent (type SYMBOL) (type SYMBOL) (allowed-values ROBOT HUMAN))
(slot goal (type STRING))
(slot proximity (type SYMBOL) (allowed-values PROXIMAL DISTAL UNKNOWN) (default UNKNOWN))
(slot specificity (type SYMBOL) (allowed-values SPECIFIC GENERAL UNKNOWN) (default UNKNOWN))
(slot difficulty (type SYMBOL) (allowed-values DIFFICULT EASY UNKNOWN) (default UNKNOWN)))

(deftemplate MENTAL-STATE::emotion-instance
"Robot's emotion instance or or belief about human's emotion instance."
(slot task (type STRING))
(slot event (type STRING))
(slot agent (type SYMBOL) (type SYMBOL) (allowed-values ROBOT HUMAN))
(slot emotion-instance (type SYMBOL) (allowed-values JOY ANGER HOPE GUILT PRIDE SHAME WORRY FRUSTRATION NEUTRAL) (default NEUTRAL)))