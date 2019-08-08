git config --system core.longpaths true 

setlocal enableDelayedExpansion 

@echo off 
 set var=call git clone https://github.com/vmware/vsphere-automation-sdk-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/vmware#vsphere-automation-sdk-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/vmware#vsphere-automation-sdk-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\vmware#vsphere-automation-sdk-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=vmware#vsphere-automation-sdk-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=vmware:vsphere-automation-sdk-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\vmware#vsphere-automation-sdk-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo vmware/vsphere-automation-sdk-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vmware#vsphere-automation-sdk-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vmware#vsphere-automation-sdk-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vmware#vsphere-automation-sdk-java
 ) 

@echo off 
 set var=call git clone https://github.com/micromata/javaapiforkml.git ALLPROJECTS/NEW_MAVEN_PROJECTS/micromata#javaapiforkml
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/micromata#javaapiforkml 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\micromata#javaapiforkml\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=micromata#javaapiforkml -Dsonar.projectVersion=1.0 -Dsonar.projectKey=micromata:javaapiforkml -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\micromata#javaapiforkml" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo micromata/javaapiforkml 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\micromata#javaapiforkml
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\micromata#javaapiforkml
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\micromata#javaapiforkml
 ) 

@echo off 
 set var=call git clone https://github.com/ambiverse-nlu/nlu-api-client-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/ambiverse-nlu#nlu-api-client-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/ambiverse-nlu#nlu-api-client-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\ambiverse-nlu#nlu-api-client-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=ambiverse-nlu#nlu-api-client-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=ambiverse-nlu:nlu-api-client-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\ambiverse-nlu#nlu-api-client-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo ambiverse-nlu/nlu-api-client-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ambiverse-nlu#nlu-api-client-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ambiverse-nlu#nlu-api-client-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ambiverse-nlu#nlu-api-client-java
 ) 

@echo off 
 set var=call git clone https://github.com/koushikr/jelastic.git ALLPROJECTS/NEW_MAVEN_PROJECTS/koushikr#jelastic
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/koushikr#jelastic 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\koushikr#jelastic\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=koushikr#jelastic -Dsonar.projectVersion=1.0 -Dsonar.projectKey=koushikr:jelastic -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\koushikr#jelastic" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo koushikr/jelastic 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\koushikr#jelastic
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\koushikr#jelastic
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\koushikr#jelastic
 ) 

@echo off 
 set var=call git clone https://github.com/killbill/killbill-java-parser.git ALLPROJECTS/NEW_MAVEN_PROJECTS/killbill#killbill-java-parser
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/killbill#killbill-java-parser 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\killbill#killbill-java-parser\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=killbill#killbill-java-parser -Dsonar.projectVersion=1.0 -Dsonar.projectKey=killbill:killbill-java-parser -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\killbill#killbill-java-parser" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo killbill/killbill-java-parser 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\killbill#killbill-java-parser
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\killbill#killbill-java-parser
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\killbill#killbill-java-parser
 ) 

@echo off 
 set var=call git clone https://github.com/sincosmos/javaprj.git ALLPROJECTS/NEW_MAVEN_PROJECTS/sincosmos#javaprj
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/sincosmos#javaprj 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\sincosmos#javaprj\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=sincosmos#javaprj -Dsonar.projectVersion=1.0 -Dsonar.projectKey=sincosmos:javaprj -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\sincosmos#javaprj" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo sincosmos/javaprj 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\sincosmos#javaprj
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\sincosmos#javaprj
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\sincosmos#javaprj
 ) 

@echo off 
 set var=call git clone https://github.com/darren-rogan/LanguageIdentifier.git ALLPROJECTS/NEW_MAVEN_PROJECTS/darren-rogan#LanguageIdentifier
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/darren-rogan#LanguageIdentifier 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\darren-rogan#LanguageIdentifier\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=darren-rogan#LanguageIdentifier -Dsonar.projectVersion=1.0 -Dsonar.projectKey=darren-rogan:LanguageIdentifier -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\darren-rogan#LanguageIdentifier" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo darren-rogan/LanguageIdentifier 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\darren-rogan#LanguageIdentifier
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\darren-rogan#LanguageIdentifier
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\darren-rogan#LanguageIdentifier
 ) 

@echo off 
 set var=call git clone https://github.com/wkgcass/Style.git ALLPROJECTS/NEW_MAVEN_PROJECTS/wkgcass#Style
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/wkgcass#Style 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\wkgcass#Style\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=wkgcass#Style -Dsonar.projectVersion=1.0 -Dsonar.projectKey=wkgcass:Style -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\wkgcass#Style" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo wkgcass/Style 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\wkgcass#Style
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\wkgcass#Style
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\wkgcass#Style
 ) 

@echo off 
 set var=call git clone https://github.com/pinterest/secor.git ALLPROJECTS/NEW_MAVEN_PROJECTS/pinterest#secor
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/pinterest#secor 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\pinterest#secor\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=pinterest#secor -Dsonar.projectVersion=1.0 -Dsonar.projectKey=pinterest:secor -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\pinterest#secor" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo pinterest/secor 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pinterest#secor
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pinterest#secor
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pinterest#secor
 ) 

@echo off 
 set var=call git clone https://github.com/HJKCC/javaUtils.git ALLPROJECTS/NEW_MAVEN_PROJECTS/HJKCC#javaUtils
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/HJKCC#javaUtils 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\HJKCC#javaUtils\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=HJKCC#javaUtils -Dsonar.projectVersion=1.0 -Dsonar.projectKey=HJKCC:javaUtils -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\HJKCC#javaUtils" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo HJKCC/javaUtils 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\HJKCC#javaUtils
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\HJKCC#javaUtils
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\HJKCC#javaUtils
 ) 

@echo off 
 set var=call git clone https://github.com/cdtian/java-tutorials.git ALLPROJECTS/NEW_MAVEN_PROJECTS/cdtian#java-tutorials
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/cdtian#java-tutorials 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\cdtian#java-tutorials\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=cdtian#java-tutorials -Dsonar.projectVersion=1.0 -Dsonar.projectKey=cdtian:java-tutorials -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\cdtian#java-tutorials" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo cdtian/java-tutorials 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\cdtian#java-tutorials
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\cdtian#java-tutorials
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\cdtian#java-tutorials
 ) 

@echo off 
 set var=call git clone https://github.com/sunxiaobiu/Java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/sunxiaobiu#Java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/sunxiaobiu#Java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\sunxiaobiu#Java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=sunxiaobiu#Java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=sunxiaobiu:Java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\sunxiaobiu#Java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo sunxiaobiu/Java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\sunxiaobiu#Java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\sunxiaobiu#Java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\sunxiaobiu#Java
 ) 

@echo off 
 set var=call git clone https://github.com/b0noI/AIF2.git ALLPROJECTS/NEW_MAVEN_PROJECTS/b0noI#AIF2
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/b0noI#AIF2 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\b0noI#AIF2\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=b0noI#AIF2 -Dsonar.projectVersion=1.0 -Dsonar.projectKey=b0noI:AIF2 -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\b0noI#AIF2" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo b0noI/AIF2 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\b0noI#AIF2
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\b0noI#AIF2
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\b0noI#AIF2
 ) 

@echo off 
 set var=call git clone https://github.com/xaanit/Life.git ALLPROJECTS/NEW_MAVEN_PROJECTS/xaanit#Life
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/xaanit#Life 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\xaanit#Life\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=xaanit#Life -Dsonar.projectVersion=1.0 -Dsonar.projectKey=xaanit:Life -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\xaanit#Life" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo xaanit/Life 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xaanit#Life
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xaanit#Life
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xaanit#Life
 ) 

@echo off 
 set var=call git clone https://github.com/apache/commons-lang.git ALLPROJECTS/NEW_MAVEN_PROJECTS/apache#commons-lang
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/apache#commons-lang 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\apache#commons-lang\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=apache#commons-lang -Dsonar.projectVersion=1.0 -Dsonar.projectKey=apache:commons-lang -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\apache#commons-lang" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo apache/commons-lang 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\apache#commons-lang
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\apache#commons-lang
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\apache#commons-lang
 ) 

@echo off 
 set var=call git clone https://github.com/52North/uncertml-api.git ALLPROJECTS/NEW_MAVEN_PROJECTS/52North#uncertml-api
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/52North#uncertml-api 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\52North#uncertml-api\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=52North#uncertml-api -Dsonar.projectVersion=1.0 -Dsonar.projectKey=52North:uncertml-api -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\52North#uncertml-api" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo 52North/uncertml-api 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\52North#uncertml-api
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\52North#uncertml-api
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\52North#uncertml-api
 ) 

@echo off 
 set var=call git clone https://github.com/protegeproject/swrlapi.git ALLPROJECTS/NEW_MAVEN_PROJECTS/protegeproject#swrlapi
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/protegeproject#swrlapi 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\protegeproject#swrlapi\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=protegeproject#swrlapi -Dsonar.projectVersion=1.0 -Dsonar.projectKey=protegeproject:swrlapi -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\protegeproject#swrlapi" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo protegeproject/swrlapi 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\protegeproject#swrlapi
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\protegeproject#swrlapi
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\protegeproject#swrlapi
 ) 

@echo off 
 set var=call git clone https://github.com/steveohara/j2mod.git ALLPROJECTS/NEW_MAVEN_PROJECTS/steveohara#j2mod
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/steveohara#j2mod 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\steveohara#j2mod\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=steveohara#j2mod -Dsonar.projectVersion=1.0 -Dsonar.projectKey=steveohara:j2mod -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\steveohara#j2mod" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo steveohara/j2mod 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\steveohara#j2mod
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\steveohara#j2mod
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\steveohara#j2mod
 ) 

@echo off 
 set var=call git clone https://github.com/bytedeco/javacpp.git ALLPROJECTS/NEW_MAVEN_PROJECTS/bytedeco#javacpp
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/bytedeco#javacpp 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\bytedeco#javacpp\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=bytedeco#javacpp -Dsonar.projectVersion=1.0 -Dsonar.projectKey=bytedeco:javacpp -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\bytedeco#javacpp" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo bytedeco/javacpp 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\bytedeco#javacpp
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\bytedeco#javacpp
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\bytedeco#javacpp
 ) 

@echo off 
 set var=call git clone https://github.com/paypal/digraph-parser.git ALLPROJECTS/NEW_MAVEN_PROJECTS/paypal#digraph-parser
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/paypal#digraph-parser 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\paypal#digraph-parser\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=paypal#digraph-parser -Dsonar.projectVersion=1.0 -Dsonar.projectKey=paypal:digraph-parser -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\paypal#digraph-parser" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo paypal/digraph-parser 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\paypal#digraph-parser
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\paypal#digraph-parser
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\paypal#digraph-parser
 ) 

@echo off 
 set var=call git clone https://github.com/antoniomacri/rosie-pattern-language-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/antoniomacri#rosie-pattern-language-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/antoniomacri#rosie-pattern-language-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\antoniomacri#rosie-pattern-language-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=antoniomacri#rosie-pattern-language-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=antoniomacri:rosie-pattern-language-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\antoniomacri#rosie-pattern-language-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo antoniomacri/rosie-pattern-language-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\antoniomacri#rosie-pattern-language-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\antoniomacri#rosie-pattern-language-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\antoniomacri#rosie-pattern-language-java
 ) 

@echo off 
 set var=call git clone https://github.com/prismicio/java-kit.git ALLPROJECTS/NEW_MAVEN_PROJECTS/prismicio#java-kit
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/prismicio#java-kit 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\prismicio#java-kit\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=prismicio#java-kit -Dsonar.projectVersion=1.0 -Dsonar.projectKey=prismicio:java-kit -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\prismicio#java-kit" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo prismicio/java-kit 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\prismicio#java-kit
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\prismicio#java-kit
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\prismicio#java-kit
 ) 

@echo off 
 set var=call git clone https://github.com/ICO2S/sbolstack-client-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/ICO2S#sbolstack-client-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/ICO2S#sbolstack-client-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\ICO2S#sbolstack-client-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=ICO2S#sbolstack-client-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=ICO2S:sbolstack-client-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\ICO2S#sbolstack-client-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo ICO2S/sbolstack-client-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ICO2S#sbolstack-client-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ICO2S#sbolstack-client-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ICO2S#sbolstack-client-java
 ) 

@echo off 
 set var=call git clone https://github.com/KengoTODA/Brainjack.git ALLPROJECTS/NEW_MAVEN_PROJECTS/KengoTODA#Brainjack
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/KengoTODA#Brainjack 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\KengoTODA#Brainjack\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=KengoTODA#Brainjack -Dsonar.projectVersion=1.0 -Dsonar.projectKey=KengoTODA:Brainjack -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\KengoTODA#Brainjack" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo KengoTODA/Brainjack 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\KengoTODA#Brainjack
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\KengoTODA#Brainjack
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\KengoTODA#Brainjack
 ) 

@echo off 
 set var=call git clone https://github.com/socketio/socket.io-client-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/socketio#socket.io-client-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/socketio#socket.io-client-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\socketio#socket.io-client-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=socketio#socket.io-client-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=socketio:socket.io-client-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\socketio#socket.io-client-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo socketio/socket.io-client-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\socketio#socket.io-client-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\socketio#socket.io-client-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\socketio#socket.io-client-java
 ) 

@echo off 
 set var=call git clone https://github.com/FasterXML/jackson-databind.git ALLPROJECTS/NEW_MAVEN_PROJECTS/FasterXML#jackson-databind
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/FasterXML#jackson-databind 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\FasterXML#jackson-databind\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=FasterXML#jackson-databind -Dsonar.projectVersion=1.0 -Dsonar.projectKey=FasterXML:jackson-databind -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\FasterXML#jackson-databind" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo FasterXML/jackson-databind 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\FasterXML#jackson-databind
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\FasterXML#jackson-databind
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\FasterXML#jackson-databind
 ) 

@echo off 
 set var=call git clone https://github.com/tomoya92/pyblog.git ALLPROJECTS/NEW_MAVEN_PROJECTS/tomoya92#pyblog
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/tomoya92#pyblog 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\tomoya92#pyblog\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=tomoya92#pyblog -Dsonar.projectVersion=1.0 -Dsonar.projectKey=tomoya92:pyblog -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\tomoya92#pyblog" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo tomoya92/pyblog 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tomoya92#pyblog
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tomoya92#pyblog
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tomoya92#pyblog
 ) 

@echo off 
 set var=call git clone https://github.com/hakmesyo/Open-Jazari-Library.git ALLPROJECTS/NEW_MAVEN_PROJECTS/hakmesyo#Open-Jazari-Library
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/hakmesyo#Open-Jazari-Library 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\hakmesyo#Open-Jazari-Library\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=hakmesyo#Open-Jazari-Library -Dsonar.projectVersion=1.0 -Dsonar.projectKey=hakmesyo:Open-Jazari-Library -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\hakmesyo#Open-Jazari-Library" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo hakmesyo/Open-Jazari-Library 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hakmesyo#Open-Jazari-Library
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hakmesyo#Open-Jazari-Library
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hakmesyo#Open-Jazari-Library
 ) 

