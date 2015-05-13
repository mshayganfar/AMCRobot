package phases;

public class PhaseController {

	public static void main(String[] args) {
		
		Awareness awareness = new Awareness();
		Mediation mediation = new Mediation();
		
		awareness.getPerceptionObject().initializeMechanisms();
		
		awareness.run("facts/sensoryData-Exp1-A1.dat");
		mediation.run();
		awareness.run("facts/sensoryData-Exp1-A3.dat");
		
		//Engagement engagement = new Engagement();
		//SelfSynchronization selfSynchronization = new SelfSynchronization();
		
		//engagement.run("rules/Action-rules.clp");
		//selfSynchronization.run();
	}

}