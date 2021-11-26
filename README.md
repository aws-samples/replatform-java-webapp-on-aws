# Re-platform Java Based Web Applications on AWS

This repository contains the sample code for the Java web application and post confirmation sign up Lambda function as referenced in the blog post "Re-platform Java Based Web Applications on AWS". It also contains the cloud formation templates required to set up the AWS infrastructure, SQL script to create the supporting database and configuration files for the web server, Tomcat application server and Redisson cache.

## Getting Started
* Build the sample-webapp maven project and place the WAR file in your S3 bucket
* Build the aws-signup-lambda project and place the JAR file in your S3 bucket
* Refer to the blog post for detailed steps

### Dependencies

* [Apache Tomcat 9](https://tomcat.apache.org/download-90.cgi)
* [OpenID Connect Authenticator for Tomcat](https://github.com/boylesoftware/tomcat-oidcauth)
* [Redis based Tomcat Session Manager](https://github.com/redisson/redisson/tree/master/redisson-tomcat/redisson-tomcat-9)
* Jars used for the blog solution:
	* [redisson-tomcat-9-3.14.1](https://repository.sonatype.org/service/local/artifact/maven/redirect?r=central-proxy&g=org.redisson&a=redisson-tomcat-9&v=3.14.1&e=jar)
	* [apache-tomcat-9.0.41.tar.gz](https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.41/)
	* [tomcat-oidcauth-2.3.0-tomcat90](https://boylesoftware.com/maven/repo-os/org/bsworks/catalina/authenticator/oidc/tomcat-oidcauth/2.3.0/tomcat-oidcauth-2.3.0-tomcat90.jar)
	* [redisson-all-3.14.1.jar](https://repository.sonatype.org/service/local/artifact/maven/redirect?r=central-proxy&g=org.redisson&a=redisson-all&v=3.14.1&e=jar)

## Version History
* 0.1
    * Initial Release

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