@echo off 
 set var=call git clone https://github.com/mabe02/lanterna.git ALLPROJECTS/NEW_MAVEN_PROJECTS/mabe02#lanterna
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/mabe02#lanterna 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\mabe02#lanterna\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=mabe02#lanterna -Dsonar.projectVersion=1.0 -Dsonar.projectKey=mabe02:lanterna -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\mabe02#lanterna" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo mabe02/lanterna 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mabe02#lanterna
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mabe02#lanterna
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mabe02#lanterna
 ) 

@echo off 
 set var=call git clone https://github.com/Hatik/java-courses.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Hatik#java-courses
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Hatik#java-courses 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Hatik#java-courses\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Hatik#java-courses -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Hatik:java-courses -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Hatik#java-courses" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Hatik/java-courses 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Hatik#java-courses
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Hatik#java-courses
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Hatik#java-courses
 ) 

@echo off 
 set var=call git clone https://github.com/joschi/JadConfig.git ALLPROJECTS/NEW_MAVEN_PROJECTS/joschi#JadConfig
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/joschi#JadConfig 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\joschi#JadConfig\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=joschi#JadConfig -Dsonar.projectVersion=1.0 -Dsonar.projectKey=joschi:JadConfig -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\joschi#JadConfig" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo joschi/JadConfig 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\joschi#JadConfig
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\joschi#JadConfig
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\joschi#JadConfig
 ) 

@echo off 
 set var=call git clone https://github.com/RayRuiLi/ThinkingInJavaRay.git ALLPROJECTS/NEW_MAVEN_PROJECTS/RayRuiLi#ThinkingInJavaRay
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/RayRuiLi#ThinkingInJavaRay 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\RayRuiLi#ThinkingInJavaRay\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=RayRuiLi#ThinkingInJavaRay -Dsonar.projectVersion=1.0 -Dsonar.projectKey=RayRuiLi:ThinkingInJavaRay -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\RayRuiLi#ThinkingInJavaRay" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo RayRuiLi/ThinkingInJavaRay 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\RayRuiLi#ThinkingInJavaRay
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\RayRuiLi#ThinkingInJavaRay
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\RayRuiLi#ThinkingInJavaRay
 ) 

@echo off 
 set var=call git clone https://github.com/unbxd/java-sdk.git ALLPROJECTS/NEW_MAVEN_PROJECTS/unbxd#java-sdk
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/unbxd#java-sdk 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\unbxd#java-sdk\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=unbxd#java-sdk -Dsonar.projectVersion=1.0 -Dsonar.projectKey=unbxd:java-sdk -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\unbxd#java-sdk" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo unbxd/java-sdk 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\unbxd#java-sdk
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\unbxd#java-sdk
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\unbxd#java-sdk
 ) 

@echo off 
 set var=call git clone https://github.com/spotify/docker-maven-plugin.git ALLPROJECTS/NEW_MAVEN_PROJECTS/spotify#docker-maven-plugin
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/spotify#docker-maven-plugin 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\spotify#docker-maven-plugin\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=spotify#docker-maven-plugin -Dsonar.projectVersion=1.0 -Dsonar.projectKey=spotify:docker-maven-plugin -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\spotify#docker-maven-plugin" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo spotify/docker-maven-plugin 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\spotify#docker-maven-plugin
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\spotify#docker-maven-plugin
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\spotify#docker-maven-plugin
 ) 

@echo off 
 set var=call git clone https://github.com/alibaba/druid.git ALLPROJECTS/NEW_MAVEN_PROJECTS/alibaba#druid
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/alibaba#druid 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#druid\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=alibaba#druid -Dsonar.projectVersion=1.0 -Dsonar.projectKey=alibaba:druid -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#druid" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo alibaba/druid 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#druid
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#druid
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#druid
 ) 

@echo off 
 set var=call git clone https://github.com/dbi1463/SortDescriptor.git ALLPROJECTS/NEW_MAVEN_PROJECTS/dbi1463#SortDescriptor
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/dbi1463#SortDescriptor 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\dbi1463#SortDescriptor\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=dbi1463#SortDescriptor -Dsonar.projectVersion=1.0 -Dsonar.projectKey=dbi1463:SortDescriptor -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\dbi1463#SortDescriptor" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo dbi1463/SortDescriptor 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\dbi1463#SortDescriptor
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\dbi1463#SortDescriptor
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\dbi1463#SortDescriptor
 ) 

@echo off 
 set var=call git clone https://github.com/spring-projects/spring-mvc-showcase.git ALLPROJECTS/NEW_MAVEN_PROJECTS/spring-projects#spring-mvc-showcase
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/spring-projects#spring-mvc-showcase 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\spring-projects#spring-mvc-showcase\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=spring-projects#spring-mvc-showcase -Dsonar.projectVersion=1.0 -Dsonar.projectKey=spring-projects:spring-mvc-showcase -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\spring-projects#spring-mvc-showcase" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo spring-projects/spring-mvc-showcase 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\spring-projects#spring-mvc-showcase
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\spring-projects#spring-mvc-showcase
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\spring-projects#spring-mvc-showcase
 ) 

@echo off 
 set var=call git clone https://github.com/notnoop/java-apns.git ALLPROJECTS/NEW_MAVEN_PROJECTS/notnoop#java-apns
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/notnoop#java-apns 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\notnoop#java-apns\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=notnoop#java-apns -Dsonar.projectVersion=1.0 -Dsonar.projectKey=notnoop:java-apns -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\notnoop#java-apns" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo notnoop/java-apns 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\notnoop#java-apns
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\notnoop#java-apns
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\notnoop#java-apns
 ) 

@echo off 
 set var=call git clone https://github.com/vexprel/vexprel.git ALLPROJECTS/NEW_MAVEN_PROJECTS/vexprel#vexprel
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/vexprel#vexprel 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\vexprel#vexprel\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=vexprel#vexprel -Dsonar.projectVersion=1.0 -Dsonar.projectKey=vexprel:vexprel -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\vexprel#vexprel" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo vexprel/vexprel 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vexprel#vexprel
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vexprel#vexprel
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vexprel#vexprel
 ) 

@echo off 
 set var=call git clone https://github.com/zeroturnaround/zt-zip.git ALLPROJECTS/NEW_MAVEN_PROJECTS/zeroturnaround#zt-zip
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/zeroturnaround#zt-zip 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\zeroturnaround#zt-zip\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=zeroturnaround#zt-zip -Dsonar.projectVersion=1.0 -Dsonar.projectKey=zeroturnaround:zt-zip -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\zeroturnaround#zt-zip" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo zeroturnaround/zt-zip 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\zeroturnaround#zt-zip
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\zeroturnaround#zt-zip
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\zeroturnaround#zt-zip
 ) 

@echo off 
 set var=call git clone https://github.com/vdurmont/emoji-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/vdurmont#emoji-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/vdurmont#emoji-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\vdurmont#emoji-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=vdurmont#emoji-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=vdurmont:emoji-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\vdurmont#emoji-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo vdurmont/emoji-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vdurmont#emoji-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vdurmont#emoji-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vdurmont#emoji-java
 ) 

@echo off 
 set var=call git clone https://github.com/romildo/straightline.git ALLPROJECTS/NEW_MAVEN_PROJECTS/romildo#straightline
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/romildo#straightline 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\romildo#straightline\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=romildo#straightline -Dsonar.projectVersion=1.0 -Dsonar.projectKey=romildo:straightline -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\romildo#straightline" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo romildo/straightline 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\romildo#straightline
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\romildo#straightline
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\romildo#straightline
 ) 

@echo off 
 set var=call git clone https://github.com/ebolwidt/cassowary-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/ebolwidt#cassowary-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/ebolwidt#cassowary-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\ebolwidt#cassowary-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=ebolwidt#cassowary-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=ebolwidt:cassowary-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\ebolwidt#cassowary-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo ebolwidt/cassowary-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ebolwidt#cassowary-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ebolwidt#cassowary-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ebolwidt#cassowary-java
 ) 

@echo off 
 set var=call git clone https://github.com/joshjdevl/libsodium-jni.git ALLPROJECTS/NEW_MAVEN_PROJECTS/joshjdevl#libsodium-jni
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/joshjdevl#libsodium-jni 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\joshjdevl#libsodium-jni\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=joshjdevl#libsodium-jni -Dsonar.projectVersion=1.0 -Dsonar.projectKey=joshjdevl:libsodium-jni -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\joshjdevl#libsodium-jni" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo joshjdevl/libsodium-jni 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\joshjdevl#libsodium-jni
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\joshjdevl#libsodium-jni
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\joshjdevl#libsodium-jni
 ) 

@echo off 
 set var=call git clone https://github.com/wanasit/chrono-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/wanasit#chrono-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/wanasit#chrono-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\wanasit#chrono-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=wanasit#chrono-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=wanasit:chrono-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\wanasit#chrono-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo wanasit/chrono-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\wanasit#chrono-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\wanasit#chrono-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\wanasit#chrono-java
 ) 

@echo off 
 set var=call git clone https://github.com/ptitjes/jlato.git ALLPROJECTS/NEW_MAVEN_PROJECTS/ptitjes#jlato
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/ptitjes#jlato 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\ptitjes#jlato\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=ptitjes#jlato -Dsonar.projectVersion=1.0 -Dsonar.projectKey=ptitjes:jlato -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\ptitjes#jlato" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo ptitjes/jlato 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ptitjes#jlato
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ptitjes#jlato
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ptitjes#jlato
 ) 

@echo off 
 set var=call git clone https://github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition.git ALLPROJECTS/NEW_MAVEN_PROJECTS/EnterpriseQualityCoding#FizzBuzzEnterpriseEdition
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/EnterpriseQualityCoding#FizzBuzzEnterpriseEdition 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\EnterpriseQualityCoding#FizzBuzzEnterpriseEdition\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=EnterpriseQualityCoding#FizzBuzzEnterpriseEdition -Dsonar.projectVersion=1.0 -Dsonar.projectKey=EnterpriseQualityCoding:FizzBuzzEnterpriseEdition -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\EnterpriseQualityCoding#FizzBuzzEnterpriseEdition" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo EnterpriseQualityCoding/FizzBuzzEnterpriseEdition 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\EnterpriseQualityCoding#FizzBuzzEnterpriseEdition
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\EnterpriseQualityCoding#FizzBuzzEnterpriseEdition
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\EnterpriseQualityCoding#FizzBuzzEnterpriseEdition
 ) 

@echo off 
 set var=call git clone https://github.com/optimaize/language-detector.git ALLPROJECTS/NEW_MAVEN_PROJECTS/optimaize#language-detector
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/optimaize#language-detector 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\optimaize#language-detector\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=optimaize#language-detector -Dsonar.projectVersion=1.0 -Dsonar.projectKey=optimaize:language-detector -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\optimaize#language-detector" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo optimaize/language-detector 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\optimaize#language-detector
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\optimaize#language-detector
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\optimaize#language-detector
 ) 

@echo off 
 set var=call git clone https://github.com/baichengzhou/SpringMVC-Mybatis-Shiro-redis-0.2.git ALLPROJECTS/NEW_MAVEN_PROJECTS/baichengzhou#SpringMVC-Mybatis-Shiro-redis-0.2
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/baichengzhou#SpringMVC-Mybatis-Shiro-redis-0.2 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\baichengzhou#SpringMVC-Mybatis-Shiro-redis-0.2\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=baichengzhou#SpringMVC-Mybatis-Shiro-redis-0.2 -Dsonar.projectVersion=1.0 -Dsonar.projectKey=baichengzhou:SpringMVC-Mybatis-Shiro-redis-0.2 -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\baichengzhou#SpringMVC-Mybatis-Shiro-redis-0.2" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo baichengzhou/SpringMVC-Mybatis-Shiro-redis-0.2 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\baichengzhou#SpringMVC-Mybatis-Shiro-redis-0.2
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\baichengzhou#SpringMVC-Mybatis-Shiro-redis-0.2
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\baichengzhou#SpringMVC-Mybatis-Shiro-redis-0.2
 ) 

@echo off 
 set var=call git clone https://github.com/oasis-open/openc2-lycan-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/oasis-open#openc2-lycan-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/oasis-open#openc2-lycan-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\oasis-open#openc2-lycan-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=oasis-open#openc2-lycan-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=oasis-open:openc2-lycan-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\oasis-open#openc2-lycan-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo oasis-open/openc2-lycan-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\oasis-open#openc2-lycan-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\oasis-open#openc2-lycan-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\oasis-open#openc2-lycan-java
 ) 

@echo off 
 set var=call git clone https://github.com/luxiaoxun/NettyRpc.git ALLPROJECTS/NEW_MAVEN_PROJECTS/luxiaoxun#NettyRpc
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/luxiaoxun#NettyRpc 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\luxiaoxun#NettyRpc\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=luxiaoxun#NettyRpc -Dsonar.projectVersion=1.0 -Dsonar.projectKey=luxiaoxun:NettyRpc -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\luxiaoxun#NettyRpc" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo luxiaoxun/NettyRpc 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\luxiaoxun#NettyRpc
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\luxiaoxun#NettyRpc
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\luxiaoxun#NettyRpc
 ) 

@echo off 
 set var=call git clone https://github.com/awslabs/aws-hal-client-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/awslabs#aws-hal-client-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/awslabs#aws-hal-client-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\awslabs#aws-hal-client-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=awslabs#aws-hal-client-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=awslabs:aws-hal-client-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\awslabs#aws-hal-client-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo awslabs/aws-hal-client-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\awslabs#aws-hal-client-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\awslabs#aws-hal-client-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\awslabs#aws-hal-client-java
 ) 

@echo off 
 set var=call git clone https://github.com/daniloarcidiacono/commons-lang.git ALLPROJECTS/NEW_MAVEN_PROJECTS/daniloarcidiacono#commons-lang
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/daniloarcidiacono#commons-lang 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\daniloarcidiacono#commons-lang\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=daniloarcidiacono#commons-lang -Dsonar.projectVersion=1.0 -Dsonar.projectKey=daniloarcidiacono:commons-lang -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\daniloarcidiacono#commons-lang" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo daniloarcidiacono/commons-lang 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\daniloarcidiacono#commons-lang
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\daniloarcidiacono#commons-lang
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\daniloarcidiacono#commons-lang
 ) 

