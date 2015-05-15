package phases;

/**
 * 
 * @author Mohammad Shayganfar
 * 
 * NOTE: Collaborations can include disputes needed to be intervened and solved by the 
 * collaborators. Collaborative negotiation is an interest-based, constructive 
 * negotiation (as oppose to competitive negotiation) in which the self and the other 
 * are seeking a fair and equitable agreement without having an always-conceding approach.
 * 
 */
public class Mediation extends Phases{

	public void run(String strExample) {
		
		collaboration.runCollaborationRules("rules/" + strExample + "/Collaboration-rules.clp");
		appraisal.appraise("rules/" + strExample + "/Appraisal-rules.clp");
		tom.runToMRules("rules/" + strExample + "/TheoryOfMind-rules.clp");
		motivation.generateMotivationOutput("rules/" + strExample + "/Motivation-rules.clp");
		coping.cope("rules/" + strExample + "/Coping-rules.clp");
	}
}
