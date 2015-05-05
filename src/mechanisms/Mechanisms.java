package mechanisms;

import jess.JessException;
import jess.Rete;

public class Mechanisms {

	protected static Rete JessEngine = new Rete();
	
	protected static final String strUtteranceTemplates           = "templates/utterance-templates.clp";
	protected static final String strCollaborationModuleTemplates = "templates/collaboration-module-templates.clp";
	protected static final String strMotivationModuleTemplates    = "templates/motivation-module-templates.clp";
	protected static final String strAppraisalModuleTemplates     = "templates/appraisal-module-templates.clp";
	protected static final String strCopingModuleTemplates        = "templates/coping-module-templates.clp";
	
	protected void initializeMechanisms() {
		try {
			JessEngine.batch("modules/module-definitions.clp");
		} catch (JessException e) {
			e.printStackTrace();
		}
	}
}
