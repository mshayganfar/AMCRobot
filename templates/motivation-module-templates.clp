(deftemplate MOTIVATION::motive
"Human's (anticipated) or the robot's motive."
(slot task (type STRING))
(slot agent (type SYMBOL) (allowed-values ROBOT HUMAN))
(slot motive (type STRING))
(slot motive-insistence (type SYMBOL) (allowed-values HIGH LOW MEDIUM UNKNOWN))
(slot motive-importance (type SYMBOL) (allowed-values IMPORTANT UNIMPORTANT NEUTRAL UNKNOWN))
(slot motive-urgency (type SYMBOL) (allowed-values URGENT NONURGENT NEUTRAL UNKNOWN))
(slot motive-intensity (type SYMBOL) (allowed-values HIGH LOW MEDIUM UNKNOWN))
(slot motive-failure-disruptiveness (type SYMBOL) (allowed-values HIGH DISRUPTIVE NONDISRUPTIVE NEUTRAL UNKNOWN))
(slot motive-status (type SYMBOL) (allowed-values ACTIVE PASSIVE UNKNOWN)))