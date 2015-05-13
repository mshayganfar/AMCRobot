package phases;

import mechanisms.Perception;

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
	
	public void run(String strSensoryData) {
		
		perception.perceive(strSensoryData);
		collaboration.runCollaborationRules("rules/Collaboration-rules.clp");
		tom.runToMRules("rules/TheoryOfMind-rules.clp");
		appraisal.appraise("rules/Appraisal-rules.clp");
		motivation.generateMotivationOutput("rules/Motivation-rules.clp");
	}
	
	public Perception getPerceptionObject() { return perception; }
}
