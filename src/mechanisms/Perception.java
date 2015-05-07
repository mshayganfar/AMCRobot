package mechanisms;

import jess.JessException;

public class Perception extends Mechanisms{

	public Perception() {
		super.initializeMechanisms();
	}
		
	public void perceive(String strSensoryData) {
		try {
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
