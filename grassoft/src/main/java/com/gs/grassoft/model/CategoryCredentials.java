package com.gs.grassoft.model;

import javax.persistence.*;

@Entity
public class CategoryCredentials {
	private String categoryName;
	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE)
	private long categoryId;

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(long categoryId) {
		this.categoryId = categoryId;
	}
}
