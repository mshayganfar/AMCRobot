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
	private Collaboration collaboration;
	private ToM tom;
	private Appraisal appraisal;
	private Motivation motivation;
	private Coping coping;
	
	public Awareness() {
		this.perception    = new Perception();
		this.collaboration = new Collaboration();
		this.tom           = new ToM();
		this.appraisal     = new Appraisal();
		this.motivation    = new Motivation();
		this.coping        = new Coping();
	}
	
	public void run() {
		
		perception.perceive();
		perception.runPerceptionRules("rules/Perception-rules.clp");
		
		collaboration.generateCollaborationOutput();
		collaboration.runCollaborationRules("rules/Collaboration-rules.clp");
		
		tom.generateToMOutput();
		tom.runToMRules("rules/TheoryOfMind-rules.clp");
		
		appraisal.appraise("rules/Appraisal-rules.clp");
		
		motivation.generateMotivationOutput("rules/Motivation-rules.clp");
		
		coping.cope("rules/Coping-rules.clp");
	}
}
