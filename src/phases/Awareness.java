package phases;

import mechanisms.*;

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
	
	private Perception perception;
	
	public Awareness() {
		this.perception = new Perception();
	}
	
	public void run(String strSensoryData) {
		
		perception.perceive(strSensoryData);
	}
}
