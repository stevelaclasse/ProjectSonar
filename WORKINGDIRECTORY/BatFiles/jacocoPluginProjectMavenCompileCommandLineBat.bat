@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/koushikr#jelastic/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/lettuce-io#lettuce-core/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/mcxiaoke#android-volley/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/Meituan-Dianping#Leaf/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/microsoft#lsif-java/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/mybatis#mybatis-3/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/NanoHttpd#nanohttpd/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/netty#netty/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/networknt#light-4j/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/oasis-open#openc2-lycan-java/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/OpenRefine#OpenRefine/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/oracle#opengrok/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/panda-lang#panda/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/ptitjes#jlato/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/pure4j#pure4j/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/quarkusio#quarkus/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/querydsl#querydsl/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/raphw#byte-buddy/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/roboguice#roboguice/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/seata#seata/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/sofastack#sofa-rpc/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/spotify#helios/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/spring-cloud#spring-cloud-netflix/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/spring-projects#spring-petclinic/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/square#keywhiz/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/swagger-api#swagger-core/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/szerhusenBC#jwt-spring-security-demo/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/thinkaurelius#titan/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/undertow-io#undertow/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/wildfly#wildfly/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/zxing#zxing/pom.xml 
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectMavenGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

