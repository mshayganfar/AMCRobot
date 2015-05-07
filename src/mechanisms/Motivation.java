package mechanisms;

import jess.JessException;

public class Motivation extends Mechanisms{

	private static final String strMotivationMotiveData    = "facts/motivation-motive-Exp1-01.dat";
	private static final String strMotivationBeliefData    = "facts/motivation-belief-Exp1-01.dat";
	private static final String strMotivationIntentionData = "facts/motivation-intention-Exp1-01.dat";
	
	public void generateMotivationOutput() {
		generateMotive();
		generateBelief();
		generateIntention();
	}
	
	public void generateMotive() {
		try {
			JessEngine.executeCommand("(load-facts " + strMotivationMotiveData + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in loading motivation facts!\n");
			e.printStackTrace();
		}
	}
	
	public void generateBelief() {
		try {
			JessEngine.executeCommand("(load-facts " + strMotivationBeliefData + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in loading motivation facts!\n");
			e.printStackTrace();
		}
	}

	public void generateIntention() {
		try {
			JessEngine.executeCommand("(load-facts " + strMotivationIntentionData + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in loading motivation facts!\n");
			e.printStackTrace();
		}
	}
}
