package mechanisms;

import jess.JessException;

public class Collaboration extends Mechanisms{

	private static final String strCollaborationData = "facts/collaboration-Exp1-01.dat";
	
	public void generateCollaborationOutput() {
		try {
			JessEngine.executeCommand("(load-facts " + strCollaborationData + ")");
		} catch (JessException e) {
			System.out.println("Exception in loading collaboration facts!\n");
			e.printStackTrace();
		}
	}
	
	public void runCollaborationRules(String strRules) {
		try {
			JessEngine.batch(strRules);
			JessEngine.run();
			JessEngine.executeCommand("(facts *)");
		} catch (Exception e) {
			System.out.println("Exception in loading collaboration rules!\n");
			e.printStackTrace();
		}
	}
}
