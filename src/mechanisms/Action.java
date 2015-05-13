package mechanisms;

import jess.JessException;
import jess.Rete;


public class Action extends Mechanisms{

	public void takeAction(String strActionRules) {
		try {
			JessEngine.batch(strActionRules);
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in taking an action!\n");
			e.printStackTrace();
		}
	}
}
