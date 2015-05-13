package mechanisms;

import jess.JessException;

public class ToM extends Mechanisms{

	private static final String strReverseAppraisalData = "facts/reverse-appraisal-Exp1-01.dat";
	private static final String strUserModelData        = "facts/user-model-Exp1-01.dat";
	
	public void generateToMOutput() {
		getUserModel(strUserModelData);
		reverseAppraisal(strReverseAppraisalData);
	}
	
	public void getUserModel(String strUserModel) {
		try {
			JessEngine.executeCommand("(load-facts " + strUserModel + ")");
		} catch (JessException e) {
			System.out.println("Exception in loading reverse appraisal facts!\n");
			e.printStackTrace();
		}
	}
	
	public void reverseAppraisal(String strReverseAppraisalData) {
		try {
			JessEngine.executeCommand("(load-facts " + strReverseAppraisalData + ")");
		} catch (JessException e) {
			System.out.println("Exception in loading reverse appraisal facts!\n");
			e.printStackTrace();
		}
	}
	
	public void runToMRules(String strRules) {
		try {
			JessEngine.batch(strRules);
			JessEngine.run();
//			JessEngine.executeCommand("(facts *)");
		} catch (Exception e) {
			System.out.println("Exception in loading collaboration rules!\n");
			e.printStackTrace();
		}
	}
}
