package com.sample.app.lambda;

/**
 * Request object
 * @author Bill Chan AWS
 * 
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 *
 */

public class Request {
	private UserAttributes userAttributes;

	public UserAttributes getUserAttributes() {
		return userAttributes;
	}

	public void setUserAttributes(UserAttributes userAttributes) {
		this.userAttributes = userAttributes;
	}
}
