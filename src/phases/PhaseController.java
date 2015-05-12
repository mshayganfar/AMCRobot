package phases;

public class PhaseController {

	public static void main(String[] args) {
		
		Awareness awareness = new Awareness();
		Mediation mediation = new Mediation();
		
		awareness.run();
		mediation.run();
		
		//Engagement engagement = new Engagement();
		//SelfSynchronization selfSynchronization = new SelfSynchronization();
		
		//engagement.run("rules/Action-rules.clp");
		//selfSynchronization.run();
	}

}