@echo off 
 set var=call git clone https://github.com/eitch/ch.eitchnet.dmedia.filestore.git ALLPROJECTS/NEW_MAVEN_PROJECTS/eitch#ch.eitchnet.dmedia.filestore
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/eitch#ch.eitchnet.dmedia.filestore 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\eitch#ch.eitchnet.dmedia.filestore\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=eitch#ch.eitchnet.dmedia.filestore -Dsonar.projectVersion=1.0 -Dsonar.projectKey=eitch:ch.eitchnet.dmedia.filestore -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\eitch#ch.eitchnet.dmedia.filestore" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo eitch/ch.eitchnet.dmedia.filestore 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\eitch#ch.eitchnet.dmedia.filestore
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\eitch#ch.eitchnet.dmedia.filestore
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\eitch#ch.eitchnet.dmedia.filestore
 ) 

@echo off 
 set var=call git clone https://github.com/JakeWharton/DiskLruCache.git ALLPROJECTS/NEW_MAVEN_PROJECTS/JakeWharton#DiskLruCache
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/JakeWharton#DiskLruCache 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\JakeWharton#DiskLruCache\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=JakeWharton#DiskLruCache -Dsonar.projectVersion=1.0 -Dsonar.projectKey=JakeWharton:DiskLruCache -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\JakeWharton#DiskLruCache" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo JakeWharton/DiskLruCache 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\JakeWharton#DiskLruCache
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\JakeWharton#DiskLruCache
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\JakeWharton#DiskLruCache
 ) 

@echo off 
 set var=call git clone https://github.com/lihengming/spring-boot-api-project-seed.git ALLPROJECTS/NEW_MAVEN_PROJECTS/lihengming#spring-boot-api-project-seed
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/lihengming#spring-boot-api-project-seed 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\lihengming#spring-boot-api-project-seed\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=lihengming#spring-boot-api-project-seed -Dsonar.projectVersion=1.0 -Dsonar.projectKey=lihengming:spring-boot-api-project-seed -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\lihengming#spring-boot-api-project-seed" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo lihengming/spring-boot-api-project-seed 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\lihengming#spring-boot-api-project-seed
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\lihengming#spring-boot-api-project-seed
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\lihengming#spring-boot-api-project-seed
 ) 

@echo off 
 set var=call git clone https://github.com/jtcl-project/jtcl.git ALLPROJECTS/NEW_MAVEN_PROJECTS/jtcl-project#jtcl
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/jtcl-project#jtcl 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\jtcl-project#jtcl\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=jtcl-project#jtcl -Dsonar.projectVersion=1.0 -Dsonar.projectKey=jtcl-project:jtcl -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\jtcl-project#jtcl" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo jtcl-project/jtcl 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jtcl-project#jtcl
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jtcl-project#jtcl
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jtcl-project#jtcl
 ) 

@echo off 
 set var=call git clone https://github.com/smartystreets/smartystreets-java-sdk.git ALLPROJECTS/NEW_MAVEN_PROJECTS/smartystreets#smartystreets-java-sdk
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/smartystreets#smartystreets-java-sdk 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\smartystreets#smartystreets-java-sdk\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=smartystreets#smartystreets-java-sdk -Dsonar.projectVersion=1.0 -Dsonar.projectKey=smartystreets:smartystreets-java-sdk -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\smartystreets#smartystreets-java-sdk" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo smartystreets/smartystreets-java-sdk 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\smartystreets#smartystreets-java-sdk
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\smartystreets#smartystreets-java-sdk
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\smartystreets#smartystreets-java-sdk
 ) 

@echo off 
 set var=call git clone https://github.com/hprose/hprose-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/hprose#hprose-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/hprose#hprose-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\hprose#hprose-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=hprose#hprose-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=hprose:hprose-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\hprose#hprose-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo hprose/hprose-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hprose#hprose-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hprose#hprose-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hprose#hprose-java
 ) 

@echo off 
 set var=call git clone https://github.com/tommyettinger/Gabber.git ALLPROJECTS/NEW_MAVEN_PROJECTS/tommyettinger#Gabber
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/tommyettinger#Gabber 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\tommyettinger#Gabber\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=tommyettinger#Gabber -Dsonar.projectVersion=1.0 -Dsonar.projectKey=tommyettinger:Gabber -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\tommyettinger#Gabber" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo tommyettinger/Gabber 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tommyettinger#Gabber
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tommyettinger#Gabber
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tommyettinger#Gabber
 ) 

@echo off 
 set var=call git clone https://github.com/killme2008/aviator.git ALLPROJECTS/NEW_MAVEN_PROJECTS/killme2008#aviator
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/killme2008#aviator 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\killme2008#aviator\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=killme2008#aviator -Dsonar.projectVersion=1.0 -Dsonar.projectKey=killme2008:aviator -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\killme2008#aviator" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo killme2008/aviator 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\killme2008#aviator
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\killme2008#aviator
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\killme2008#aviator
 ) 

@echo off 
 set var=call git clone https://github.com/kanwangzjm/funiture.git ALLPROJECTS/NEW_MAVEN_PROJECTS/kanwangzjm#funiture
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/kanwangzjm#funiture 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\kanwangzjm#funiture\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=kanwangzjm#funiture -Dsonar.projectVersion=1.0 -Dsonar.projectKey=kanwangzjm:funiture -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\kanwangzjm#funiture" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo kanwangzjm/funiture 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\kanwangzjm#funiture
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\kanwangzjm#funiture
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\kanwangzjm#funiture
 ) 

@echo off 
 set var=call git clone https://github.com/anychart-integrations/java-spring-hibernate-mysql-template.git ALLPROJECTS/NEW_MAVEN_PROJECTS/anychart-integrations#java-spring-hibernate-mysql-template
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/anychart-integrations#java-spring-hibernate-mysql-template 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\anychart-integrations#java-spring-hibernate-mysql-template\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=anychart-integrations#java-spring-hibernate-mysql-template -Dsonar.projectVersion=1.0 -Dsonar.projectKey=anychart-integrations:java-spring-hibernate-mysql-template -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\anychart-integrations#java-spring-hibernate-mysql-template" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo anychart-integrations/java-spring-hibernate-mysql-template 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\anychart-integrations#java-spring-hibernate-mysql-template
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\anychart-integrations#java-spring-hibernate-mysql-template
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\anychart-integrations#java-spring-hibernate-mysql-template
 ) 

@echo off 
 set var=call git clone https://github.com/floragunncom/search-guard.git ALLPROJECTS/NEW_MAVEN_PROJECTS/floragunncom#search-guard
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/floragunncom#search-guard 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\floragunncom#search-guard\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=floragunncom#search-guard -Dsonar.projectVersion=1.0 -Dsonar.projectKey=floragunncom:search-guard -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\floragunncom#search-guard" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo floragunncom/search-guard 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\floragunncom#search-guard
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\floragunncom#search-guard
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\floragunncom#search-guard
 ) 

@echo off 
 set var=call git clone https://github.com/medcl/elasticsearch-analysis-pinyin.git ALLPROJECTS/NEW_MAVEN_PROJECTS/medcl#elasticsearch-analysis-pinyin
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/medcl#elasticsearch-analysis-pinyin 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\medcl#elasticsearch-analysis-pinyin\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=medcl#elasticsearch-analysis-pinyin -Dsonar.projectVersion=1.0 -Dsonar.projectKey=medcl:elasticsearch-analysis-pinyin -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\medcl#elasticsearch-analysis-pinyin" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo medcl/elasticsearch-analysis-pinyin 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\medcl#elasticsearch-analysis-pinyin
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\medcl#elasticsearch-analysis-pinyin
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\medcl#elasticsearch-analysis-pinyin
 ) 

@echo off 
 set var=call git clone https://github.com/yellow013/polaris.git ALLPROJECTS/NEW_MAVEN_PROJECTS/yellow013#polaris
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/yellow013#polaris 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\yellow013#polaris\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=yellow013#polaris -Dsonar.projectVersion=1.0 -Dsonar.projectKey=yellow013:polaris -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\yellow013#polaris" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo yellow013/polaris 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\yellow013#polaris
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\yellow013#polaris
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\yellow013#polaris
 ) 

@echo off 
 set var=call git clone https://github.com/55minutes/fiftyfive-util.git ALLPROJECTS/NEW_MAVEN_PROJECTS/55minutes#fiftyfive-util
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/55minutes#fiftyfive-util 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\55minutes#fiftyfive-util\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=55minutes#fiftyfive-util -Dsonar.projectVersion=1.0 -Dsonar.projectKey=55minutes:fiftyfive-util -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\55minutes#fiftyfive-util" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo 55minutes/fiftyfive-util 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\55minutes#fiftyfive-util
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\55minutes#fiftyfive-util
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\55minutes#fiftyfive-util
 ) 

@echo off 
 set var=call git clone https://github.com/jiyeking/java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/jiyeking#java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/jiyeking#java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\jiyeking#java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=jiyeking#java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=jiyeking:java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\jiyeking#java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo jiyeking/java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jiyeking#java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jiyeking#java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jiyeking#java
 ) 

@echo off 
 set var=call git clone https://github.com/rememberber/WePush.git ALLPROJECTS/NEW_MAVEN_PROJECTS/rememberber#WePush
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/rememberber#WePush 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\rememberber#WePush\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=rememberber#WePush -Dsonar.projectVersion=1.0 -Dsonar.projectKey=rememberber:WePush -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\rememberber#WePush" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo rememberber/WePush 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rememberber#WePush
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rememberber#WePush
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rememberber#WePush
 ) 

@echo off 
 set var=call git clone https://github.com/happylynx/fun-of-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/happylynx#fun-of-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/happylynx#fun-of-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\happylynx#fun-of-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=happylynx#fun-of-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=happylynx:fun-of-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\happylynx#fun-of-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo happylynx/fun-of-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\happylynx#fun-of-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\happylynx#fun-of-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\happylynx#fun-of-java
 ) 

@echo off 
 set var=call git clone https://github.com/titokone/titokone.git ALLPROJECTS/NEW_MAVEN_PROJECTS/titokone#titokone
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/titokone#titokone 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\titokone#titokone\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=titokone#titokone -Dsonar.projectVersion=1.0 -Dsonar.projectKey=titokone:titokone -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\titokone#titokone" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo titokone/titokone 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\titokone#titokone
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\titokone#titokone
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\titokone#titokone
 ) 

@echo off 
 set var=call git clone https://github.com/WhiteMagic2014/live2d_api_java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/WhiteMagic2014#live2d_api_java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/WhiteMagic2014#live2d_api_java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\WhiteMagic2014#live2d_api_java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=WhiteMagic2014#live2d_api_java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=WhiteMagic2014:live2d_api_java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\WhiteMagic2014#live2d_api_java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo WhiteMagic2014/live2d_api_java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\WhiteMagic2014#live2d_api_java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\WhiteMagic2014#live2d_api_java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\WhiteMagic2014#live2d_api_java
 ) 

@echo off 
 set var=call git clone https://github.com/detectlanguage/detectlanguage-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/detectlanguage#detectlanguage-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/detectlanguage#detectlanguage-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\detectlanguage#detectlanguage-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=detectlanguage#detectlanguage-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=detectlanguage:detectlanguage-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\detectlanguage#detectlanguage-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo detectlanguage/detectlanguage-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\detectlanguage#detectlanguage-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\detectlanguage#detectlanguage-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\detectlanguage#detectlanguage-java
 ) 

@echo off 
 set var=call git clone https://github.com/msteindorfer/criterion.git ALLPROJECTS/NEW_MAVEN_PROJECTS/msteindorfer#criterion
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/msteindorfer#criterion 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\msteindorfer#criterion\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=msteindorfer#criterion -Dsonar.projectVersion=1.0 -Dsonar.projectKey=msteindorfer:criterion -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\msteindorfer#criterion" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo msteindorfer/criterion 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\msteindorfer#criterion
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\msteindorfer#criterion
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\msteindorfer#criterion
 ) 

@echo off 
 set var=call git clone https://github.com/databricks/learning-spark.git ALLPROJECTS/NEW_MAVEN_PROJECTS/databricks#learning-spark
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/databricks#learning-spark 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\databricks#learning-spark\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=databricks#learning-spark -Dsonar.projectVersion=1.0 -Dsonar.projectKey=databricks:learning-spark -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\databricks#learning-spark" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo databricks/learning-spark 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\databricks#learning-spark
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\databricks#learning-spark
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\databricks#learning-spark
 ) 

@echo off 
 set var=call git clone https://github.com/Wradgio/Jamlin.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Wradgio#Jamlin
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Wradgio#Jamlin 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Wradgio#Jamlin\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Wradgio#Jamlin -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Wradgio:Jamlin -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Wradgio#Jamlin" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Wradgio/Jamlin 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Wradgio#Jamlin
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Wradgio#Jamlin
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Wradgio#Jamlin
 ) 

@echo off 
 set var=call git clone https://github.com/mateiw/littlebasic.git ALLPROJECTS/NEW_MAVEN_PROJECTS/mateiw#littlebasic
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/mateiw#littlebasic 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\mateiw#littlebasic\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=mateiw#littlebasic -Dsonar.projectVersion=1.0 -Dsonar.projectKey=mateiw:littlebasic -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\mateiw#littlebasic" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo mateiw/littlebasic 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mateiw#littlebasic
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mateiw#littlebasic
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mateiw#littlebasic
 ) 

@echo off 
 set var=call git clone https://github.com/NLPchina/elasticsearch-sql.git ALLPROJECTS/NEW_MAVEN_PROJECTS/NLPchina#elasticsearch-sql
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/NLPchina#elasticsearch-sql 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\NLPchina#elasticsearch-sql\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=NLPchina#elasticsearch-sql -Dsonar.projectVersion=1.0 -Dsonar.projectKey=NLPchina:elasticsearch-sql -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\NLPchina#elasticsearch-sql" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo NLPchina/elasticsearch-sql 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\NLPchina#elasticsearch-sql
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\NLPchina#elasticsearch-sql
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\NLPchina#elasticsearch-sql
 ) 

@echo off 
 set var=call git clone https://github.com/metamx/java-util.git ALLPROJECTS/NEW_MAVEN_PROJECTS/metamx#java-util
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/metamx#java-util 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\metamx#java-util\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=metamx#java-util -Dsonar.projectVersion=1.0 -Dsonar.projectKey=metamx:java-util -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\metamx#java-util" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo metamx/java-util 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\metamx#java-util
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\metamx#java-util
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\metamx#java-util
 ) 

@echo off 
 set var=call git clone https://github.com/BTCMarkets/sample-api-client-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/BTCMarkets#sample-api-client-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/BTCMarkets#sample-api-client-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\BTCMarkets#sample-api-client-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=BTCMarkets#sample-api-client-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=BTCMarkets:sample-api-client-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\BTCMarkets#sample-api-client-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo BTCMarkets/sample-api-client-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\BTCMarkets#sample-api-client-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\BTCMarkets#sample-api-client-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\BTCMarkets#sample-api-client-java
 ) 

@echo off 
 set var=call git clone https://github.com/fasseg/exp4j.git ALLPROJECTS/NEW_MAVEN_PROJECTS/fasseg#exp4j
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/fasseg#exp4j 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\fasseg#exp4j\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=fasseg#exp4j -Dsonar.projectVersion=1.0 -Dsonar.projectKey=fasseg:exp4j -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\fasseg#exp4j" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo fasseg/exp4j 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fasseg#exp4j
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fasseg#exp4j
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fasseg#exp4j
 ) 

