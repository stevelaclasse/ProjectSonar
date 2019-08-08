@echo off
IF EXIST ALLPROJECTS\NEW_MAVEN_PROJECTS\beckchr#juel\target\jacoco.exec (
echo jacoco report found
) else (echo no report)