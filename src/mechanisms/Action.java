package mechanisms;

import jess.JessException;
import jess.Rete;


public class Action extends Mechanisms{

	private Rete JessEngine;
	
	public Action() {
		this.JessEngine = super.JessEngine;
	}
		
	public void takeAction(String strActionRules) {
		try {
			JessEngine.batch(super.strUtteranceTemplates); // This should be action.
			JessEngine.batch(strActionRules);
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in taking an action!\n");
			e.printStackTrace();
		}
	}
}
