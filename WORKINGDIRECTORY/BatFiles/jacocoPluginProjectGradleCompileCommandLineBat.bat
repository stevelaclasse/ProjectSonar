@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/appium#java-client
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/azkaban#azkaban
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/ben-manes#caffeine
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/CalebFenton#simplify
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/chennaione#sugar
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/crate#crate
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/gocd#gocd
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/igniterealtime#Smack
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/madisp#stupid
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/mambu-gmbh#number2words
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/mongodb#mongo-java-driver
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/Netflix#conductor
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/oblac#jodd
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/resilience4j#resilience4j
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/skylot#jadx
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/spotinst#spotinst-sdk-java
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/springfox#springfox
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/Squarespace#template-compiler
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/vavr-io#vavr
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/JACOCO/web3j#web3j
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> JacocoPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

