package mechanisms;

import jess.JessException;

public class Appraisal extends Mechanisms{

	private static final String strAppraisalData = "facts/appraisal-Exp1-01.dat";
	
	public void appraise(String strRules) {
		try {
			//JessEngine.executeCommand("(load-facts " + strAppraisalData + ")");
			JessEngine.batch(strRules);
			JessEngine.run();
			JessEngine.executeCommand("(facts *)");
			
		} catch (JessException e) {
			System.out.println("Exception in appraisal process!\n");
			e.printStackTrace();
		}
	}
}
