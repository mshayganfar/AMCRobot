package mechanisms;

import jess.JessException;

public class Coping extends Mechanisms{

	private static final String strCopingData = "facts/coping-Exp1-01.dat";
	
	public void cope(String strRules) {
		try {
//			JessEngine.executeCommand("(load-facts " + strCopingData + ")");
			JessEngine.batch(strRules);
			JessEngine.run();
//			JessEngine.executeCommand("(facts *)");
		} catch (JessException e) {
			System.out.println("Exception in loading motivation facts!\n");
			e.printStackTrace();
		}
	}
}