@echo off 
 set var=call git clone https://github.com/pfmiles/bytecode-lego.git ALLPROJECTS/NEW_MAVEN_PROJECTS/pfmiles#bytecode-lego
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/pfmiles#bytecode-lego 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\pfmiles#bytecode-lego\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=pfmiles#bytecode-lego -Dsonar.projectVersion=1.0 -Dsonar.projectKey=pfmiles:bytecode-lego -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\pfmiles#bytecode-lego" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo pfmiles/bytecode-lego 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pfmiles#bytecode-lego
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pfmiles#bytecode-lego
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pfmiles#bytecode-lego
 ) 

@echo off 
 set var=call git clone https://github.com/PhantomYdn/jlll.git ALLPROJECTS/NEW_MAVEN_PROJECTS/PhantomYdn#jlll
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/PhantomYdn#jlll 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\PhantomYdn#jlll\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=PhantomYdn#jlll -Dsonar.projectVersion=1.0 -Dsonar.projectKey=PhantomYdn:jlll -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\PhantomYdn#jlll" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo PhantomYdn/jlll 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\PhantomYdn#jlll
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\PhantomYdn#jlll
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\PhantomYdn#jlll
 ) 

@echo off 
 set var=call git clone https://github.com/Contargo/intermodal-domain.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Contargo#intermodal-domain
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Contargo#intermodal-domain 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Contargo#intermodal-domain\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Contargo#intermodal-domain -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Contargo:intermodal-domain -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Contargo#intermodal-domain" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Contargo/intermodal-domain 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Contargo#intermodal-domain
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Contargo#intermodal-domain
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Contargo#intermodal-domain
 ) 

@echo off 
 set var=call git clone https://github.com/vmi/indylisp.git ALLPROJECTS/NEW_MAVEN_PROJECTS/vmi#indylisp
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/vmi#indylisp 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\vmi#indylisp\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=vmi#indylisp -Dsonar.projectVersion=1.0 -Dsonar.projectKey=vmi:indylisp -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\vmi#indylisp" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo vmi/indylisp 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vmi#indylisp
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vmi#indylisp
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vmi#indylisp
 ) 

@echo off 
 set var=call git clone https://github.com/pvdlg/enml4j.git ALLPROJECTS/NEW_MAVEN_PROJECTS/pvdlg#enml4j
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/pvdlg#enml4j 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\pvdlg#enml4j\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=pvdlg#enml4j -Dsonar.projectVersion=1.0 -Dsonar.projectKey=pvdlg:enml4j -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\pvdlg#enml4j" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo pvdlg/enml4j 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pvdlg#enml4j
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pvdlg#enml4j
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pvdlg#enml4j
 ) 

@echo off 
 set var=call git clone https://github.com/frohoff/inspector-gadget.git ALLPROJECTS/NEW_MAVEN_PROJECTS/frohoff#inspector-gadget
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/frohoff#inspector-gadget 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\frohoff#inspector-gadget\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=frohoff#inspector-gadget -Dsonar.projectVersion=1.0 -Dsonar.projectKey=frohoff:inspector-gadget -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\frohoff#inspector-gadget" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo frohoff/inspector-gadget 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\frohoff#inspector-gadget
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\frohoff#inspector-gadget
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\frohoff#inspector-gadget
 ) 

@echo off 
 set var=call git clone https://github.com/seintur/jmixer.git ALLPROJECTS/NEW_MAVEN_PROJECTS/seintur#jmixer
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/seintur#jmixer 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\seintur#jmixer\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=seintur#jmixer -Dsonar.projectVersion=1.0 -Dsonar.projectKey=seintur:jmixer -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\seintur#jmixer" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo seintur/jmixer 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\seintur#jmixer
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\seintur#jmixer
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\seintur#jmixer
 ) 

@echo off 
 set var=call git clone https://github.com/anychart-integrations/java-jsp-jdbc-mysql-template.git ALLPROJECTS/NEW_MAVEN_PROJECTS/anychart-integrations#java-jsp-jdbc-mysql-template
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/anychart-integrations#java-jsp-jdbc-mysql-template 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\anychart-integrations#java-jsp-jdbc-mysql-template\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=anychart-integrations#java-jsp-jdbc-mysql-template -Dsonar.projectVersion=1.0 -Dsonar.projectKey=anychart-integrations:java-jsp-jdbc-mysql-template -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\anychart-integrations#java-jsp-jdbc-mysql-template" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo anychart-integrations/java-jsp-jdbc-mysql-template 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\anychart-integrations#java-jsp-jdbc-mysql-template
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\anychart-integrations#java-jsp-jdbc-mysql-template
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\anychart-integrations#java-jsp-jdbc-mysql-template
 ) 

@echo off 
 set var=call git clone https://github.com/denysvitali/ifunny.git ALLPROJECTS/NEW_MAVEN_PROJECTS/denysvitali#ifunny
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/denysvitali#ifunny 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\denysvitali#ifunny\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=denysvitali#ifunny -Dsonar.projectVersion=1.0 -Dsonar.projectKey=denysvitali:ifunny -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\denysvitali#ifunny" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo denysvitali/ifunny 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\denysvitali#ifunny
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\denysvitali#ifunny
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\denysvitali#ifunny
 ) 

@echo off 
 set var=call git clone https://github.com/bytedeco/javacv.git ALLPROJECTS/NEW_MAVEN_PROJECTS/bytedeco#javacv
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/bytedeco#javacv 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\bytedeco#javacv\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=bytedeco#javacv -Dsonar.projectVersion=1.0 -Dsonar.projectKey=bytedeco:javacv -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\bytedeco#javacv" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo bytedeco/javacv 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\bytedeco#javacv
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\bytedeco#javacv
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\bytedeco#javacv
 ) 

@echo off 
 set var=call git clone https://github.com/pvto/konte-art.git ALLPROJECTS/NEW_MAVEN_PROJECTS/pvto#konte-art
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/pvto#konte-art 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\pvto#konte-art\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=pvto#konte-art -Dsonar.projectVersion=1.0 -Dsonar.projectKey=pvto:konte-art -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\pvto#konte-art" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo pvto/konte-art 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pvto#konte-art
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pvto#konte-art
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pvto#konte-art
 ) 

@echo off 
 set var=call git clone https://github.com/xtuhcy/gecco.git ALLPROJECTS/NEW_MAVEN_PROJECTS/xtuhcy#gecco
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/xtuhcy#gecco 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\xtuhcy#gecco\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=xtuhcy#gecco -Dsonar.projectVersion=1.0 -Dsonar.projectKey=xtuhcy:gecco -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\xtuhcy#gecco" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo xtuhcy/gecco 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xtuhcy#gecco
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xtuhcy#gecco
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xtuhcy#gecco
 ) 

@echo off 
 set var=call git clone https://github.com/ortolanph/JavaBasicConcepts.git ALLPROJECTS/NEW_MAVEN_PROJECTS/ortolanph#JavaBasicConcepts
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/ortolanph#JavaBasicConcepts 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\ortolanph#JavaBasicConcepts\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=ortolanph#JavaBasicConcepts -Dsonar.projectVersion=1.0 -Dsonar.projectKey=ortolanph:JavaBasicConcepts -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\ortolanph#JavaBasicConcepts" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo ortolanph/JavaBasicConcepts 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ortolanph#JavaBasicConcepts
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ortolanph#JavaBasicConcepts
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\ortolanph#JavaBasicConcepts
 ) 

@echo off 
 set var=call git clone https://github.com/yunify/qingstor-sdk-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/yunify#qingstor-sdk-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/yunify#qingstor-sdk-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\yunify#qingstor-sdk-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=yunify#qingstor-sdk-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=yunify:qingstor-sdk-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\yunify#qingstor-sdk-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo yunify/qingstor-sdk-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\yunify#qingstor-sdk-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\yunify#qingstor-sdk-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\yunify#qingstor-sdk-java
 ) 

@echo off 
 set var=call git clone https://github.com/brunocvcunha/mdmlang.git ALLPROJECTS/NEW_MAVEN_PROJECTS/brunocvcunha#mdmlang
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/brunocvcunha#mdmlang 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\brunocvcunha#mdmlang\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=brunocvcunha#mdmlang -Dsonar.projectVersion=1.0 -Dsonar.projectKey=brunocvcunha:mdmlang -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\brunocvcunha#mdmlang" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo brunocvcunha/mdmlang 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\brunocvcunha#mdmlang
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\brunocvcunha#mdmlang
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\brunocvcunha#mdmlang
 ) 

@echo off 
 set var=call git clone https://github.com/doraig/jcef.git ALLPROJECTS/NEW_MAVEN_PROJECTS/doraig#jcef
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/doraig#jcef 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\doraig#jcef\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=doraig#jcef -Dsonar.projectVersion=1.0 -Dsonar.projectKey=doraig:jcef -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\doraig#jcef" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo doraig/jcef 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\doraig#jcef
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\doraig#jcef
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\doraig#jcef
 ) 

@echo off 
 set var=call git clone https://github.com/trung/gauge-java-bridge.git ALLPROJECTS/NEW_MAVEN_PROJECTS/trung#gauge-java-bridge
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/trung#gauge-java-bridge 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\trung#gauge-java-bridge\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=trung#gauge-java-bridge -Dsonar.projectVersion=1.0 -Dsonar.projectKey=trung:gauge-java-bridge -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\trung#gauge-java-bridge" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo trung/gauge-java-bridge 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\trung#gauge-java-bridge
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\trung#gauge-java-bridge
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\trung#gauge-java-bridge
 ) 

@echo off 
 set var=call git clone https://github.com/deephacks/streamql.git ALLPROJECTS/NEW_MAVEN_PROJECTS/deephacks#streamql
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/deephacks#streamql 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\deephacks#streamql\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=deephacks#streamql -Dsonar.projectVersion=1.0 -Dsonar.projectKey=deephacks:streamql -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\deephacks#streamql" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo deephacks/streamql 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\deephacks#streamql
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\deephacks#streamql
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\deephacks#streamql
 ) 

@echo off 
 set var=call git clone https://github.com/lettuce-io/lettuce-core.git ALLPROJECTS/NEW_MAVEN_PROJECTS/lettuce-io#lettuce-core
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/lettuce-io#lettuce-core 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\lettuce-io#lettuce-core\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=lettuce-io#lettuce-core -Dsonar.projectVersion=1.0 -Dsonar.projectKey=lettuce-io:lettuce-core -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\lettuce-io#lettuce-core" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo lettuce-io/lettuce-core 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\lettuce-io#lettuce-core
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\lettuce-io#lettuce-core
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\lettuce-io#lettuce-core
 ) 

@echo off 
 set var=call git clone https://github.com/classgraph/classgraph.git ALLPROJECTS/NEW_MAVEN_PROJECTS/classgraph#classgraph
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/classgraph#classgraph 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\classgraph#classgraph\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=classgraph#classgraph -Dsonar.projectVersion=1.0 -Dsonar.projectKey=classgraph:classgraph -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\classgraph#classgraph" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo classgraph/classgraph 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\classgraph#classgraph
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\classgraph#classgraph
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\classgraph#classgraph
 ) 

@echo off 
 set var=call git clone https://github.com/Anil-Adhikari/IMPL.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Anil-Adhikari#IMPL
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Anil-Adhikari#IMPL 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Anil-Adhikari#IMPL\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Anil-Adhikari#IMPL -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Anil-Adhikari:IMPL -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Anil-Adhikari#IMPL" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Anil-Adhikari/IMPL 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Anil-Adhikari#IMPL
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Anil-Adhikari#IMPL
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Anil-Adhikari#IMPL
 ) 

@echo off 
 set var=call git clone https://github.com/codeforamerica/open311_java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/codeforamerica#open311_java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/codeforamerica#open311_java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\codeforamerica#open311_java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=codeforamerica#open311_java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=codeforamerica:open311_java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\codeforamerica#open311_java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo codeforamerica/open311_java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\codeforamerica#open311_java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\codeforamerica#open311_java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\codeforamerica#open311_java
 ) 

@echo off 
 set var=call git clone https://github.com/metamx/bytebuffer-collections.git ALLPROJECTS/NEW_MAVEN_PROJECTS/metamx#bytebuffer-collections
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/metamx#bytebuffer-collections 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\metamx#bytebuffer-collections\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=metamx#bytebuffer-collections -Dsonar.projectVersion=1.0 -Dsonar.projectKey=metamx:bytebuffer-collections -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\metamx#bytebuffer-collections" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo metamx/bytebuffer-collections 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\metamx#bytebuffer-collections
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\metamx#bytebuffer-collections
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\metamx#bytebuffer-collections
 ) 

@echo off 
 set var=call git clone https://github.com/italiangrid/jdl-api-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/italiangrid#jdl-api-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/italiangrid#jdl-api-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\italiangrid#jdl-api-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=italiangrid#jdl-api-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=italiangrid:jdl-api-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\italiangrid#jdl-api-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo italiangrid/jdl-api-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\italiangrid#jdl-api-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\italiangrid#jdl-api-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\italiangrid#jdl-api-java
 ) 

@echo off 
 set var=call git clone https://github.com/mbsambangi/aws-java-spring-cloud-function-demo.git ALLPROJECTS/NEW_MAVEN_PROJECTS/mbsambangi#aws-java-spring-cloud-function-demo
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/mbsambangi#aws-java-spring-cloud-function-demo 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\mbsambangi#aws-java-spring-cloud-function-demo\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=mbsambangi#aws-java-spring-cloud-function-demo -Dsonar.projectVersion=1.0 -Dsonar.projectKey=mbsambangi:aws-java-spring-cloud-function-demo -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\mbsambangi#aws-java-spring-cloud-function-demo" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo mbsambangi/aws-java-spring-cloud-function-demo 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mbsambangi#aws-java-spring-cloud-function-demo
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mbsambangi#aws-java-spring-cloud-function-demo
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mbsambangi#aws-java-spring-cloud-function-demo
 ) 

@echo off 
 set var=call git clone https://github.com/RichardWarburton/Monads-in-Java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/RichardWarburton#Monads-in-Java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/RichardWarburton#Monads-in-Java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\RichardWarburton#Monads-in-Java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=RichardWarburton#Monads-in-Java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=RichardWarburton:Monads-in-Java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\RichardWarburton#Monads-in-Java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo RichardWarburton/Monads-in-Java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\RichardWarburton#Monads-in-Java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\RichardWarburton#Monads-in-Java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\RichardWarburton#Monads-in-Java
 ) 

