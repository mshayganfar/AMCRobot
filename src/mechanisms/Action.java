package mechanisms;

import jess.JessException;

public class Action extends Mechanisms{

	public void takeAction(String strRules) {
		try {
			JessEngine.batch(strRules);
			JessEngine.run();
//			JessEngine.executeCommand("(rules *)");
		} catch (JessException e) {
			System.out.println("Exception in taking an action!\n");
			e.printStackTrace();
		}
	}
}