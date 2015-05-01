import jess.Rete;


/**
 * 
 * @author Mohammad Shayganfar
 *
 * NOTE: Self-synchronization is a phase of collaboration process. represents the 
 * temporal and spatial relationship of the self with the environment. It is having  
 * a policy to increase sense of shared awareness (which improves trust). Shared 
 * awareness is the ratio of required task information shared between the collaborators 
 * to the task information yet need to be resolved.
 *
 */
public class SelfSynchronization extends Phases{
	
	private Rete JessEngine;
	
	public SelfSynchronization() {
		this.JessEngine = super.JessEngine;
	}
	
	public void run() {
		
		try {
			JessEngine.batch(super.strUtteranceTemplates);
			JessEngine.batch(super.strCollaborationModuleTemplates);
			//JessEngine.executeCommand("(load-facts " + strSensoryData + ") (facts)");
			//JessEngine.batch(strRules);
			JessEngine.run();
		} catch (Exception e) {
			System.out.println("Exception in loading awareness rules!\n" + e);
		}
		
	}
}
