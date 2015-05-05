package phases;

public class PhaseController extends Phases {

	public static void main(String[] args) {
		
		Awareness awareness = new Awareness();
		//Engagement engagement = new Engagement();
		//SelfSynchronization selfSynchronization = new SelfSynchronization();
		
		awareness.run("facts/sensoryData-Exp1-A1.dat"); // "rules/Perception-rules.clp"
		//engagement.run("rules/Action-rules.clp");
		//selfSynchronization.run();
		
//		try {
//			JessEngine.executeCommand("(facts *)");
//		} catch (JessException e) {
//			e.printStackTrace();
//		}
	}

}