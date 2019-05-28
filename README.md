# ProjectSonar

This Project is written to test the impact of the code coverage on the quality of a software juged by Sonarqube.
we are selecting a set of 100 Projects on Gitlab, these projects must have been builded with maven and have test.
the first step is to import the projects in sonar, on the first hand, sonar will execute the testand calculate the code coverage of these tests, 
a good code coverage is >=80%. On the other hand, Sonar will evaluate each project and tell if it is good other bad. Depending of these two results, 
we could see if a high code coverage garantee a good software.
