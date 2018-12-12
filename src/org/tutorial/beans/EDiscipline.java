package org.tutorial.beans;

public enum EDiscipline
{
	COURSE_100M ("Course du 100 métres","COURSE_100M"),
	SAUT_PERCHE ("Saut à la perche","SAUT_PERCHE");
	
	private String label = null;
	private String name = null;
	
	private EDiscipline(String label, String name) {
		this.label = label;
		this.name = name;
	}

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
		
}
