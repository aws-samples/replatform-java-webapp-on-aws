package com.sample.app.lambda;

/**
 * User attributes
 * @author Bill Chan AWS
 * 
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 *
 */

public class UserAttributes {
	private String email;
	private String email_verified;
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail_verified() {
		return email_verified;
	}
	
	public void setEmail_verified(String email_verified) {
		this.email_verified = email_verified;
	}
}
