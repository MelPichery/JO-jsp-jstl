package org.tutorial.beans;

public enum EMedaille
{
	OR("M�daille d'or"),
	ARGENT("M�daille d'argent"),
	BRONZE("M�daille de bronze");
	
	private String label = null;

	private EMedaille(String label)
	{
		this.label = label;
	}

	public String getLabel()
	{
		return label;
	}


	
	
	
}
