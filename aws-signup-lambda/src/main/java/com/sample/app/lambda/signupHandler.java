package com.sample.app.lambda;

/**
 * Sign up request handler
 * @author Bill Chan AWS
 * 
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 *
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.amazonaws.services.lambda.runtime.LambdaLogger;

public class signupHandler implements RequestHandler<Object, Object> {
	Gson gson = new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create();

	public Object handleRequest(Object input, Context context) {
		LambdaLogger logger = context.getLogger();
		String data = input.toString().replace("cognito:", "cognito");
		logger.log("Input request data: " + data.toString());
		Event event = gson.fromJson(data, Event.class);
		String email = event.getRequest().getUserAttributes().getEmail();
		
		// Update with your database connection details
		String jdbcURL = "jdbc:mysql://<RDSEndpoint>:3306/webappdb?useSSL=false";
		String jdbcUsername = "<DBUserName>";
		String jdbcPassword = "<DBPassword>";
		String INSERT_USERS_SQL = "INSERT INTO user_accounts" + "  (user_name, user_pass) VALUES " + " (?, ?);";
		String INSERT_ROLE_SQL = "INSERT INTO user_account_roles" + "  (user_name, role_name) VALUES "
				+ " (?, 'standard');";
		Connection connection;
		
		try {
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			PreparedStatement preparedStatement;
			preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
			
			// Add the new to the user accounts table setting both the user name and password to the email
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, email);
			preparedStatement.executeUpdate();
			
			// Add the new user to the user account roles table
			PreparedStatement preparedStatement1;
			preparedStatement1 = connection.prepareStatement(INSERT_ROLE_SQL);
			preparedStatement1.setString(1, email);
			System.out.println(preparedStatement1);
			preparedStatement1.executeUpdate();
			
			// Close connections
			preparedStatement.close();
			preparedStatement1.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
			logger.log("Error performing database update");
		} 
		
		logger.log("Successfully created user " + email);
		logger.log("Response data: " + gson.toJson(input));

		return input;
	}
}
