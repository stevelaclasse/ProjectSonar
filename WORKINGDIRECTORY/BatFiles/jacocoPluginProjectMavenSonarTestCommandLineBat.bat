@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=b3log#solo -Dsonar.projectVersion=1.0 -Dsonar.projectKey=b3log:solo -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\b3log#solo" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=brunocvcunha#mdmlang -Dsonar.projectVersion=1.0 -Dsonar.projectKey=brunocvcunha:mdmlang -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\brunocvcunha#mdmlang" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=checkstyle#checkstyle -Dsonar.projectVersion=1.0 -Dsonar.projectKey=checkstyle:checkstyle -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\checkstyle#checkstyle" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=chewiebug#GCViewer -Dsonar.projectVersion=1.0 -Dsonar.projectKey=chewiebug:GCViewer -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\chewiebug#GCViewer" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=daniloarcidiacono#commons-lang -Dsonar.projectVersion=1.0 -Dsonar.projectKey=daniloarcidiacono:commons-lang -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\daniloarcidiacono#commons-lang" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=dbi1463#SortDescriptor -Dsonar.projectVersion=1.0 -Dsonar.projectKey=dbi1463:SortDescriptor -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\dbi1463#SortDescriptor" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=EnterpriseQualityCoding#FizzBuzzEnterpriseEdition -Dsonar.projectVersion=1.0 -Dsonar.projectKey=EnterpriseQualityCoding:FizzBuzzEnterpriseEdition -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\EnterpriseQualityCoding#FizzBuzzEnterpriseEdition" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=gerryai#pddl-parser -Dsonar.projectVersion=1.0 -Dsonar.projectKey=gerryai:pddl-parser -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\gerryai#pddl-parser" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=joschi#JadConfig -Dsonar.projectVersion=1.0 -Dsonar.projectKey=joschi:JadConfig -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\joschi#JadConfig" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=lettuce-io#lettuce-core -Dsonar.projectVersion=1.0 -Dsonar.projectKey=lettuce-io:lettuce-core -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\lettuce-io#lettuce-core" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=mybatis#mybatis-3 -Dsonar.projectVersion=1.0 -Dsonar.projectKey=mybatis:mybatis-3 -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\mybatis#mybatis-3" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=oasis-open#openc2-lycan-java -Dsonar.projectVersion=1.0 -Dsonar.projectKey=oasis-open:openc2-lycan-java -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\oasis-open#openc2-lycan-java" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=ptitjes#jlato -Dsonar.projectVersion=1.0 -Dsonar.projectKey=ptitjes:jlato -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\ptitjes#jlato" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call "C:\sonar-scanner-cli-3.3.0.1492-windows\sonar-scanner-3.3.0.1492-windows\bin\sonar-scanner.bat" -Dsonar.host.url=http://localhost:9000/ -Dsonar.projectName=spring-projects#spring-petclinic -Dsonar.projectVersion=1.0 -Dsonar.projectKey=spring-projects:spring-petclinic -Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java "-Dsonar.projectBaseDir=C:\Users\wfozing\Documents\Maven\SonarTest\WORKINGDIRECTORY\BatFiles\ALLPROJECTS\MAVEN\JACOCO\spring-projects#spring-petclinic" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=target/jacoco.exec  -Dsonar.login=admin -Dsonar.password=admin
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD SONAR TESTED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodSonarTestFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

