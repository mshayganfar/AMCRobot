package mechanisms;

import jess.JessException;

public class Collaboration extends Mechanisms{

	public void generateCollaborationOutput(String strCollaborationData) {
		try {
			JessEngine.executeCommand("(load-facts " + strCollaborationData + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in loading collaboration facts!\n");
			e.printStackTrace();
		}
	}
}
