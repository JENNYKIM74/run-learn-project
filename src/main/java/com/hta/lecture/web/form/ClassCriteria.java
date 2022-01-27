package com.hta.lecture.web.form;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ClassCriteria {

	private int page;
	private String category;
	private String value;
	private int beginIndex;
	private int endIndex;
	
}