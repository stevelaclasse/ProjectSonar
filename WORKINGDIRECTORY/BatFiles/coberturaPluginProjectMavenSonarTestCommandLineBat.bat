@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=citerus#dddsample-core -Dsonar.projectVersion=1.0 -Dsonar.projectKey=citerus:dddsample-core -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\citerus#dddsample-core" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
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
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=codeforamerica#open311_java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=codeforamerica:open311_java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\codeforamerica#open311_java" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
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
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=CrawlScript#WebCollector -Dsonar.projectVersion=1.0 -Dsonar.projectKey=CrawlScript:WebCollector -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\CrawlScript#WebCollector" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
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
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=elasticjob#elastic-job-lite -Dsonar.projectVersion=1.0 -Dsonar.projectKey=elasticjob:elastic-job-lite -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\elasticjob#elastic-job-lite" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
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
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=fasseg#exp4j -Dsonar.projectVersion=1.0 -Dsonar.projectKey=fasseg:exp4j -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\fasseg#exp4j" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
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
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=knightliao#disconf -Dsonar.projectVersion=1.0 -Dsonar.projectKey=knightliao:disconf -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\knightliao#disconf" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
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
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=nutzam#nutz -Dsonar.projectVersion=1.0 -Dsonar.projectKey=nutzam:nutz -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\nutzam#nutz" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
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
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=optimaize#language-detector -Dsonar.projectVersion=1.0 -Dsonar.projectKey=optimaize:language-detector -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\optimaize#language-detector" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
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
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=PhantomYdn#jlll -Dsonar.projectVersion=1.0 -Dsonar.projectKey=PhantomYdn:jlll -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\PhantomYdn#jlll" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
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
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=unbxd#java-sdk -Dsonar.projectVersion=1.0 -Dsonar.projectKey=unbxd:java-sdk -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\COBERTURA\unbxd#java-sdk" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml  -Dsonar.login=admin -Dsonar.password=admin
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

