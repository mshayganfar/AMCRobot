
public class PhaseController {

	public static void main(String[] args) {
		
		Awareness awareness = new Awareness();
		//SelfSynchronization selfSynchronization = new SelfSynchronization();
		
		awareness.run("facts/sensoryData.dat", "rules/Perception-rules.clp");
		//selfSynchronization.run();
	}

}
