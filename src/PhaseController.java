
public class PhaseController {

	public static void main(String[] args) {
		
		Awareness awareness = new Awareness();
		//SelfSynchronization selfSynchronization = new SelfSynchronization();
		
		awareness.run("facts/sensoryData-Exp1-A5.dat", "rules/Perception-rules.clp", "templates/templates.clp");
		//selfSynchronization.run();
	}

}