@echo off 
 set var=call git clone https://github.com/amaembo/streamex.git ALLPROJECTS/NEW_MAVEN_PROJECTS/amaembo#streamex
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/amaembo#streamex 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\amaembo#streamex\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=amaembo#streamex -Dsonar.projectVersion=1.0 -Dsonar.projectKey=amaembo:streamex -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\amaembo#streamex" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo amaembo/streamex 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\amaembo#streamex
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\amaembo#streamex
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\amaembo#streamex
 ) 

@echo off 
 set var=call git clone https://github.com/jelly-liu/NettyAuthorityServerDiscovery.git ALLPROJECTS/NEW_MAVEN_PROJECTS/jelly-liu#NettyAuthorityServerDiscovery
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/jelly-liu#NettyAuthorityServerDiscovery 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\jelly-liu#NettyAuthorityServerDiscovery\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=jelly-liu#NettyAuthorityServerDiscovery -Dsonar.projectVersion=1.0 -Dsonar.projectKey=jelly-liu:NettyAuthorityServerDiscovery -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\jelly-liu#NettyAuthorityServerDiscovery" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo jelly-liu/NettyAuthorityServerDiscovery 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jelly-liu#NettyAuthorityServerDiscovery
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jelly-liu#NettyAuthorityServerDiscovery
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jelly-liu#NettyAuthorityServerDiscovery
 ) 

@echo off 
 set var=call git clone https://github.com/NLPchina/ansj_seg.git ALLPROJECTS/NEW_MAVEN_PROJECTS/NLPchina#ansj_seg
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/NLPchina#ansj_seg 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\NLPchina#ansj_seg\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=NLPchina#ansj_seg -Dsonar.projectVersion=1.0 -Dsonar.projectKey=NLPchina:ansj_seg -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\NLPchina#ansj_seg" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo NLPchina/ansj_seg 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\NLPchina#ansj_seg
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\NLPchina#ansj_seg
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\NLPchina#ansj_seg
 ) 

@echo off 
 set var=call git clone https://github.com/timabilov/irequest.git ALLPROJECTS/NEW_MAVEN_PROJECTS/timabilov#irequest
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/timabilov#irequest 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\timabilov#irequest\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=timabilov#irequest -Dsonar.projectVersion=1.0 -Dsonar.projectKey=timabilov:irequest -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\timabilov#irequest" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo timabilov/irequest 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\timabilov#irequest
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\timabilov#irequest
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\timabilov#irequest
 ) 

@echo off 
 set var=call git clone https://github.com/brettwooldridge/HikariCP.git ALLPROJECTS/NEW_MAVEN_PROJECTS/brettwooldridge#HikariCP
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/brettwooldridge#HikariCP 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\brettwooldridge#HikariCP\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=brettwooldridge#HikariCP -Dsonar.projectVersion=1.0 -Dsonar.projectKey=brettwooldridge:HikariCP -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\brettwooldridge#HikariCP" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo brettwooldridge/HikariCP 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\brettwooldridge#HikariCP
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\brettwooldridge#HikariCP
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\brettwooldridge#HikariCP
 ) 

@echo off 
 set var=call git clone https://github.com/LEMS/jLEMS.git ALLPROJECTS/NEW_MAVEN_PROJECTS/LEMS#jLEMS
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/LEMS#jLEMS 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\LEMS#jLEMS\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=LEMS#jLEMS -Dsonar.projectVersion=1.0 -Dsonar.projectKey=LEMS:jLEMS -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\LEMS#jLEMS" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo LEMS/jLEMS 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\LEMS#jLEMS
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\LEMS#jLEMS
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\LEMS#jLEMS
 ) 

@echo off 
 set var=call git clone https://github.com/tobykurien/Sparkler.git ALLPROJECTS/NEW_MAVEN_PROJECTS/tobykurien#Sparkler
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/tobykurien#Sparkler 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\tobykurien#Sparkler\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=tobykurien#Sparkler -Dsonar.projectVersion=1.0 -Dsonar.projectKey=tobykurien:Sparkler -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\tobykurien#Sparkler" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo tobykurien/Sparkler 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tobykurien#Sparkler
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tobykurien#Sparkler
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tobykurien#Sparkler
 ) 

@echo off 
 set var=call git clone https://github.com/aikar/locales.git ALLPROJECTS/NEW_MAVEN_PROJECTS/aikar#locales
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/aikar#locales 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\aikar#locales\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=aikar#locales -Dsonar.projectVersion=1.0 -Dsonar.projectKey=aikar:locales -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\aikar#locales" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo aikar/locales 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\aikar#locales
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\aikar#locales
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\aikar#locales
 ) 

@echo off 
 set var=call git clone https://github.com/Sparen/Spn-LangAgent.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Sparen#Spn-LangAgent
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Sparen#Spn-LangAgent 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Sparen#Spn-LangAgent\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Sparen#Spn-LangAgent -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Sparen:Spn-LangAgent -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Sparen#Spn-LangAgent" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Sparen/Spn-LangAgent 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Sparen#Spn-LangAgent
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Sparen#Spn-LangAgent
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Sparen#Spn-LangAgent
 ) 

@echo off 
 set var=call git clone https://github.com/yaphone/itchat4j.git ALLPROJECTS/NEW_MAVEN_PROJECTS/yaphone#itchat4j
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/yaphone#itchat4j 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\yaphone#itchat4j\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=yaphone#itchat4j -Dsonar.projectVersion=1.0 -Dsonar.projectKey=yaphone:itchat4j -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\yaphone#itchat4j" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo yaphone/itchat4j 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\yaphone#itchat4j
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\yaphone#itchat4j
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\yaphone#itchat4j
 ) 

@echo off 
 set var=call git clone https://github.com/h2oai/h2o-2.git ALLPROJECTS/NEW_MAVEN_PROJECTS/h2oai#h2o-2
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/h2oai#h2o-2 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\h2oai#h2o-2\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=h2oai#h2o-2 -Dsonar.projectVersion=1.0 -Dsonar.projectKey=h2oai:h2o-2 -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\h2oai#h2o-2" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo h2oai/h2o-2 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\h2oai#h2o-2
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\h2oai#h2o-2
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\h2oai#h2o-2
 ) 

@echo off 
 set var=call git clone https://github.com/klangner/ast-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/klangner#ast-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/klangner#ast-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\klangner#ast-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=klangner#ast-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=klangner:ast-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\klangner#ast-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo klangner/ast-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\klangner#ast-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\klangner#ast-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\klangner#ast-java
 ) 

@echo off 
 set var=call git clone https://github.com/rapid7/le_java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/rapid7#le_java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/rapid7#le_java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\rapid7#le_java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=rapid7#le_java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=rapid7:le_java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\rapid7#le_java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo rapid7/le_java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rapid7#le_java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rapid7#le_java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rapid7#le_java
 ) 

@echo off 
 set var=call git clone https://github.com/dmitry-izmerov/javaexamples.git ALLPROJECTS/NEW_MAVEN_PROJECTS/dmitry-izmerov#javaexamples
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/dmitry-izmerov#javaexamples 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\dmitry-izmerov#javaexamples\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=dmitry-izmerov#javaexamples -Dsonar.projectVersion=1.0 -Dsonar.projectKey=dmitry-izmerov:javaexamples -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\dmitry-izmerov#javaexamples" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo dmitry-izmerov/javaexamples 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\dmitry-izmerov#javaexamples
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\dmitry-izmerov#javaexamples
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\dmitry-izmerov#javaexamples
 ) 

@echo off 
 set var=call git clone https://github.com/TooTallNate/Java-WebSocket.git ALLPROJECTS/NEW_MAVEN_PROJECTS/TooTallNate#Java-WebSocket
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/TooTallNate#Java-WebSocket 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\TooTallNate#Java-WebSocket\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=TooTallNate#Java-WebSocket -Dsonar.projectVersion=1.0 -Dsonar.projectKey=TooTallNate:Java-WebSocket -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\TooTallNate#Java-WebSocket" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo TooTallNate/Java-WebSocket 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\TooTallNate#Java-WebSocket
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\TooTallNate#Java-WebSocket
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\TooTallNate#Java-WebSocket
 ) 

@echo off 
 set var=call git clone https://github.com/tf-bao/SemanticCutter.git ALLPROJECTS/NEW_MAVEN_PROJECTS/tf-bao#SemanticCutter
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/tf-bao#SemanticCutter 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\tf-bao#SemanticCutter\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=tf-bao#SemanticCutter -Dsonar.projectVersion=1.0 -Dsonar.projectKey=tf-bao:SemanticCutter -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\tf-bao#SemanticCutter" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo tf-bao/SemanticCutter 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tf-bao#SemanticCutter
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tf-bao#SemanticCutter
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tf-bao#SemanticCutter
 ) 

@echo off 
 set var=call git clone https://github.com/cbarbat/Mathematica-Parser.git ALLPROJECTS/NEW_MAVEN_PROJECTS/cbarbat#Mathematica-Parser
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/cbarbat#Mathematica-Parser 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\cbarbat#Mathematica-Parser\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=cbarbat#Mathematica-Parser -Dsonar.projectVersion=1.0 -Dsonar.projectKey=cbarbat:Mathematica-Parser -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\cbarbat#Mathematica-Parser" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo cbarbat/Mathematica-Parser 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\cbarbat#Mathematica-Parser
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\cbarbat#Mathematica-Parser
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\cbarbat#Mathematica-Parser
 ) 

@echo off 
 set var=call git clone https://github.com/HdrHistogram/HdrHistogram.git ALLPROJECTS/NEW_MAVEN_PROJECTS/HdrHistogram#HdrHistogram
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/HdrHistogram#HdrHistogram 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\HdrHistogram#HdrHistogram\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=HdrHistogram#HdrHistogram -Dsonar.projectVersion=1.0 -Dsonar.projectKey=HdrHistogram:HdrHistogram -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\HdrHistogram#HdrHistogram" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo HdrHistogram/HdrHistogram 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\HdrHistogram#HdrHistogram
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\HdrHistogram#HdrHistogram
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\HdrHistogram#HdrHistogram
 ) 

@echo off 
 set var=call git clone https://github.com/incubos/ev3dev-lang-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/incubos#ev3dev-lang-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/incubos#ev3dev-lang-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\incubos#ev3dev-lang-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=incubos#ev3dev-lang-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=incubos:ev3dev-lang-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\incubos#ev3dev-lang-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo incubos/ev3dev-lang-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\incubos#ev3dev-lang-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\incubos#ev3dev-lang-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\incubos#ev3dev-lang-java
 ) 

@echo off 
 set var=call git clone https://github.com/jonathanhds/sql-builder.git ALLPROJECTS/NEW_MAVEN_PROJECTS/jonathanhds#sql-builder
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/jonathanhds#sql-builder 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\jonathanhds#sql-builder\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=jonathanhds#sql-builder -Dsonar.projectVersion=1.0 -Dsonar.projectKey=jonathanhds:sql-builder -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\jonathanhds#sql-builder" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo jonathanhds/sql-builder 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jonathanhds#sql-builder
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jonathanhds#sql-builder
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jonathanhds#sql-builder
 ) 

@echo off 
 set var=call git clone https://github.com/anod/TaxiStation.git ALLPROJECTS/NEW_MAVEN_PROJECTS/anod#TaxiStation
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/anod#TaxiStation 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\anod#TaxiStation\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=anod#TaxiStation -Dsonar.projectVersion=1.0 -Dsonar.projectKey=anod:TaxiStation -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\anod#TaxiStation" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo anod/TaxiStation 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\anod#TaxiStation
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\anod#TaxiStation
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\anod#TaxiStation
 ) 

@echo off 
 set var=call git clone https://github.com/samtingleff/jchronic.git ALLPROJECTS/NEW_MAVEN_PROJECTS/samtingleff#jchronic
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/samtingleff#jchronic 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\samtingleff#jchronic\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=samtingleff#jchronic -Dsonar.projectVersion=1.0 -Dsonar.projectKey=samtingleff:jchronic -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\samtingleff#jchronic" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo samtingleff/jchronic 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\samtingleff#jchronic
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\samtingleff#jchronic
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\samtingleff#jchronic
 ) 

@echo off 
 set var=call git clone https://github.com/snksoft/java-crc.git ALLPROJECTS/NEW_MAVEN_PROJECTS/snksoft#java-crc
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/snksoft#java-crc 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\snksoft#java-crc\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=snksoft#java-crc -Dsonar.projectVersion=1.0 -Dsonar.projectKey=snksoft:java-crc -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\snksoft#java-crc" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo snksoft/java-crc 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\snksoft#java-crc
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\snksoft#java-crc
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\snksoft#java-crc
 ) 

@echo off 
 set var=call git clone https://github.com/SYSTRAN/nlp-api-java-client.git ALLPROJECTS/NEW_MAVEN_PROJECTS/SYSTRAN#nlp-api-java-client
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/SYSTRAN#nlp-api-java-client 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\SYSTRAN#nlp-api-java-client\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=SYSTRAN#nlp-api-java-client -Dsonar.projectVersion=1.0 -Dsonar.projectKey=SYSTRAN:nlp-api-java-client -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\SYSTRAN#nlp-api-java-client" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo SYSTRAN/nlp-api-java-client 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\SYSTRAN#nlp-api-java-client
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\SYSTRAN#nlp-api-java-client
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\SYSTRAN#nlp-api-java-client
 ) 

@echo off 
 set var=call git clone https://github.com/gerryai/pddl-parser.git ALLPROJECTS/NEW_MAVEN_PROJECTS/gerryai#pddl-parser
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/gerryai#pddl-parser 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\gerryai#pddl-parser\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=gerryai#pddl-parser -Dsonar.projectVersion=1.0 -Dsonar.projectKey=gerryai:pddl-parser -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\gerryai#pddl-parser" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo gerryai/pddl-parser 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\gerryai#pddl-parser
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\gerryai#pddl-parser
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\gerryai#pddl-parser
 ) 

@echo off 
 set var=call git clone https://github.com/citiususc/SimpleNLG-ES.git ALLPROJECTS/NEW_MAVEN_PROJECTS/citiususc#SimpleNLG-ES
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/citiususc#SimpleNLG-ES 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\citiususc#SimpleNLG-ES\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=citiususc#SimpleNLG-ES -Dsonar.projectVersion=1.0 -Dsonar.projectKey=citiususc:SimpleNLG-ES -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\citiususc#SimpleNLG-ES" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo citiususc/SimpleNLG-ES 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\citiususc#SimpleNLG-ES
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\citiususc#SimpleNLG-ES
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\citiususc#SimpleNLG-ES
 ) 

@echo off 
 set var=call git clone https://github.com/vlingo/vlingo-actors.git ALLPROJECTS/NEW_MAVEN_PROJECTS/vlingo#vlingo-actors
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/vlingo#vlingo-actors 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\vlingo#vlingo-actors\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=vlingo#vlingo-actors -Dsonar.projectVersion=1.0 -Dsonar.projectKey=vlingo:vlingo-actors -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\vlingo#vlingo-actors" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo vlingo/vlingo-actors 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vlingo#vlingo-actors
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vlingo#vlingo-actors
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\vlingo#vlingo-actors
 ) 

