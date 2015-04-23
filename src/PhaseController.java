
public class PhaseController {

	public static void main(String[] args) {
		
		Awareness awareness = new Awareness();
		SelfSynchronization selfSynchronization = new SelfSynchronization();
		
		awareness.run();
		selfSynchronization.run();
	}

}
