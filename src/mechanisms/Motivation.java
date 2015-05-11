package mechanisms;

import jess.JessException;

public class Motivation extends Mechanisms{

	private static final String strMotivationMotiveData    = "facts/motivation-motive-Exp1-01.dat";
	private static final String strMotivationBeliefData    = "facts/motivation-belief-Exp1-01.dat";
	private static final String strMotivationIntentionData = "facts/motivation-intention-Exp1-01.dat";
	
	public void generateMotivationOutput(String strRules) {
		generateMotive(strRules);
		generateBelief(strRules);
		generateIntention(strRules);
	}
	
	public void generateMotive(String strRules) {
		try {
//			JessEngine.executeCommand("(load-facts " + strMotivationMotiveData + ")");
			JessEngine.batch(strRules);
			JessEngine.run();
			JessEngine.executeCommand("(facts *)");
		} catch (JessException e) {
			System.out.println("Exception in loading motivation facts!\n");
			e.printStackTrace();
		}
	}
	
	public void generateBelief(String strRules) {
		try {
//			JessEngine.executeCommand("(load-facts " + strMotivationBeliefData + ")");
			JessEngine.batch(strRules);
			JessEngine.run();
			JessEngine.executeCommand("(facts *)");
		} catch (JessException e) {
			System.out.println("Exception in loading motivation facts!\n");
			e.printStackTrace();
		}
	}

	public void generateIntention(String strRules) {
		try {
//			JessEngine.executeCommand("(load-facts " + strMotivationIntentionData + ")");
			JessEngine.batch(strRules);
			JessEngine.run();
			JessEngine.executeCommand("(facts *)");
		} catch (JessException e) {
			System.out.println("Exception in loading motivation facts!\n");
			e.printStackTrace();
		}
	}
}
