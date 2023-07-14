# FYP-Tang
this is fyp source code and guidelines to install


1.	First export it on Github
To export an SSM (Spring + Spring MVC + MyBatis) architecture framework from GitHub and configure the operating environment in IntelliJ IDEA, you can follow the steps below:
Find the repository of the SSM framework you want to export on GitHub, and then clone it locally. You can use the Git command line or visual tools (such as Git GUI, Sourcetree, etc.) to perform clone operations. Assuming you have installed the Git command line tool, you can execute the following command in the terminal:

```
git clone <repository_url>
```

Replace `<repository_url>` with the URL of the repository you want to clone.

2.	Open Project in Intelij IDEA
Open IntelliJ IDEA and select the "Open" (or "Open Project") option to open the exported project folder.
Import project: Select "Import Project" on the welcome interface of IntelliJ IDEA (or select "New"->"Project from Existing Sources" in the "File" menu), and then select the project folder you cloned locally.

3.	Configure project dependencies
In the wizard for importing the project, select the appropriate build tool (such as Maven or Gradle) and configure it. The project uses Maven, select "Import project from external model", then select "Maven". Maven code is displayed in pom.xml

Configure project dependencies: In the project view of IntelliJ IDEA, find the file named "pom.xml", right-click on the file, and select "Reload Project" (or "Sync Project with Gradle Files") to download and install the required project dependent libraries.

4.	Configure database
Configure database connection: If the project needs to connect to the database, you need to set the database connection information in the project configuration file. Typically, configuration files are located in the project's "src/main/resources" directory. Find the corresponding configuration file "application.properties", and then modify the corresponding connection information according to your database configuration.

5.	Configure Tomcat
1)	First, make sure you have installed Tomcat server on your computer. If it has not been installed, please go to Apache Tomcat official website to download and install the latest version of Tomcat.

2)	Open IntelliJ IDEA, and select "File" -> "Settings" in the top menu (or use the shortcut keys Ctrl + Alt + S) to open the settings window.
3)	In the settings window, select "Build, Execution, Deployment" -> "Application Servers". If you have not configured Tomcat before, this option may be grayed out, and you need to click the "+" button on the right to add a new application server.
4)	In the pop-up dialog box, select "Tomcat Server" and click "Next".
5)	On the next page, click the "Configure" button and select the Tomcat server installation directory. Find and select the Tomcat folder installed on your computer.
6)	In the "Tomcat Home" field, IntelliJ IDEA will automatically fill in the Tomcat installation path. You can enter a custom name in the "Name" field to identify the server in the IDE.
7)	In the "Deployment" tab, you can select the application to be deployed on Tomcat. Click the "+" button and select the application module or WAR file you want to deploy.
8)	In the "Server" tab, you can configure the server's port number, context path, etc. Set as desired and make sure the port number is not being used by another process.
9)	Click "OK" to save the configuration and close the settings window.
10)	On the main interface of IDEA, select your project, right-click and select "Run" -> "Edit Configurations".
11)	In the pop-up dialog box, click the "+" button, and then select "Tomcat Server" -> "Local".
12)	In the "Server" field, select the previously configured Tomcat server.
13)	In the Deployment tab, select the application modules to deploy.
14)	Click "OK" to save the configuration.
15)	Now you can click the Run button on the IDEA toolbar to start the Tomcat server and run your application.
The above steps should help you successfully configure Tomcat server in IntelliJ IDEA. Please note that the specific configuration steps may vary depending on the version of Tomcat and IntelliJ IDEA, so it may need to be adjusted according to the actual situation in actual operation.

6.	Run the Project
Find the main startup class in the project (usually annotated with `@SpringBootApplication`), right-click on the class, and then select "Run" or "Debug" to run the project.

Through the above steps, you should be able to successfully export the project of the SSM framework and configure and run it in IntelliJ IDEA. Please note that the specific configuration steps may vary depending on the structure and dependencies of the project, so it may need to be adjusted according to the actual situation in actual operation.