@echo off 
 set var=call git clone https://github.com/riversun/JavaCommentTranslator.git ALLPROJECTS/NEW_MAVEN_PROJECTS/riversun#JavaCommentTranslator
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/riversun#JavaCommentTranslator 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\riversun#JavaCommentTranslator\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=riversun#JavaCommentTranslator -Dsonar.projectVersion=1.0 -Dsonar.projectKey=riversun:JavaCommentTranslator -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\riversun#JavaCommentTranslator" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo riversun/JavaCommentTranslator 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\riversun#JavaCommentTranslator
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\riversun#JavaCommentTranslator
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\riversun#JavaCommentTranslator
 ) 

@echo off 
 set var=call git clone https://github.com/igapyon/blancoApexFormatter.git ALLPROJECTS/NEW_MAVEN_PROJECTS/igapyon#blancoApexFormatter
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/igapyon#blancoApexFormatter 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\igapyon#blancoApexFormatter\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=igapyon#blancoApexFormatter -Dsonar.projectVersion=1.0 -Dsonar.projectKey=igapyon:blancoApexFormatter -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\igapyon#blancoApexFormatter" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo igapyon/blancoApexFormatter 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\igapyon#blancoApexFormatter
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\igapyon#blancoApexFormatter
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\igapyon#blancoApexFormatter
 ) 

@echo off 
 set var=call git clone https://github.com/automate-website/waml-io.git ALLPROJECTS/NEW_MAVEN_PROJECTS/automate-website#waml-io
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/automate-website#waml-io 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\automate-website#waml-io\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=automate-website#waml-io -Dsonar.projectVersion=1.0 -Dsonar.projectKey=automate-website:waml-io -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\automate-website#waml-io" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo automate-website/waml-io 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\automate-website#waml-io
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\automate-website#waml-io
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\automate-website#waml-io
 ) 

@echo off 
 set var=call git clone https://github.com/seaswalker/spring-analysis.git ALLPROJECTS/NEW_MAVEN_PROJECTS/seaswalker#spring-analysis
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/seaswalker#spring-analysis 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\seaswalker#spring-analysis\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=seaswalker#spring-analysis -Dsonar.projectVersion=1.0 -Dsonar.projectKey=seaswalker:spring-analysis -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\seaswalker#spring-analysis" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo seaswalker/spring-analysis 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\seaswalker#spring-analysis
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\seaswalker#spring-analysis
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\seaswalker#spring-analysis
 ) 

@echo off 
 set var=call git clone https://github.com/Saolga/DZ3.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Saolga#DZ3
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Saolga#DZ3 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Saolga#DZ3\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Saolga#DZ3 -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Saolga:DZ3 -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Saolga#DZ3" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Saolga/DZ3 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Saolga#DZ3
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Saolga#DZ3
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Saolga#DZ3
 ) 

@echo off 
 set var=call git clone https://github.com/KellenSunderland/KenLMJava.git ALLPROJECTS/NEW_MAVEN_PROJECTS/KellenSunderland#KenLMJava
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/KellenSunderland#KenLMJava 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\KellenSunderland#KenLMJava\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=KellenSunderland#KenLMJava -Dsonar.projectVersion=1.0 -Dsonar.projectKey=KellenSunderland:KenLMJava -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\KellenSunderland#KenLMJava" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo KellenSunderland/KenLMJava 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\KellenSunderland#KenLMJava
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\KellenSunderland#KenLMJava
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\KellenSunderland#KenLMJava
 ) 

@echo off 
 set var=call git clone https://github.com/apilayer/restcountries.git ALLPROJECTS/NEW_MAVEN_PROJECTS/apilayer#restcountries
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/apilayer#restcountries 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\apilayer#restcountries\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=apilayer#restcountries -Dsonar.projectVersion=1.0 -Dsonar.projectKey=apilayer:restcountries -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\apilayer#restcountries" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo apilayer/restcountries 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\apilayer#restcountries
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\apilayer#restcountries
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\apilayer#restcountries
 ) 

@echo off 
 set var=call git clone https://github.com/librato/librato-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/librato#librato-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/librato#librato-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\librato#librato-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=librato#librato-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=librato:librato-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\librato#librato-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo librato/librato-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\librato#librato-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\librato#librato-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\librato#librato-java
 ) 

@echo off 
 set var=call git clone https://github.com/IsaacChanghau/LeetCode.git ALLPROJECTS/NEW_MAVEN_PROJECTS/IsaacChanghau#LeetCode
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/IsaacChanghau#LeetCode 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\IsaacChanghau#LeetCode\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=IsaacChanghau#LeetCode -Dsonar.projectVersion=1.0 -Dsonar.projectKey=IsaacChanghau:LeetCode -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\IsaacChanghau#LeetCode" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo IsaacChanghau/LeetCode 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\IsaacChanghau#LeetCode
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\IsaacChanghau#LeetCode
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\IsaacChanghau#LeetCode
 ) 

@echo off 
 set var=call git clone https://github.com/zouzg/mybatis-generator-gui.git ALLPROJECTS/NEW_MAVEN_PROJECTS/zouzg#mybatis-generator-gui
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/zouzg#mybatis-generator-gui 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\zouzg#mybatis-generator-gui\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=zouzg#mybatis-generator-gui -Dsonar.projectVersion=1.0 -Dsonar.projectKey=zouzg:mybatis-generator-gui -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\zouzg#mybatis-generator-gui" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo zouzg/mybatis-generator-gui 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\zouzg#mybatis-generator-gui
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\zouzg#mybatis-generator-gui
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\zouzg#mybatis-generator-gui
 ) 

@echo off 
 set var=call git clone https://github.com/Athou/commafeed.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Athou#commafeed
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Athou#commafeed 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Athou#commafeed\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Athou#commafeed -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Athou:commafeed -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Athou#commafeed" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Athou/commafeed 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Athou#commafeed
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Athou#commafeed
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Athou#commafeed
 ) 

@echo off 
 set var=call git clone https://github.com/nytta/cobia.git ALLPROJECTS/NEW_MAVEN_PROJECTS/nytta#cobia
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/nytta#cobia 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\nytta#cobia\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=nytta#cobia -Dsonar.projectVersion=1.0 -Dsonar.projectKey=nytta:cobia -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\nytta#cobia" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo nytta/cobia 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\nytta#cobia
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\nytta#cobia
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\nytta#cobia
 ) 

@echo off 
 set var=call git clone https://github.com/hengxin/learning-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/hengxin#learning-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/hengxin#learning-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\hengxin#learning-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=hengxin#learning-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=hengxin:learning-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\hengxin#learning-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo hengxin/learning-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hengxin#learning-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hengxin#learning-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hengxin#learning-java
 ) 

@echo off 
 set var=call git clone https://github.com/agentgt/jatl.git ALLPROJECTS/NEW_MAVEN_PROJECTS/agentgt#jatl
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/agentgt#jatl 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\agentgt#jatl\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=agentgt#jatl -Dsonar.projectVersion=1.0 -Dsonar.projectKey=agentgt:jatl -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\agentgt#jatl" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo agentgt/jatl 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\agentgt#jatl
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\agentgt#jatl
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\agentgt#jatl
 ) 

@echo off 
 set var=call git clone https://github.com/xuhuisheng/lemon.git ALLPROJECTS/NEW_MAVEN_PROJECTS/xuhuisheng#lemon
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/xuhuisheng#lemon 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\xuhuisheng#lemon\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=xuhuisheng#lemon -Dsonar.projectVersion=1.0 -Dsonar.projectKey=xuhuisheng:lemon -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\xuhuisheng#lemon" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo xuhuisheng/lemon 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xuhuisheng#lemon
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xuhuisheng#lemon
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xuhuisheng#lemon
 ) 

@echo off 
 set var=call git clone https://github.com/rpsl4j/rpsl4j-parser.git ALLPROJECTS/NEW_MAVEN_PROJECTS/rpsl4j#rpsl4j-parser
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/rpsl4j#rpsl4j-parser 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\rpsl4j#rpsl4j-parser\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=rpsl4j#rpsl4j-parser -Dsonar.projectVersion=1.0 -Dsonar.projectKey=rpsl4j:rpsl4j-parser -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\rpsl4j#rpsl4j-parser" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo rpsl4j/rpsl4j-parser 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rpsl4j#rpsl4j-parser
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rpsl4j#rpsl4j-parser
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rpsl4j#rpsl4j-parser
 ) 

@echo off 
 set var=call git clone https://github.com/skurski/antlr-java2c-translator.git ALLPROJECTS/NEW_MAVEN_PROJECTS/skurski#antlr-java2c-translator
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/skurski#antlr-java2c-translator 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\skurski#antlr-java2c-translator\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=skurski#antlr-java2c-translator -Dsonar.projectVersion=1.0 -Dsonar.projectKey=skurski:antlr-java2c-translator -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\skurski#antlr-java2c-translator" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo skurski/antlr-java2c-translator 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\skurski#antlr-java2c-translator
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\skurski#antlr-java2c-translator
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\skurski#antlr-java2c-translator
 ) 

@echo off 
 set var=call git clone https://github.com/chaitanyajun12/java-features.git ALLPROJECTS/NEW_MAVEN_PROJECTS/chaitanyajun12#java-features
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/chaitanyajun12#java-features 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\chaitanyajun12#java-features\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=chaitanyajun12#java-features -Dsonar.projectVersion=1.0 -Dsonar.projectKey=chaitanyajun12:java-features -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\chaitanyajun12#java-features" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo chaitanyajun12/java-features 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\chaitanyajun12#java-features
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\chaitanyajun12#java-features
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\chaitanyajun12#java-features
 ) 

@echo off 
 set var=call git clone https://github.com/OpenHFT/Chronicle-Map.git ALLPROJECTS/NEW_MAVEN_PROJECTS/OpenHFT#Chronicle-Map
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/OpenHFT#Chronicle-Map 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\OpenHFT#Chronicle-Map\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=OpenHFT#Chronicle-Map -Dsonar.projectVersion=1.0 -Dsonar.projectKey=OpenHFT:Chronicle-Map -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\OpenHFT#Chronicle-Map" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo OpenHFT/Chronicle-Map 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\OpenHFT#Chronicle-Map
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\OpenHFT#Chronicle-Map
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\OpenHFT#Chronicle-Map
 ) 

@echo off 
 set var=call git clone https://github.com/lets-blade/blade.git ALLPROJECTS/NEW_MAVEN_PROJECTS/lets-blade#blade
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/lets-blade#blade 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\lets-blade#blade\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=lets-blade#blade -Dsonar.projectVersion=1.0 -Dsonar.projectKey=lets-blade:blade -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\lets-blade#blade" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo lets-blade/blade 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\lets-blade#blade
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\lets-blade#blade
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\lets-blade#blade
 ) 

@echo off 
 set var=call git clone https://github.com/tozzr/graphql-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/tozzr#graphql-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/tozzr#graphql-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\tozzr#graphql-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=tozzr#graphql-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=tozzr:graphql-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\tozzr#graphql-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo tozzr/graphql-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tozzr#graphql-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tozzr#graphql-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tozzr#graphql-java
 ) 

@echo off 
 set var=call git clone https://github.com/tasubo/maven-jasmin-plugin.git ALLPROJECTS/NEW_MAVEN_PROJECTS/tasubo#maven-jasmin-plugin
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/tasubo#maven-jasmin-plugin 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\tasubo#maven-jasmin-plugin\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=tasubo#maven-jasmin-plugin -Dsonar.projectVersion=1.0 -Dsonar.projectKey=tasubo:maven-jasmin-plugin -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\tasubo#maven-jasmin-plugin" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo tasubo/maven-jasmin-plugin 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tasubo#maven-jasmin-plugin
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tasubo#maven-jasmin-plugin
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\tasubo#maven-jasmin-plugin
 ) 

@echo off 
 set var=call git clone https://github.com/xmlet/HtmlApi.git ALLPROJECTS/NEW_MAVEN_PROJECTS/xmlet#HtmlApi
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/xmlet#HtmlApi 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\xmlet#HtmlApi\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=xmlet#HtmlApi -Dsonar.projectVersion=1.0 -Dsonar.projectKey=xmlet:HtmlApi -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\xmlet#HtmlApi" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo xmlet/HtmlApi 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xmlet#HtmlApi
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xmlet#HtmlApi
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xmlet#HtmlApi
 ) 

@echo off 
 set var=call git clone https://github.com/joestelmach/natty.git ALLPROJECTS/NEW_MAVEN_PROJECTS/joestelmach#natty
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/joestelmach#natty 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\joestelmach#natty\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=joestelmach#natty -Dsonar.projectVersion=1.0 -Dsonar.projectKey=joestelmach:natty -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\joestelmach#natty" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo joestelmach/natty 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\joestelmach#natty
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\joestelmach#natty
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\joestelmach#natty
 ) 

@echo off 
 set var=call git clone https://github.com/BoulCheng/JLS.git ALLPROJECTS/NEW_MAVEN_PROJECTS/BoulCheng#JLS
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/BoulCheng#JLS 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\BoulCheng#JLS\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=BoulCheng#JLS -Dsonar.projectVersion=1.0 -Dsonar.projectKey=BoulCheng:JLS -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\BoulCheng#JLS" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo BoulCheng/JLS 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\BoulCheng#JLS
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\BoulCheng#JLS
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\BoulCheng#JLS
 ) 

@echo off 
 set var=call git clone https://github.com/kangyonggan/jcel.git ALLPROJECTS/NEW_MAVEN_PROJECTS/kangyonggan#jcel
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/kangyonggan#jcel 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\kangyonggan#jcel\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=kangyonggan#jcel -Dsonar.projectVersion=1.0 -Dsonar.projectKey=kangyonggan:jcel -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\kangyonggan#jcel" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo kangyonggan/jcel 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\kangyonggan#jcel
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\kangyonggan#jcel
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\kangyonggan#jcel
 ) 

@echo off 
 set var=call git clone https://github.com/kevin-wayne/algs4.git ALLPROJECTS/NEW_MAVEN_PROJECTS/kevin-wayne#algs4
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/kevin-wayne#algs4 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\kevin-wayne#algs4\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=kevin-wayne#algs4 -Dsonar.projectVersion=1.0 -Dsonar.projectKey=kevin-wayne:algs4 -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\kevin-wayne#algs4" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo kevin-wayne/algs4 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\kevin-wayne#algs4
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\kevin-wayne#algs4
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\kevin-wayne#algs4
 ) 

@echo off 
 set var=call git clone https://github.com/alexeygrigorev/JLP.git ALLPROJECTS/NEW_MAVEN_PROJECTS/alexeygrigorev#JLP
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/alexeygrigorev#JLP 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\alexeygrigorev#JLP\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=alexeygrigorev#JLP -Dsonar.projectVersion=1.0 -Dsonar.projectKey=alexeygrigorev:JLP -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\alexeygrigorev#JLP" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo alexeygrigorev/JLP 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alexeygrigorev#JLP
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alexeygrigorev#JLP
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alexeygrigorev#JLP
 ) 

