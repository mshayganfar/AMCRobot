package mechanisms;

import jess.JessException;

public class Perception extends Mechanisms{

	private static final String strSensoryData = "facts/sensoryData-Exp1-A1.dat";
	
	public Perception() {
		super.initializeMechanisms();
	}
		
	public void perceive() {
		try {
			JessEngine.executeCommand("(load-facts " + strSensoryData + ")");
		} catch (JessException e) {
			System.out.println("Exception in peceiving sensory data!\n");
			e.printStackTrace();
		}
	}
	
	public void runPerceptionRules(String strRules) {
		try {
			JessEngine.batch(strRules);
			JessEngine.run();
//			JessEngine.executeCommand("(facts *)");
		} catch (Exception e) {
			System.out.println("Exception in loading perception rules!\n");
			e.printStackTrace();
		}
	}
}
