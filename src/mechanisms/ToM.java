package mechanisms;

import jess.JessException;

public class ToM extends Mechanisms{

	private static final String strReverseAppraisalData = "facts/reverse-appraisal-Exp1-01.dat";
	private static final String strUserModelData        = "facts/user-model-Exp1-01.dat";
	
	public void generateToMOutput() {
		reverseAppraisal(strReverseAppraisalData);
	}
	
	public void getUserModel(String strUserModel) {
		try {
			JessEngine.executeCommand("(load-facts " + strUserModel + ") (facts *)");
			JessEngine.run();
		} catch (JessException e) {
			System.out.println("Exception in loading reverse appraisal facts!\n");
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
