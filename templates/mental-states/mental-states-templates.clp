(deftemplate MENTAL-STATE::belief
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

(deftemplate MENTAL-STATE::belief-about
"Robot's belief about human's mental states, e.g., motive, goal, etc."
(slot event (type STRING))
(slot mental-state-id (type STRING)))

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

(deftemplate MENTAL-STATE::motive
"Robot's motive."
(slot task (type STRING))
(slot event (type STRING))
(slot motive (type STRING))
(slot agent (type SYMBOL) (allowed-values ROBOT HUMAN UNKNOWN) (default UNKNOWN))
(slot motive-insistence (type SYMBOL) (allowed-values HIGH LOW MEDIUM UNKNOWN) (default UNKNOWN))
(slot motive-importance (type SYMBOL) (allowed-values IMPORTANT UNIMPORTANT NEUTRAL UNKNOWN) (default UNKNOWN))
(slot motive-urgency (type SYMBOL) (allowed-values URGENT NONURGENT NEUTRAL UNKNOWN) (default UNKNOWN))
(slot motive-intensity (type SYMBOL) (allowed-values HIGH LOW MEDIUM UNKNOWN) (default UNKNOWN))
(slot motive-failure-disruptiveness (type SYMBOL) (allowed-values HIGH DISRUPTIVE NONDISRUPTIVE NEUTRAL UNKNOWN) (default UNKNOWN))
(slot motive-status (type SYMBOL) (allowed-values ACTIVE PASSIVE UNKNOWN) (default UNKNOWN)))

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

(deftemplate MENTAL-STATE::contribute
"An intention contributes to another intention as a hierarchy."
(slot task (type STRING))
(slot event (type STRING))
(slot contributor (type STRING))
(slot contributed (type STRING)))

(deftemplate MENTAL-STATE::mental-states-distance
"The distance between the robot's and human's mental states."
(slot task (type STRING))
(slot event (type STRING))
(slot distance (type SYMBOL) (allowed-values BIG SMALL MEDIUM UNKNOWN) (default UNKNOWN)))