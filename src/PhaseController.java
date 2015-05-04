
public class PhaseController extends Phases {

	public PhaseController() {
		super.initializeJessEngine();
	}
	
	public static void main(String[] args) {
		
		new PhaseController();
		
		Awareness awareness = new Awareness();
		Engagement engagement = new Engagement();
		//SelfSynchronization selfSynchronization = new SelfSynchronization();
		
		awareness.run("facts/motivation-Exp1-01.dat", "rules/Perception-rules.clp");
		engagement.run("facts/action-Exp1-A4.dat", "rules/Action-rules.clp");
		//selfSynchronization.run();
		
//		try {
//			JessEngine.executeCommand("(facts *)");
//		} catch (JessException e) {
//			e.printStackTrace();
//		}
	}

}