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
	
	private static final String strSensoryData          = "facts/sensoryData-Exp1-A1.dat";
	private static final String strCollaborationData    = "facts/collaboration-Exp1-01.dat";
//	private static final String strToMData              = "facts/ToM-Exp1-01.dat";
	private static final String strReverseAppraisalData = "facts/reverse-appraisal-Exp1-01.dat";
	
	private Perception perception;
	private Collaboration collaboration;
	private ToM tom;
	
	public Awareness() {
		this.perception    = new Perception();
		this.collaboration = new Collaboration();
		this.tom = new ToM();
	}
	
	public void run() {
		
		perception.perceive(strSensoryData);
		collaboration.generateCollaborationOutput(strCollaborationData);
		tom.reverseAppraisal(strReverseAppraisalData);
	}
}