@echo off 
 set var=call git clone https://github.com/julianhyde/linq4j.git ALLPROJECTS/NEW_MAVEN_PROJECTS/julianhyde#linq4j
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/julianhyde#linq4j 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\julianhyde#linq4j\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=julianhyde#linq4j -Dsonar.projectVersion=1.0 -Dsonar.projectKey=julianhyde:linq4j -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\julianhyde#linq4j" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo julianhyde/linq4j 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\julianhyde#linq4j
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\julianhyde#linq4j
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\julianhyde#linq4j
 ) 

@echo off 
 set var=call git clone https://github.com/Pwn9/PwnFilter.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Pwn9#PwnFilter
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Pwn9#PwnFilter 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Pwn9#PwnFilter\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Pwn9#PwnFilter -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Pwn9:PwnFilter -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Pwn9#PwnFilter" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Pwn9/PwnFilter 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Pwn9#PwnFilter
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Pwn9#PwnFilter
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Pwn9#PwnFilter
 ) 

@echo off 
 set var=call git clone https://github.com/shred/jinn.git ALLPROJECTS/NEW_MAVEN_PROJECTS/shred#jinn
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/shred#jinn 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\shred#jinn\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=shred#jinn -Dsonar.projectVersion=1.0 -Dsonar.projectKey=shred:jinn -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\shred#jinn" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo shred/jinn 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\shred#jinn
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\shred#jinn
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\shred#jinn
 ) 

@echo off 
 set var=call git clone https://github.com/VivekRagunathan/JINQ.git ALLPROJECTS/NEW_MAVEN_PROJECTS/VivekRagunathan#JINQ
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/VivekRagunathan#JINQ 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\VivekRagunathan#JINQ\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=VivekRagunathan#JINQ -Dsonar.projectVersion=1.0 -Dsonar.projectKey=VivekRagunathan:JINQ -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\VivekRagunathan#JINQ" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo VivekRagunathan/JINQ 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\VivekRagunathan#JINQ
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\VivekRagunathan#JINQ
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\VivekRagunathan#JINQ
 ) 

@echo off 
 set var=call git clone https://github.com/hankcs/HanLP.git ALLPROJECTS/NEW_MAVEN_PROJECTS/hankcs#HanLP
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/hankcs#HanLP 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\hankcs#HanLP\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=hankcs#HanLP -Dsonar.projectVersion=1.0 -Dsonar.projectKey=hankcs:HanLP -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\hankcs#HanLP" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo hankcs/HanLP 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hankcs#HanLP
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hankcs#HanLP
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\hankcs#HanLP
 ) 

@echo off 
 set var=call git clone https://github.com/brunoribeiro/sql-parser.git ALLPROJECTS/NEW_MAVEN_PROJECTS/brunoribeiro#sql-parser
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/brunoribeiro#sql-parser 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\brunoribeiro#sql-parser\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=brunoribeiro#sql-parser -Dsonar.projectVersion=1.0 -Dsonar.projectKey=brunoribeiro:sql-parser -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\brunoribeiro#sql-parser" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo brunoribeiro/sql-parser 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\brunoribeiro#sql-parser
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\brunoribeiro#sql-parser
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\brunoribeiro#sql-parser
 ) 

@echo off 
 set var=call git clone https://github.com/alexismeneses/language-detection.git ALLPROJECTS/NEW_MAVEN_PROJECTS/alexismeneses#language-detection
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/alexismeneses#language-detection 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\alexismeneses#language-detection\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=alexismeneses#language-detection -Dsonar.projectVersion=1.0 -Dsonar.projectKey=alexismeneses:language-detection -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\alexismeneses#language-detection" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo alexismeneses/language-detection 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alexismeneses#language-detection
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alexismeneses#language-detection
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alexismeneses#language-detection
 ) 

@echo off 
 set var=call git clone https://github.com/docker-java/docker-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/docker-java#docker-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/docker-java#docker-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\docker-java#docker-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=docker-java#docker-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=docker-java:docker-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\docker-java#docker-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo docker-java/docker-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\docker-java#docker-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\docker-java#docker-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\docker-java#docker-java
 ) 

@echo off 
 set var=call git clone https://github.com/FINRAOS/JTAF-XCore.git ALLPROJECTS/NEW_MAVEN_PROJECTS/FINRAOS#JTAF-XCore
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/FINRAOS#JTAF-XCore 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\FINRAOS#JTAF-XCore\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=FINRAOS#JTAF-XCore -Dsonar.projectVersion=1.0 -Dsonar.projectKey=FINRAOS:JTAF-XCore -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\FINRAOS#JTAF-XCore" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo FINRAOS/JTAF-XCore 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\FINRAOS#JTAF-XCore
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\FINRAOS#JTAF-XCore
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\FINRAOS#JTAF-XCore
 ) 

@echo off 
 set var=call git clone https://github.com/simplenlg/simplenlg.git ALLPROJECTS/NEW_MAVEN_PROJECTS/simplenlg#simplenlg
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/simplenlg#simplenlg 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\simplenlg#simplenlg\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=simplenlg#simplenlg -Dsonar.projectVersion=1.0 -Dsonar.projectKey=simplenlg:simplenlg -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\simplenlg#simplenlg" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo simplenlg/simplenlg 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\simplenlg#simplenlg
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\simplenlg#simplenlg
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\simplenlg#simplenlg
 ) 

@echo off 
 set var=call git clone https://github.com/iTransformers/expect4java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/iTransformers#expect4java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/iTransformers#expect4java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\iTransformers#expect4java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=iTransformers#expect4java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=iTransformers:expect4java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\iTransformers#expect4java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo iTransformers/expect4java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\iTransformers#expect4java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\iTransformers#expect4java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\iTransformers#expect4java
 ) 

@echo off 
 set var=call git clone https://github.com/eclipse-vertx/vert.x.git ALLPROJECTS/NEW_MAVEN_PROJECTS/eclipse-vertx#vert.x
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/eclipse-vertx#vert.x 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\eclipse-vertx#vert.x\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=eclipse-vertx#vert.x -Dsonar.projectVersion=1.0 -Dsonar.projectKey=eclipse-vertx:vert.x -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\eclipse-vertx#vert.x" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo eclipse-vertx/vert.x 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\eclipse-vertx#vert.x
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\eclipse-vertx#vert.x
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\eclipse-vertx#vert.x
 ) 

@echo off 
 set var=call git clone https://github.com/opentripplanner/OpenTripPlanner.git ALLPROJECTS/NEW_MAVEN_PROJECTS/opentripplanner#OpenTripPlanner
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/opentripplanner#OpenTripPlanner 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\opentripplanner#OpenTripPlanner\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=opentripplanner#OpenTripPlanner -Dsonar.projectVersion=1.0 -Dsonar.projectKey=opentripplanner:OpenTripPlanner -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\opentripplanner#OpenTripPlanner" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo opentripplanner/OpenTripPlanner 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\opentripplanner#OpenTripPlanner
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\opentripplanner#OpenTripPlanner
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\opentripplanner#OpenTripPlanner
 ) 

@echo off 
 set var=call git clone https://github.com/dvare/dvare-framework.git ALLPROJECTS/NEW_MAVEN_PROJECTS/dvare#dvare-framework
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/dvare#dvare-framework 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\dvare#dvare-framework\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=dvare#dvare-framework -Dsonar.projectVersion=1.0 -Dsonar.projectKey=dvare:dvare-framework -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\dvare#dvare-framework" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo dvare/dvare-framework 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\dvare#dvare-framework
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\dvare#dvare-framework
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\dvare#dvare-framework
 ) 

@echo off 
 set var=call git clone https://github.com/jfinal/jfinal.git ALLPROJECTS/NEW_MAVEN_PROJECTS/jfinal#jfinal
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/jfinal#jfinal 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\jfinal#jfinal\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=jfinal#jfinal -Dsonar.projectVersion=1.0 -Dsonar.projectKey=jfinal:jfinal -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\jfinal#jfinal" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo jfinal/jfinal 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jfinal#jfinal
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jfinal#jfinal
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jfinal#jfinal
 ) 

@echo off 
 set var=call git clone https://github.com/monkeylearn/monkeylearn-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/monkeylearn#monkeylearn-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/monkeylearn#monkeylearn-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\monkeylearn#monkeylearn-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=monkeylearn#monkeylearn-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=monkeylearn:monkeylearn-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\monkeylearn#monkeylearn-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo monkeylearn/monkeylearn-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\monkeylearn#monkeylearn-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\monkeylearn#monkeylearn-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\monkeylearn#monkeylearn-java
 ) 

@echo off 
 set var=call git clone https://github.com/SpringForAll/spring-boot-starter-swagger.git ALLPROJECTS/NEW_MAVEN_PROJECTS/SpringForAll#spring-boot-starter-swagger
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/SpringForAll#spring-boot-starter-swagger 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\SpringForAll#spring-boot-starter-swagger\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=SpringForAll#spring-boot-starter-swagger -Dsonar.projectVersion=1.0 -Dsonar.projectKey=SpringForAll:spring-boot-starter-swagger -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\SpringForAll#spring-boot-starter-swagger" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo SpringForAll/spring-boot-starter-swagger 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\SpringForAll#spring-boot-starter-swagger
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\SpringForAll#spring-boot-starter-swagger
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\SpringForAll#spring-boot-starter-swagger
 ) 

@echo off 
 set var=call git clone https://github.com/gkumar111/chess-game.git ALLPROJECTS/NEW_MAVEN_PROJECTS/gkumar111#chess-game
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/gkumar111#chess-game 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\gkumar111#chess-game\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=gkumar111#chess-game -Dsonar.projectVersion=1.0 -Dsonar.projectKey=gkumar111:chess-game -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\gkumar111#chess-game" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo gkumar111/chess-game 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\gkumar111#chess-game
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\gkumar111#chess-game
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\gkumar111#chess-game
 ) 

@echo off 
 set var=call git clone https://github.com/google/binnavi.git ALLPROJECTS/NEW_MAVEN_PROJECTS/google#binnavi
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/google#binnavi 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\google#binnavi\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=google#binnavi -Dsonar.projectVersion=1.0 -Dsonar.projectKey=google:binnavi -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\google#binnavi" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo google/binnavi 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\google#binnavi
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\google#binnavi
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\google#binnavi
 ) 

@echo off 
 set var=call git clone https://github.com/coobird/thumbnailator.git ALLPROJECTS/NEW_MAVEN_PROJECTS/coobird#thumbnailator
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/coobird#thumbnailator 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\coobird#thumbnailator\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=coobird#thumbnailator -Dsonar.projectVersion=1.0 -Dsonar.projectKey=coobird:thumbnailator -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\coobird#thumbnailator" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo coobird/thumbnailator 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\coobird#thumbnailator
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\coobird#thumbnailator
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\coobird#thumbnailator
 ) 

@echo off 
 set var=call git clone https://github.com/fiji/IJ_Robot.git ALLPROJECTS/NEW_MAVEN_PROJECTS/fiji#IJ_Robot
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/fiji#IJ_Robot 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\fiji#IJ_Robot\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=fiji#IJ_Robot -Dsonar.projectVersion=1.0 -Dsonar.projectKey=fiji:IJ_Robot -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\fiji#IJ_Robot" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo fiji/IJ_Robot 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fiji#IJ_Robot
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fiji#IJ_Robot
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fiji#IJ_Robot
 ) 

@echo off 
 set var=call git clone https://github.com/qiujiayu/AutoLoadCache.git ALLPROJECTS/NEW_MAVEN_PROJECTS/qiujiayu#AutoLoadCache
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/qiujiayu#AutoLoadCache 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\qiujiayu#AutoLoadCache\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=qiujiayu#AutoLoadCache -Dsonar.projectVersion=1.0 -Dsonar.projectKey=qiujiayu:AutoLoadCache -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\qiujiayu#AutoLoadCache" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo qiujiayu/AutoLoadCache 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\qiujiayu#AutoLoadCache
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\qiujiayu#AutoLoadCache
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\qiujiayu#AutoLoadCache
 ) 

@echo off 
 set var=call git clone https://github.com/biezhi/wechat-api.git ALLPROJECTS/NEW_MAVEN_PROJECTS/biezhi#wechat-api
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/biezhi#wechat-api 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\biezhi#wechat-api\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=biezhi#wechat-api -Dsonar.projectVersion=1.0 -Dsonar.projectKey=biezhi:wechat-api -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\biezhi#wechat-api" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo biezhi/wechat-api 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\biezhi#wechat-api
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\biezhi#wechat-api
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\biezhi#wechat-api
 ) 

@echo off 
 set var=call git clone https://github.com/xmlet/RegexApi.git ALLPROJECTS/NEW_MAVEN_PROJECTS/xmlet#RegexApi
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/xmlet#RegexApi 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\xmlet#RegexApi\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=xmlet#RegexApi -Dsonar.projectVersion=1.0 -Dsonar.projectKey=xmlet:RegexApi -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\xmlet#RegexApi" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo xmlet/RegexApi 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xmlet#RegexApi
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xmlet#RegexApi
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xmlet#RegexApi
 ) 

@echo off 
 set var=call git clone https://github.com/eatnumber1/javautil.git ALLPROJECTS/NEW_MAVEN_PROJECTS/eatnumber1#javautil
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/eatnumber1#javautil 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\eatnumber1#javautil\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=eatnumber1#javautil -Dsonar.projectVersion=1.0 -Dsonar.projectKey=eatnumber1:javautil -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\eatnumber1#javautil" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo eatnumber1/javautil 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\eatnumber1#javautil
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\eatnumber1#javautil
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\eatnumber1#javautil
 ) 

@echo off 
 set var=call git clone https://github.com/alibaba/fastjson.git ALLPROJECTS/NEW_MAVEN_PROJECTS/alibaba#fastjson
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/alibaba#fastjson 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#fastjson\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=alibaba#fastjson -Dsonar.projectVersion=1.0 -Dsonar.projectKey=alibaba:fastjson -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#fastjson" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo alibaba/fastjson 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#fastjson
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#fastjson
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#fastjson
 ) 

@echo off 
 set var=call git clone https://github.com/btiernay/elasticsearch-lang-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/btiernay#elasticsearch-lang-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/btiernay#elasticsearch-lang-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\btiernay#elasticsearch-lang-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=btiernay#elasticsearch-lang-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=btiernay:elasticsearch-lang-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\btiernay#elasticsearch-lang-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo btiernay/elasticsearch-lang-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\btiernay#elasticsearch-lang-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\btiernay#elasticsearch-lang-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\btiernay#elasticsearch-lang-java
 ) 

