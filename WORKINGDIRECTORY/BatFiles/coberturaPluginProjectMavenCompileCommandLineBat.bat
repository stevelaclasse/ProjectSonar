@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/alibaba#jvm-sandbox/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/apache#zeppelin/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/citerus#dddsample-core/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/codeforamerica#open311_java/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/CrawlScript#WebCollector/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/dvare#dvare-framework/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/elasticjob#elastic-job-lite/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/fasseg#exp4j/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/google#openrtb/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/knightliao#disconf/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/lets-blade#blade/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/nutzam#nutz/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/optimaize#language-detector/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/pasha4j#xacml4j/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/PhantomYdn#jlll/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/samskivert#jmustache/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/sofastack#sofa-jarslink/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/twitter#distributedlog/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/COBERTURA/unbxd#java-sdk/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

