import jess.Rete;

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

	private Rete JessEngine;
	
	public Engagement() {
		this.JessEngine = super.JessEngine;
	}
	
	public void run(String strSensoryData, String strRules) {
		
		try {
			JessEngine.batch(super.strUtteranceTemplates);
			JessEngine.batch(super.strCollaborationModuleTemplates);
			JessEngine.executeCommand("(load-facts " + strSensoryData + ") (facts)");
			JessEngine.batch(strRules);
			JessEngine.run();
		} catch (Exception e) {
			System.out.println("Exception in loading engagement rules!\n" + e);
		}
		
	}
}
