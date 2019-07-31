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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/alibaba#jetcache/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/amaembo#streamex/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/apache#pulsar/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/apache#skywalking/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/atomix#atomix/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/AxonFramework#AxonFramework/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/BroadleafCommerce#BroadleafCommerce/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/docker-java#docker-java/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/ivan-vasilev#neuralnetworks/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/jeremylong#DependencyCheck/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/jtablesaw#tablesaw/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/Kong#unirest-java/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/mabe02#lanterna/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/modelmapper#modelmapper/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/MorphiaOrg#morphia/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/opentracing#opentracing-java/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/orientechnologies#orientdb/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/OryxProject#oryx/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/pmd#pmd/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/sofastack#sofa-jraft/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/speedment#speedment/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/spotify#apollo/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/spring-cloud#spring-cloud-gateway/pom.xml 
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
 Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f ALLPROJECTS/MAVEN/JACOCO/xuhuisheng#lemon/pom.xml 
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

