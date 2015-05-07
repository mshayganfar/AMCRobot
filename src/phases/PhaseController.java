package phases;

public class PhaseController {

	public static void main(String[] args) {
		
		Awareness awareness = new Awareness();
		//Engagement engagement = new Engagement();
		//SelfSynchronization selfSynchronization = new SelfSynchronization();
		
		awareness.run(); // "rules/Perception-rules.clp"
		//engagement.run("rules/Action-rules.clp");
		//selfSynchronization.run();
		
//		try {
//			JessEngine.executeCommand("(facts *)");
//		} catch (JessException e) {
//			e.printStackTrace();
//		}
	}

}