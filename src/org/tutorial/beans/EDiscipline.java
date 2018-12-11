package org.tutorial.beans;

public enum EDiscipline
{
	COURSE_100M ("Course du 100 m�tres"),
	SAUT_PERCHE ("Saut � la perche");
	
	private String label = null;

	private EDiscipline(String label)
	{
		this.label = label;
	}

	public String getLabel()
	{
		return label;
	}
	
}
