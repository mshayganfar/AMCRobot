package phases;

import mechanisms.*;

/**
 * 
 * @author Mohammad Shayganfar
 * 
 * NOTE: Engagement includes three forms of behavioral, emotional and cognitive.
 * Although most of the mechanisms are envolved to make the robot to engage during
 * collaboration, the Coping mechanism is the most related one to this phase of
 * the collaboration.
 *  
 */
public class Engagement extends Phases{

	public void run(String strExample) {
		
		coping.cope("rules/" + strExample + "/Coping-rules.clp");
		action.takeAction("rules/" + strExample + "/Action-rules.clp");
	}
}
