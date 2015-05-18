package phases;

public class PhaseController {

	public static Awareness awareness    = new Awareness();
	public static Mediation mediation    = new Mediation();
	public static Engagement engagement = new Engagement();
	
	public static void main(String[] args) {
		
		awareness.getPerceptionObject().initializeMechanisms();
		
//		runFirstExample();
		
		runSecondExample();
	}
	
	public static void runFirstExample() {
		awareness.run("sensoryData-Exp1-A1.dat", "example1");
		engagement.run("example1");
		awareness.run("sensoryData-Exp1-A3.dat", "example1");
		mediation.run("example1");
		engagement.run("example1");
		awareness.run("sensoryData-Exp1-A5.dat", "example1");

		//SelfSynchronization selfSynchronization = new SelfSynchronization();
		//selfSynchronization.run();
	}
	
	public static void runSecondExample() {
		awareness.run("sensoryData-Exp2-B1.dat", "example2");
		engagement.run("example2");
		awareness.run("sensoryData-Exp2-B3.dat", "example2");
		engagement.run("example2");
		awareness.run("sensoryData-Exp2-B5.dat", "example2");
		engagement.run("example2");
		awareness.run("sensoryData-Exp2-B7.dat", "example2");
		engagement.run("example2");
	}

}