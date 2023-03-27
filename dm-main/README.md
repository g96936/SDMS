# operation
1.Enable MySQL service

2.Navicat New Database
  Character Set utf8
  Collation utf8_ czech_ ci
  Import the dm-main ->src ->main ->resources ->init.sql file into the sheet
  Refresh the sheet to extract data

3.Idea Open Project

4.Adjust Project structure
  sdk: Java version 1.8 
  language level: 8 - lambdas,type annotaions etc.
  modules dependencies: project SDK 1.8

5.Adjust Maven in Settings
  Maven home path: Bundled(Maven 3)
  If you change the Maven warehouse address yourself, please modify the User settings file and Local repository separately. Otherwise, default

6.Refresh maven configuration in pom.xml
  Process: Right click ->maven ->reload project

7.Configuration information
  src -> main -> resources -> application.yml 
  driver-class-name: com.mysql.jdbc.Driver
  Note: The version above MySQL 8 is: com.mysql.cj.jdbc.Driver
  Enter the user name and password of your own server

8.Open the browser for input after running the program successfully    
  http://localhost:8080/index.html Can log in to the system
