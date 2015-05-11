(deftemplate COPING::relation-based-coping-behavior
"Coping behaviors based on strategies made in terms of their impact on attention, belief, desire, intention."
(slot task (type STRING))
(slot event (type STRING))
(slot action (type STRING))
(slot intention (type STRING))
(slot coping-strategy-type (type SYMBOL) (allowed-values ATTENTION-RELATED BELIEF-RELATED DESIRE-RELATED INTENTION-RELATED UNKNOWN) (default UNKNOWN))
(slot coping-strategy (type SYMBOL) (allowed-values SEEK-INFO SUPPRESS-INFO SHIFT-RESPONSIBILITY WISHFUL-THINKING MENTAL-DISENGAGEMENT POSITIVE-REINTERPRETATION PLANNING SEEK-INSTRUMENTAL-SUPPORT MAKE-AMENDS PROCRASTINATION RESIGNATION AVOIDANCE UNKNOWN) (default UNKNOWN)))

(deftemplate COPING::focus-based-coping-behavior
"Coping behaviors based on strategies made in terms of their focus on problems or emotions."
(slot task (type STRING))
(slot event (type STRING))
(slot action (type STRING))
(slot intention (type STRING))
(slot coping-strategy-type (type SYMBOL) (allowed-values EMOTION-FOCUSED PROBLEM-FOCUSED UNKNOWN) (default UNKNOWN))
(slot coping-strategy (type SYMBOL) (allowed-values SUPPRESS-OTHER-ACTIVITIES RESTRAINT SEEK-SOCIAL-EMOTIONAL-SUPPORT POSITIVE-REINTERPRETATION ACCEPTANCE DENIAL BEHAVIORAL-DISENGAGEMENT MENTAL-DISENGAGEMENT ACTIVE PLANNING SEEK-SOCIAL-INSTRUMENTAL-SUPPORT UNKNOWN) (default UNKNOWN)))