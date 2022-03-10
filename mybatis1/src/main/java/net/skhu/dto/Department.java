package net.skhu.dto;

import java.io.Serializable;

public class Department implements Serializable {
	private static final long serialVersionUID = 1L;
	//이것은 객체 구조의 버전 번호이다. 객체 구조가 변경될 때마다 이 번호를 1씩 올려야 한다.
	
	int id;
	String departmentName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
}