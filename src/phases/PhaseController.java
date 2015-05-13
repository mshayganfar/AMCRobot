package phases;

public class PhaseController {

	public static void main(String[] args) {
		
		Awareness awareness    = new Awareness();
		Mediation mediation    = new Mediation();
		Engagement engagement = new Engagement();
		
		awareness.getPerceptionObject().initializeMechanisms();
		
		awareness.run("facts/sensoryData-Exp1-A1.dat");
		engagement.run();
		awareness.run("facts/sensoryData-Exp1-A3.dat");
		engagement.run();
		mediation.run();
		awareness.run("facts/sensoryData-Exp1-A5.dat");
		engagement.run();
		
		//Engagement engagement = new Engagement();
		//SelfSynchronization selfSynchronization = new SelfSynchronization();
		
		//engagement.run("rules/Action-rules.clp");
		//selfSynchronization.run();
	}

}