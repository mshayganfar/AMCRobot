package mechanisms;

import jess.JessException;

public class ToM extends Mechanisms{

	public void generateToMOutput(String strToMData) {
		try {
			JessEngine.executeCommand("(load-facts " + strToMData + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in loading ToM facts!\n");
			e.printStackTrace();
		}
	}
	
	public void reverseAppraisal(String strReverseAppraisalData) {
		try {
			JessEngine.executeCommand("(load-facts " + strReverseAppraisalData + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in loading reverse appraisal facts!\n");
			e.printStackTrace();
		}
	}
}
