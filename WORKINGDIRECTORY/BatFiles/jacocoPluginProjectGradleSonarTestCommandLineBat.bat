@echo off 
 Set var=call "C:\sonar-scanner-cli-4.0.0.1744-windows\sonar-scanner-4.0.0.1744-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=appium#java-client -Dsonar.projectVersion=1.0 -Dsonar.projectKey=appium:java-client -Dsonar.java.binaries=build/classes/java/main  -Dsonar.java.test.binaries=build/classes/java/test -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\VirtualUser\Documents\Maven\SWT2_Projekt\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\GRADLE\JACOCO\appium#java-client" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=build/jacoco/test.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

