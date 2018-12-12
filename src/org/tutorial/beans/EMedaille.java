package org.tutorial.beans;

public enum EMedaille
{
	OR("Médaille d'or", "OR"),
	ARGENT("Médaille d'argent", "ARGENT"),
	BRONZE("Médaille de bronze", "BRONZE");
	
	private String label = null;
	private String name = null;
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	private EMedaille(String label, String name) {
		this.label = label;
		this.name = name;
	}
	private EMedaille() {
	}
	
	
	
	
	
	
}
