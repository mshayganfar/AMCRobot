package mechanisms;

import jess.JessException;

public class Perception extends Mechanisms{

	public void perceive(String strSensoryData, String strExample) {
		try {
			// Repeating this line will cause an exception because of redefining existing modules.
			JessEngine.executeCommand("(load-facts facts/" + strExample + "/" + strSensoryData + ")");
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