@echo off 
 set var=call git clone https://github.com/samskivert/jmustache.git ALLPROJECTS/NEW_MAVEN_PROJECTS/samskivert#jmustache
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/samskivert#jmustache 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\samskivert#jmustache\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=samskivert#jmustache -Dsonar.projectVersion=1.0 -Dsonar.projectKey=samskivert:jmustache -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\samskivert#jmustache" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo samskivert/jmustache 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\samskivert#jmustache
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\samskivert#jmustache
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\samskivert#jmustache
 ) 

@echo off 
 set var=call git clone https://github.com/HarendraKumarSingh/openNLP.git ALLPROJECTS/NEW_MAVEN_PROJECTS/HarendraKumarSingh#openNLP
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/HarendraKumarSingh#openNLP 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\HarendraKumarSingh#openNLP\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=HarendraKumarSingh#openNLP -Dsonar.projectVersion=1.0 -Dsonar.projectKey=HarendraKumarSingh:openNLP -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\HarendraKumarSingh#openNLP" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo HarendraKumarSingh/openNLP 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\HarendraKumarSingh#openNLP
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\HarendraKumarSingh#openNLP
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\HarendraKumarSingh#openNLP
 ) 

@echo off 
 set var=call git clone https://github.com/TakahikoKawasaki/nv-websocket-client.git ALLPROJECTS/NEW_MAVEN_PROJECTS/TakahikoKawasaki#nv-websocket-client
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/TakahikoKawasaki#nv-websocket-client 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\TakahikoKawasaki#nv-websocket-client\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=TakahikoKawasaki#nv-websocket-client -Dsonar.projectVersion=1.0 -Dsonar.projectKey=TakahikoKawasaki:nv-websocket-client -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\TakahikoKawasaki#nv-websocket-client" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo TakahikoKawasaki/nv-websocket-client 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\TakahikoKawasaki#nv-websocket-client
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\TakahikoKawasaki#nv-websocket-client
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\TakahikoKawasaki#nv-websocket-client
 ) 

@echo off 
 set var=call git clone https://github.com/fabianishere/brainfuck-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/fabianishere#brainfuck-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/fabianishere#brainfuck-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\fabianishere#brainfuck-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=fabianishere#brainfuck-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=fabianishere:brainfuck-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\fabianishere#brainfuck-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo fabianishere/brainfuck-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fabianishere#brainfuck-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fabianishere#brainfuck-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fabianishere#brainfuck-java
 ) 

@echo off 
 set var=call git clone https://github.com/b3log/symphony.git ALLPROJECTS/NEW_MAVEN_PROJECTS/b3log#symphony
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/b3log#symphony 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\b3log#symphony\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=b3log#symphony -Dsonar.projectVersion=1.0 -Dsonar.projectKey=b3log:symphony -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\b3log#symphony" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo b3log/symphony 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\b3log#symphony
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\b3log#symphony
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\b3log#symphony
 ) 

@echo off 
 set var=call git clone https://github.com/idris-hackers/idris-java-rts.git ALLPROJECTS/NEW_MAVEN_PROJECTS/idris-hackers#idris-java-rts
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/idris-hackers#idris-java-rts 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\idris-hackers#idris-java-rts\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=idris-hackers#idris-java-rts -Dsonar.projectVersion=1.0 -Dsonar.projectKey=idris-hackers:idris-java-rts -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\idris-hackers#idris-java-rts" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo idris-hackers/idris-java-rts 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\idris-hackers#idris-java-rts
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\idris-hackers#idris-java-rts
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\idris-hackers#idris-java-rts
 ) 

@echo off 
 set var=call git clone https://github.com/Aunmag/shooter.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Aunmag#shooter
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Aunmag#shooter 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Aunmag#shooter\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Aunmag#shooter -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Aunmag:shooter -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Aunmag#shooter" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Aunmag/shooter 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Aunmag#shooter
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Aunmag#shooter
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Aunmag#shooter
 ) 

@echo off 
 set var=call git clone https://github.com/jsolve/sweetener.git ALLPROJECTS/NEW_MAVEN_PROJECTS/jsolve#sweetener
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/jsolve#sweetener 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\jsolve#sweetener\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=jsolve#sweetener -Dsonar.projectVersion=1.0 -Dsonar.projectKey=jsolve:sweetener -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\jsolve#sweetener" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo jsolve/sweetener 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jsolve#sweetener
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jsolve#sweetener
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jsolve#sweetener
 ) 

@echo off 
 set var=call git clone https://github.com/alibaba/QLExpress.git ALLPROJECTS/NEW_MAVEN_PROJECTS/alibaba#QLExpress
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/alibaba#QLExpress 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#QLExpress\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=alibaba#QLExpress -Dsonar.projectVersion=1.0 -Dsonar.projectKey=alibaba:QLExpress -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#QLExpress" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo alibaba/QLExpress 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#QLExpress
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#QLExpress
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\alibaba#QLExpress
 ) 

@echo off 
 set var=call git clone https://github.com/Anniepoo/JavaPengine.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Anniepoo#JavaPengine
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Anniepoo#JavaPengine 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Anniepoo#JavaPengine\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Anniepoo#JavaPengine -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Anniepoo:JavaPengine -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Anniepoo#JavaPengine" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Anniepoo/JavaPengine 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Anniepoo#JavaPengine
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Anniepoo#JavaPengine
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Anniepoo#JavaPengine
 ) 

@echo off 
 set var=call git clone https://github.com/automenta/genifer-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/automenta#genifer-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/automenta#genifer-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\automenta#genifer-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=automenta#genifer-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=automenta:genifer-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\automenta#genifer-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo automenta/genifer-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\automenta#genifer-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\automenta#genifer-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\automenta#genifer-java
 ) 

@echo off 
 set var=call git clone https://github.com/georgewfraser/java-language-server.git ALLPROJECTS/NEW_MAVEN_PROJECTS/georgewfraser#java-language-server
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/georgewfraser#java-language-server 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\georgewfraser#java-language-server\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=georgewfraser#java-language-server -Dsonar.projectVersion=1.0 -Dsonar.projectKey=georgewfraser:java-language-server -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\georgewfraser#java-language-server" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo georgewfraser/java-language-server 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\georgewfraser#java-language-server
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\georgewfraser#java-language-server
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\georgewfraser#java-language-server
 ) 

@echo off 
 set var=call git clone https://github.com/spotinst/spotinst-sdk-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/spotinst#spotinst-sdk-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/spotinst#spotinst-sdk-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\spotinst#spotinst-sdk-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=spotinst#spotinst-sdk-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=spotinst:spotinst-sdk-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\spotinst#spotinst-sdk-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo spotinst/spotinst-sdk-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\spotinst#spotinst-sdk-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\spotinst#spotinst-sdk-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\spotinst#spotinst-sdk-java
 ) 

@echo off 
 set var=call git clone https://github.com/fquirin/java-nlu-tools.git ALLPROJECTS/NEW_MAVEN_PROJECTS/fquirin#java-nlu-tools
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/fquirin#java-nlu-tools 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\fquirin#java-nlu-tools\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=fquirin#java-nlu-tools -Dsonar.projectVersion=1.0 -Dsonar.projectKey=fquirin:java-nlu-tools -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\fquirin#java-nlu-tools" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo fquirin/java-nlu-tools 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fquirin#java-nlu-tools
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fquirin#java-nlu-tools
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\fquirin#java-nlu-tools
 ) 

@echo off 
 set var=call git clone https://github.com/pvto/java-sort-experiments.git ALLPROJECTS/NEW_MAVEN_PROJECTS/pvto#java-sort-experiments
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/pvto#java-sort-experiments 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\pvto#java-sort-experiments\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=pvto#java-sort-experiments -Dsonar.projectVersion=1.0 -Dsonar.projectKey=pvto:java-sort-experiments -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\pvto#java-sort-experiments" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo pvto/java-sort-experiments 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pvto#java-sort-experiments
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pvto#java-sort-experiments
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pvto#java-sort-experiments
 ) 

@echo off 
 set var=call git clone https://github.com/mybatis/mybatis-3.git ALLPROJECTS/NEW_MAVEN_PROJECTS/mybatis#mybatis-3
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/mybatis#mybatis-3 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\mybatis#mybatis-3\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=mybatis#mybatis-3 -Dsonar.projectVersion=1.0 -Dsonar.projectKey=mybatis:mybatis-3 -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\mybatis#mybatis-3" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo mybatis/mybatis-3 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mybatis#mybatis-3
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mybatis#mybatis-3
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\mybatis#mybatis-3
 ) 

@echo off 
 set var=call git clone https://github.com/leogtzr/monkeylang-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/leogtzr#monkeylang-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/leogtzr#monkeylang-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\leogtzr#monkeylang-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=leogtzr#monkeylang-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=leogtzr:monkeylang-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\leogtzr#monkeylang-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo leogtzr/monkeylang-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\leogtzr#monkeylang-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\leogtzr#monkeylang-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\leogtzr#monkeylang-java
 ) 

@echo off 
 set var=call git clone https://github.com/xiyj/learning.java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/xiyj#learning.java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/xiyj#learning.java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\xiyj#learning.java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=xiyj#learning.java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=xiyj:learning.java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\xiyj#learning.java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo xiyj/learning.java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xiyj#learning.java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xiyj#learning.java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\xiyj#learning.java
 ) 

@echo off 
 set var=call git clone https://github.com/rjeschke/weel.git ALLPROJECTS/NEW_MAVEN_PROJECTS/rjeschke#weel
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/rjeschke#weel 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\rjeschke#weel\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=rjeschke#weel -Dsonar.projectVersion=1.0 -Dsonar.projectKey=rjeschke:weel -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\rjeschke#weel" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo rjeschke/weel 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rjeschke#weel
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rjeschke#weel
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\rjeschke#weel
 ) 

@echo off 
 set var=call git clone https://github.com/neo4j-contrib/cypher-dsl.git ALLPROJECTS/NEW_MAVEN_PROJECTS/neo4j-contrib#cypher-dsl
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/neo4j-contrib#cypher-dsl 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\neo4j-contrib#cypher-dsl\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=neo4j-contrib#cypher-dsl -Dsonar.projectVersion=1.0 -Dsonar.projectKey=neo4j-contrib:cypher-dsl -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\neo4j-contrib#cypher-dsl" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo neo4j-contrib/cypher-dsl 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\neo4j-contrib#cypher-dsl
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\neo4j-contrib#cypher-dsl
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\neo4j-contrib#cypher-dsl
 ) 

@echo off 
 set var=call git clone https://github.com/commoncrawl/language-detection-cld2.git ALLPROJECTS/NEW_MAVEN_PROJECTS/commoncrawl#language-detection-cld2
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/commoncrawl#language-detection-cld2 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\commoncrawl#language-detection-cld2\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=commoncrawl#language-detection-cld2 -Dsonar.projectVersion=1.0 -Dsonar.projectKey=commoncrawl:language-detection-cld2 -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\commoncrawl#language-detection-cld2" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo commoncrawl/language-detection-cld2 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\commoncrawl#language-detection-cld2
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\commoncrawl#language-detection-cld2
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\commoncrawl#language-detection-cld2
 ) 

@echo off 
 set var=call git clone https://github.com/Javauto/javauto-core.git ALLPROJECTS/NEW_MAVEN_PROJECTS/Javauto#javauto-core
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/Javauto#javauto-core 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\Javauto#javauto-core\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=Javauto#javauto-core -Dsonar.projectVersion=1.0 -Dsonar.projectKey=Javauto:javauto-core -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\Javauto#javauto-core" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo Javauto/javauto-core 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Javauto#javauto-core
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Javauto#javauto-core
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\Javauto#javauto-core
 ) 

@echo off 
 set var=call git clone https://github.com/pfmiles/kan-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/pfmiles#kan-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/pfmiles#kan-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\pfmiles#kan-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=pfmiles#kan-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=pfmiles:kan-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\pfmiles#kan-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo pfmiles/kan-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pfmiles#kan-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pfmiles#kan-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\pfmiles#kan-java
 ) 

@echo off 
 set var=call git clone https://github.com/romildo/picnic-java.git ALLPROJECTS/NEW_MAVEN_PROJECTS/romildo#picnic-java
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/romildo#picnic-java 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\romildo#picnic-java\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=romildo#picnic-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=romildo:picnic-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\romildo#picnic-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo romildo/picnic-java 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\romildo#picnic-java
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\romildo#picnic-java
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\romildo#picnic-java
 ) 

@echo off 
 set var=call git clone https://github.com/jacksonCLyu/javalearning.git ALLPROJECTS/NEW_MAVEN_PROJECTS/jacksonCLyu#javalearning
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/jacksonCLyu#javalearning 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\jacksonCLyu#javalearning\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=jacksonCLyu#javalearning -Dsonar.projectVersion=1.0 -Dsonar.projectKey=jacksonCLyu:javalearning -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\jacksonCLyu#javalearning" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo jacksonCLyu/javalearning 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jacksonCLyu#javalearning
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jacksonCLyu#javalearning
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\jacksonCLyu#javalearning
 ) 

@echo off 
 set var=call git clone https://github.com/abel533/MyBatis-Spring-Boot.git ALLPROJECTS/NEW_MAVEN_PROJECTS/abel533#MyBatis-Spring-Boot
 echo executing git command line: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
echo Git Command Success 
@echo off 
 set var=call mvn -DargLine=-javaagent:C:\Users\wfozing\.m2\repository\org\jacoco\org.jacoco.agent\0.8.3\org.jacoco.agent-0.8.3-runtime.jar=output=file,destfile=target/jacoco.exec clean test -f  ALLPROJECTS/NEW_MAVEN_PROJECTS/abel533#MyBatis-Spring-Boot 
 echo executing maven Command Line: !var! 
 !var! 
 IF %ERRORLEVEL% EQU 0 IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\abel533#MyBatis-Spring-Boot\target\jacoco.exec ( 
echo Maven Compilation Command Success And Jacoco Repoprt Success 
@echo off 
 Set var=call "C:\Users\wfozing\Downloads\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=abel533#MyBatis-Spring-Boot -Dsonar.projectVersion=1.0 -Dsonar.projectKey=abel533:MyBatis-Spring-Boot -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\NEW_MAVEN_PROJECTS\abel533#MyBatis-Spring-Boot" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing SonarTest Commmand Line:!var! 
 !var! 
IF %ERRORLEVEL% EQU 0 (
 echo SonarTest Succes 
 echo abel533/MyBatis-Spring-Boot 1>>mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt
) ELSE ( 
 echo Sonar Test error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\abel533#MyBatis-Spring-Boot
 ) 
 )ELSE ( 
  echo Maven compile error or no generated reportPath 
 echo Maven exit code: %ERRORLEVEL% 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\abel533#MyBatis-Spring-Boot
 ) 
 )ELSE ( 
 echo git error 
 RD /S /Q ALLPROJECTS\NEW_MAVEN_PROJECTS\abel533#MyBatis-Spring-Boot
 ) 

