import jess.*;

public class Phases {
	
	public static Rete JessEngine = new Rete();
	
	protected static final String strUtteranceTemplates           = "templates/utterance-templates.clp";
	protected static final String strCollaborationModuleTemplates = "templates/collaboration-module-templates.clp";
	protected static final String strMotivationModuleTemplates    = "templates/motivation-module-templates.clp";
	
	protected void initializeJessEngine() {
		try {
			JessEngine.batch("modules/module-definitions.clp");
		} catch (JessException e) {
			e.printStackTrace();
		}
	}
}