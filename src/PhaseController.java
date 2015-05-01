
public class PhaseController {

	public static void main(String[] args) {
		
		Awareness awareness = new Awareness();
		Engagement engagement = new Engagement();
		//SelfSynchronization selfSynchronization = new SelfSynchronization();
		
		awareness.run("facts/sensoryData-Exp1-A5.dat", "rules/Perception-rules.clp");
		engagement.run("facts/action-Exp1-A4.dat", "rules/Action-rules.clp");
		//selfSynchronization.run();
	}

}