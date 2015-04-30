import jess.Rete;

/**
 * 
 * @author Mohammad Shayganfar
 * 
 * NOTE: Awareness is the very first phase needs to be processed during collaboration.
 * It is the ability of the robot to manage and understand its own emotions and those
 * of the other. 
 *  
 */
public class Awareness extends Phases{
	
	Rete JessEngine;
	
	public Awareness() {
		this.JessEngine = super.JessEngine;
	}
	
	public void run(String strSensoryData, String strRules) {
		
		try {
			JessEngine.reset();
			JessEngine.batch(super.strTemplates);
			JessEngine.executeCommand("(load-facts " + strSensoryData + ") (facts)");
			JessEngine.batch(strRules);
			JessEngine.run();
		} catch (Exception e) {
			System.out.println("Exception in loading awareness rules!\n" + e);
		}
		
	}
}
