@echo off 
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/alibaba#arthas/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/alibaba#canal/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/alibaba#druid/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/alibaba#fastjson/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/alibaba#nacos/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/alibaba#Sentinel/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/alibaba#spring-cloud-alibaba/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/alibaba#transmittable-thread-local/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/Anil-Adhikari#IMPL/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/apache#dubbo/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/apache#hbase/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/apache#incubator-pinot/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/apache#incubator-shardingsphere/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/apache#kylin/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/apache#rocketmq/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/apache#shiro/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/automate-website#waml-io/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/b3log#solo/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/brettwooldridge#HikariCP/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/brunocvcunha#mdmlang/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/btc-ag#service-idl/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/checkstyle#checkstyle/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/chewiebug#GCViewer/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/codecentric#spring-boot-admin/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/ctripcorp#apollo/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/daniloarcidiacono#commons-lang/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/dbi1463#SortDescriptor/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/dropwizard#dropwizard/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/eclipse#eclipse.jdt.ls/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/eclipse#jetty.project/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/EnterpriseQualityCoding#FizzBuzzEnterpriseEdition/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/Ethico#java-8-samples/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/FINRAOS#JTAF-XCore/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/flowable#flowable-engine/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/gerryai#pddl-parser/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/hazelcast#hazelcast/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/iluwatar#java-design-patterns/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/JanusGraph#janusgraph/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/javaparser#javaparser/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/JCTools#JCTools/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/jenkinsci#blueocean-plugin/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/jersey#jersey/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/joschi#JadConfig/pom.xml 
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

