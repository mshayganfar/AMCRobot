(deftemplate ToM::user-type
"Type of the collaborative partner."
(slot task (type STRING))
(slot event (type STRING))
(slot knowledge-competency (type SYMBOL) (allowed-values HIGH-AUTONOMY LOW-AUTONOMY MEDIUM-AUTONOMY UNKNOWN) (default UNKNOWN))
(slot behavior-competency (type SYMBOL) (allowed-values HIGH-COMMUNICATIVE LOW-COMMUNICATIVE MEDIUM-COMMUNICATIVE UNKNOWN) (default UNKNOWN)))

(deftemplate ToM::belief
"Human's anticipated belief."
(slot task (type STRING))
(slot event (type STRING))
(slot belief (type STRING)))

(deftemplate ToM::intention
"Human's anticipated intention."
(slot task (type STRING))
(slot event (type STRING))
(slot intention (type STRING)))

(deftemplate ToM::goal
"Human's anticipated goal."
(slot task (type STRING))
(slot event (type STRING))
(slot goal (type STRING)))

(deftemplate ToM::motive
"Human's anticipated motive."
(slot task (type STRING))
(slot event (type STRING))
(slot motive (type STRING))
(slot motive-insistence (type SYMBOL) (allowed-values HIGH LOW MEDIUM UNKNOWN) (default UNKNOWN))
(slot motive-importance (type SYMBOL) (allowed-values IMPORTANT UNIMPORTANT NEUTRAL UNKNOWN) (default UNKNOWN))
(slot motive-urgency (type SYMBOL) (allowed-values URGENT NONURGENT NEUTRAL UNKNOWN) (default UNKNOWN))
(slot motive-intensity (type SYMBOL) (allowed-values HIGH LOW MEDIUM UNKNOWN) (default UNKNOWN))
(slot motive-failure-disruptiveness (type SYMBOL) (allowed-values HIGH DISRUPTIVE NONDISRUPTIVE NEUTRAL UNKNOWN) (default UNKNOWN))
(slot motive-status (type SYMBOL) (allowed-values ACTIVE PASSIVE UNKNOWN) (default UNKNOWN)))