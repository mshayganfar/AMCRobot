package mechanisms;

import jess.JessException;

public class Collaboration extends Mechanisms{

	private static final String strCollaborationData = "facts/collaboration-Exp1-01.dat";
	
	public void generateCollaborationOutput() {
		try {
			JessEngine.executeCommand("(load-facts " + strCollaborationData + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in loading collaboration facts!\n");
			e.printStackTrace();
		}
	}
}
