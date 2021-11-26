package com.sample.app.usermanagement.model;

/**
 * Model class representing the user entity
 * @author Bill Chan AWS
 * 
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 *
 */
public class User {
	protected int id;
	protected String name;
	protected String email;
	protected String company;
	
	public User() {
	}
	
	public User(String name, String email, String company) {
		super();
		this.name = name;
		this.email = email;
		this.company = company;
	}

	public User(int id, String name, String email, String company) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.company = company;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
}