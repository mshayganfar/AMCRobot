package mechanisms;

import jess.JessException;
import jess.Rete;

public class Mechanisms {

	protected static Rete JessEngine = new Rete();
	
	protected static final String strUtteranceTemplates           = "templates/events/utterance-templates.clp";
	protected static final String strCollaborationModuleTemplates = "templates/mechanisms/collaboration-module-templates.clp";
	protected static final String strMotivationModuleTemplates    = "templates/mechanisms/motivation-module-templates.clp";
	protected static final String strAppraisalModuleTemplates     = "templates/mechanisms/appraisal-module-templates.clp";
	protected static final String strCopingModuleTemplates        = "templates/mechanisms/coping-module-templates.clp";
	protected static final String strToMModuleTemplates           = "templates/mechanisms/ToM-module-templates.clp";
	protected static final String strMentalStatesTemplates        = "templates/mental-states/mental-states-templates.clp";
	protected static final String strEmotionInstanceTemplates     = "templates/events/emotion-instance-templates.clp";
	
	protected void initializeMechanisms() {
		try {
			JessEngine.batch("modules/module-definitions.clp");
			JessEngine.reset();
			JessEngine.batch(strUtteranceTemplates);
			JessEngine.batch(strCollaborationModuleTemplates);
			JessEngine.batch(strMotivationModuleTemplates);
			JessEngine.batch(strAppraisalModuleTemplates);
			JessEngine.batch(strCopingModuleTemplates);
			JessEngine.batch(strToMModuleTemplates);
			JessEngine.batch(strMentalStatesTemplates);
			JessEngine.batch(strEmotionInstanceTemplates);
		} catch (JessException e) {
			e.printStackTrace();
		}
	}
}
