@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/COBERTURA/Netflix#Hystrix
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

@echo off 
 Set var=call gradle clean build test --continue -p ALLPROJECTS/GRADLE/COBERTURA/stagemonitor#stagemonitor
 echo executing Command: %var% 
 %var% 
 IF %ERRORLEVEL% EQU 0 ( 
 echo ECHO #####GOOD COMPILED PROJECT##### 
 echo %var% 
 echo %var% 1>> CoberturaPluginProjectGradleGoodCompiledProjectFilename.txt 
)ELSE ( 
 echo ECHO -----FAILED----- 
 echo %var% 
 ) 

