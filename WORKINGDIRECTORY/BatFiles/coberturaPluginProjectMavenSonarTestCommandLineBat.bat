@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=codeforamerica#open311_java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=codeforamerica:open311_java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\codeforamerica#open311_java" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=elasticjob#elastic-job-lite -Dsonar.projectVersion=1.0 -Dsonar.projectKey=elasticjob:elastic-job-lite -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\elasticjob#elastic-job-lite" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=fasseg#exp4j -Dsonar.projectVersion=1.0 -Dsonar.projectKey=fasseg:exp4j -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\fasseg#exp4j" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=jmxtrans#jmxtrans -Dsonar.projectVersion=1.0 -Dsonar.projectKey=jmxtrans:jmxtrans -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\jmxtrans#jmxtrans" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=knightliao#disconf -Dsonar.projectVersion=1.0 -Dsonar.projectKey=knightliao:disconf -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\knightliao#disconf" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=optimaize#language-detector -Dsonar.projectVersion=1.0 -Dsonar.projectKey=optimaize:language-detector -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\optimaize#language-detector" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=PhantomYdn#jlll -Dsonar.projectVersion=1.0 -Dsonar.projectKey=PhantomYdn:jlll -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\PhantomYdn#jlll" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=sarxos#webcam-capture -Dsonar.projectVersion=1.0 -Dsonar.projectKey=sarxos:webcam-capture -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\sarxos#webcam-capture" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=searchbox-io#Jest -Dsonar.projectVersion=1.0 -Dsonar.projectKey=searchbox-io:Jest -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\searchbox-io#Jest" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=unbxd#java-sdk -Dsonar.projectVersion=1.0 -Dsonar.projectKey=unbxd:java-sdk -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\unbxd#java-sdk" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=vdurmont#emoji-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=vdurmont:emoji-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\vdurmont#emoji-java" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

