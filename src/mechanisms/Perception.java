package mechanisms;

import jess.JessException;

public class Perception extends Mechanisms{

	public Perception() {
		super.initializeMechanisms();
	}
		
	public void perceive(String strSensoryData) {
		try {
			JessEngine.reset();
			JessEngine.batch(super.strUtteranceTemplates);
			JessEngine.batch(super.strCollaborationModuleTemplates);
			JessEngine.batch(super.strMotivationModuleTemplates);
			JessEngine.batch(super.strAppraisalModuleTemplates);
			JessEngine.batch(super.strCopingModuleTemplates);
			JessEngine.batch(super.strToMModuleTemplates);
			JessEngine.executeCommand("(load-facts " + strSensoryData + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in peceiving sensory data!\n");
			e.printStackTrace();
		}
	}
	
	public void runRulesPerception(String strRules) {
		try {
			JessEngine.batch(strRules);
			JessEngine.run();
		} catch (Exception e) {
			System.out.println("Exception in loading awareness rules!\n");
			e.printStackTrace();
		}
	}
}
