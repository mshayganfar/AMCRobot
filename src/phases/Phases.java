package phases;

import mechanisms.*;

public class Phases {

	protected Perception perception;
	protected Collaboration collaboration;
	protected ToM tom;
	protected Appraisal appraisal;
	protected Motivation motivation;
	protected Coping coping;
	protected Action action;
	
	public Phases() {
		this.perception    = new Perception();
		this.collaboration = new Collaboration();
		this.tom           = new ToM();
		this.appraisal     = new Appraisal();
		this.motivation    = new Motivation();
		this.coping        = new Coping();
		this.action        = new Action();
	}
}