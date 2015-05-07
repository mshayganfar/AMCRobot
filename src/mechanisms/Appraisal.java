package mechanisms;

import jess.JessException;

public class Appraisal extends Mechanisms{

	private static final String strAppraisalData = "facts/appraisal-Exp1-01.dat";
	
	public void appraise() {
		try {
			JessEngine.executeCommand("(load-facts " + strAppraisalData + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in loading appraisal facts!\n");
			e.printStackTrace();
		}
	}
}
