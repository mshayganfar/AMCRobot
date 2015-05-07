package mechanisms;

import jess.JessException;

public class Appraisal extends Mechanisms{

	public void appraise(String strAppraisalData) {
		try {
			JessEngine.executeCommand("(load-facts " + strAppraisalData + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in loading appraisal facts!\n");
			e.printStackTrace();
		}
	}
}
