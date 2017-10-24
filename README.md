# E-Carton
Created By: Avleen Singh Khanuja
Masters in SE(Mobile & Cloud Computing)
San Jose State University, San Jose, CA
Website link - my-1st-cloud-domain.co.uk
Contact: avleensingh.khanuja@sjsu.edu
LinkedIn: https://www.linkedin.com/in/avleen-singh-khanuja-3ab637128/
Guided By: Prof. Sanjay Garje
CMPE 281- Cloud Technologies
ISA- Divyankita Urs

Introduction:
E-Carton is a portal where users can find eas ways to UPLOAD, DOWNLOAD, MODIFY/UPDATE and DELETE files in any form like text files, images, etc which they can store in their virtual carton and have access to through a simple login facility.
The files are stored as objects using Amazon AWS S3 into a S3 Bucket and can be retrieved at any place using Amazon AWS CloudFront Edge Locations. Also, the application can be hosted locally or on Amazon EC2 and database used here is MySQL integrated with Amazon AWS RDS(Relational Database Service).



Demo Screenshots:
•	Home Page


![2017-10-23](https://user-images.githubusercontent.com/31361805/31925624-e8223b5c-b83e-11e7-9c90-11f2baf4885c.png)

 

•	Registration Page:

![reg](https://user-images.githubusercontent.com/31361805/31925645-0408e1cc-b83f-11e7-90a4-f98279da15f6.png)

 

•	Login Page:


![untitled](https://user-images.githubusercontent.com/31361805/31925772-c2d99cd6-b83f-11e7-9b37-ad6bde0804a9.png)
 
•	User Welcome Page with Features:


![login](https://user-images.githubusercontent.com/31361805/31925659-18b91042-b83f-11e7-8e0f-7f0f601e05d7.png)
 

•	List Files(Download, Update and Delete Features:
![uwp](https://user-images.githubusercontent.com/31361805/31925705-67c3ec02-b83f-11e7-8a04-cb664694ce9a.png)
 

•	Browse & Upload:


![2017-10-23 1](https://user-images.githubusercontent.com/31361805/31925746-9dcd0914-b83f-11e7-937f-03f93373eed3.png)
 

Features:

1. Register
2. Login
3. List Files
4. Upload Files(Max 10MB)
5. Download already Uploaded Files
6. Delete Files
7. Update Uploaded Files and maintain Versions of the same file

Pre Requisite Configurations:
Configure and setup the following Services of Amazon AWS by creating an account at https://aws.amazon.com/ and then setting up:

1. Amazon AWS Elastic Beanstalk
2. Amazon AWS S3
3. Amazon AWS CloudFront
4. Amazon AWS IAM 
5. Amazon AWS EC2
6. Amazon AWS Route 53
7. Amazon AWS RDS
8. Amazon AWS ELB
9. Amazon AWS Auto Scaling
10. Amazon AWS SNS
11. Amazon AWS Lambda
12. Amazon AWS CloudWatch

List of Softwares Required to run the Application locally:
1. Java 1.7 (or higher) [JDK & JRE]
2. Netbeans IDE 8.0.2 (or higher)
3. MySQL Server 5.6
4. MySQL Workbench 6.2
5. Apache Maven 3.5.0
6. Any Browser(Google Chrome or Mozilla Firefox Preferred)
7. AWS SDK for Java version 1.11.215

Quick Steps:
	Install JAVA and set Environment Variables required and also install the JAR file for JDBC Connector.
	Install MySQL Server and then install MySQL Workbench.
	Install Apache Maven and set it’s PATH.
	Install NetBeans IDE and create a new Maven Web Project thereby, implementing the JSP Pages, JAVA Classes and Servlets in the same and testing the code to resolve bugs.
	Create connection with JDBC Driver by configuring Access Credentials for Admin Properties which you’ll be entering while installing MySQL Workbench. 
	In MySql Workbench, create a new connection at localhost and port 3306 and create the required database and tables by running the SQL queries.
	This creates a jdbc and sql connection with localhost.
	Install the Required Maven dependencies and download them.
	Clean and build the code once complete in Netbeans IDE and run it.
	In case you want to deploy the code on the any other Web Server, you will need a WAR file to do so for which in the Windows Command Line, go to the folder where the project resides and run the following two commands one after the other:
1)	mvn compile
2)	mvn package

	This creates the WAR file which can be deployed on any Web Server.


###Author 
Avleen Singh Khanuja
