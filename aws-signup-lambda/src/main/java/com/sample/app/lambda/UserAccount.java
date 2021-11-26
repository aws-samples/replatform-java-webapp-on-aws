package com.sample.app.lambda;

/**
 * User account object
 * @author Bill Chan AWS
 * 
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 *
 */

public class UserAccount {
	protected String user_name;
	protected String user_pass;
	
	public UserAccount() {
	}
	
	public UserAccount(String user_name, String user_pass) {
		super();
		this.user_name = user_name;
		this.user_pass = user_pass;
	}
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	}
