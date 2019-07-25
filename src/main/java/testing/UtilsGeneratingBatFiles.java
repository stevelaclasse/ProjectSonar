package testing;

import java.io.File;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;

public class UtilsGeneratingBatFiles {

	protected void creatingGitCommandLine() throws Exception {
		
		List<String> gitJacocoPluginMaven = new ArrayList<String>();
		List<String> gitJacocoPluginGradle = new ArrayList<String>();
		List<String> gitCoberturaPluginMaven = new ArrayList<String>();
		List<String> gitCoberturaPluginGradle = new ArrayList<String>();
		
			HttpURLConnect http=new HttpURLConnect() ;
			UtilsSortingProjects myUtils=new UtilsSortingProjects();
		
			gitJacocoPluginMaven.addAll(myUtils.readUrlFromFile(http.getJacocoPluginProjectMavenFileName()));
			
			gitJacocoPluginGradle.addAll(myUtils.readUrlFromFile(http.getJacocoPluginProjectGradleFileName()));
			
			gitCoberturaPluginMaven.addAll(myUtils.readUrlFromFile(http.getCoberturaPluginProjectMavenFileName()));
			
			gitCoberturaPluginGradle.addAll(myUtils.readUrlFromFile(http.getCoberturaPluginProjectGradleFileName()));
			
			String firstPart ="git clone";
			String secondPart="https://github.com/";
			String lastPart=".git";
			
			System.out.println("Start creating git commandline");
			
			String[] jacocoPluginMavenFolderAddForCompilation=http.getJacocoPluginMavenDownloadedProject().split("/");
			
			String[] jacocoPluginGradleFolderAddForCompilation=http.getJacocoPluginGradleDownloadedProject().split("/");
			
			String[] coberturaPluginMavenFolderAddForCompilation=http.getCoberturaPluginMavenDownloadedProject().split("/");
			
			String[] coberturaPluginGradleFolderAddForCompilation=http.getCoberturaPluginGradleDownloadedProject().split("/");
			
			int n=coberturaPluginGradleFolderAddForCompilation.length;
			
			
			for (int i=0;i<gitJacocoPluginMaven.size();i++) {
				gitJacocoPluginMaven.set(i,firstPart+" "+secondPart+gitJacocoPluginMaven.get(i)+lastPart+" "+jacocoPluginMavenFolderAddForCompilation[n-3]+"/"+jacocoPluginMavenFolderAddForCompilation[n-2]+"/"+jacocoPluginMavenFolderAddForCompilation[n-1]+"/"+gitJacocoPluginMaven.get(i).replace("/", "#"));
			}
			
			for (int i=0;i<gitJacocoPluginGradle.size();i++) {
				gitJacocoPluginGradle.set(i,firstPart+" "+secondPart+gitJacocoPluginGradle.get(i)+lastPart+" "+jacocoPluginGradleFolderAddForCompilation[n-3]+"/"+jacocoPluginGradleFolderAddForCompilation[n-2]+"/"+jacocoPluginGradleFolderAddForCompilation[n-1]+"/"+gitJacocoPluginGradle.get(i).replace("/", "#"));
			}
			
			for (int i=0;i<gitCoberturaPluginMaven.size();i++) {
				gitCoberturaPluginMaven.set(i,firstPart+" "+secondPart+gitCoberturaPluginMaven.get(i)+lastPart+" "+coberturaPluginMavenFolderAddForCompilation[n-3]+"/"+coberturaPluginMavenFolderAddForCompilation[n-2]+"/"+coberturaPluginMavenFolderAddForCompilation[n-1]+"/"+gitCoberturaPluginMaven.get(i).replace("/", "#"));
			}
			
			for (int i=0;i<gitCoberturaPluginGradle.size();i++) {
				gitCoberturaPluginGradle.set(i,firstPart+" "+secondPart+gitCoberturaPluginGradle.get(i)+lastPart+" "+coberturaPluginGradleFolderAddForCompilation[n-3]+"/"+coberturaPluginGradleFolderAddForCompilation[n-2]+"/"+coberturaPluginGradleFolderAddForCompilation[n-1]+"/"+gitCoberturaPluginGradle.get(i).replace("/", "#"));
			}
			
			myUtils.writeUrlInFile(gitJacocoPluginMaven, http.getJacocoPluginProjectMavenGitCommandLineBatFileName());
			myUtils.writeUrlInFile(gitJacocoPluginGradle, http.getJacocoPluginProjectGradleGitCommandLineBatFileName());
			myUtils.writeUrlInFile(gitCoberturaPluginMaven, http.getCoberturaPluginProjectMavenGitCommandLineBatFileName());
			myUtils.writeUrlInFile(gitCoberturaPluginGradle, http.getCoberturaPluginProjectGradleGitCommandLineBatFileName());
			
			System.out.println("End creating git commandline");
	}
	
	public void creatingMavenPlugingJacocoAndCoberturaCompileCommandLine() throws Exception{
		
		HttpURLConnect http=new HttpURLConnect() ;
		UtilsSortingProjects myUtils=new UtilsSortingProjects();
		List<String> jacocoPluginMavenCompileCommandLine=new ArrayList<String>();
		List<String> coberturaPluginMavenCompileCommandLine=new ArrayList<String>();
		
		System.out.println("Starting generating Maven Compile CommandLine");
		
		jacocoPluginMavenCompileCommandLine.addAll(myUtils.readUrlFromFile(http.getJacocoPluginProjectMavenFileName()));
		
		coberturaPluginMavenCompileCommandLine.addAll(myUtils.readUrlFromFile(http.getCoberturaPluginProjectMavenFileName()));
		
		String[] jacocoPluginMavenFolderAddForCompilation=http.getJacocoPluginMavenDownloadedProject().split("/");
		
		String[] coberturaPluginMavenFolderAddForCompilation=http.getCoberturaPluginMavenDownloadedProject().split("/");
		
		int n=jacocoPluginMavenFolderAddForCompilation.length;
		
		
		String jacocoFirstPart ="call mvn clean test -Dmaven.test.failure.ignore=true -f";
		
		String jacocoLastPart="pom.xml";
		
		String coberturaFirstPart="call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f";
		
		for(int i=0;i<jacocoPluginMavenCompileCommandLine.size();i++) {
			jacocoPluginMavenCompileCommandLine.set(i,jacocoFirstPart+" "+jacocoPluginMavenFolderAddForCompilation[n-3]+"/"+jacocoPluginMavenFolderAddForCompilation[n-2]+"/"+jacocoPluginMavenFolderAddForCompilation[n-1]+"/"+jacocoPluginMavenCompileCommandLine.get(i).replace("/", "#")+jacocoLastPart);
		}
		
		for(int i=0;i<coberturaPluginMavenCompileCommandLine.size();i++) {
			coberturaPluginMavenCompileCommandLine.set(i,coberturaFirstPart+" "+coberturaPluginMavenFolderAddForCompilation[n-3]+"/"+coberturaPluginMavenFolderAddForCompilation[n-2]+"/"+coberturaPluginMavenFolderAddForCompilation[n-1]+"/"+coberturaPluginMavenCompileCommandLine.get(i).replace("/", "#"));
		}
		
		myUtils.writeUrlInFile(jacocoPluginMavenCompileCommandLine, http.getJacocoPluginProjectMavenCompileCommandLineBatFilename());
		myUtils.writeUrlInFile(coberturaPluginMavenCompileCommandLine, http.getCoberturaPluginProjectMavenCompileCommandLineBatFilename());
	
		System.out.println("End generating Maven Compile CommandLine");
	}
	
	
	public void creatingGradlePlugingJacocoAndCoberturaCompileCommandLine() throws Exception{
		
		HttpURLConnect http=new HttpURLConnect() ;
		UtilsSortingProjects myUtils=new UtilsSortingProjects();
		List<String> jacocoPluginGradleCompileCommandLine=new ArrayList<String>();
		List<String> coberturaPluginGradleCompileCommandLine=new ArrayList<String>();
		
		System.out.println("Starting generating Gradle Compile CommandLine");
		
		jacocoPluginGradleCompileCommandLine.addAll(myUtils.readUrlFromFile(http.getJacocoPluginProjectGradleFileName()));
		
		coberturaPluginGradleCompileCommandLine.addAll(myUtils.readUrlFromFile(http.getCoberturaPluginProjectGradleFileName()));
		
		String[] jacocoPluginGradleFolderAddForCompilation=http.getJacocoPluginGradleDownloadedProject().split("/");
		
		String[] coberturaPluginGradleFolderAddForCompilation=http.getCoberturaPluginGradleDownloadedProject().split("/");
		
		int n=jacocoPluginGradleFolderAddForCompilation.length;
		
		
		String jacocoFirstPart ="call gradle clean build test --continue -p";
		
		String coberturaFirstPart="call gradle clean build test --continue -p";
		
		for(int i=0;i<jacocoPluginGradleCompileCommandLine.size();i++) {
			jacocoPluginGradleCompileCommandLine.set(i,jacocoFirstPart+" "+jacocoPluginGradleFolderAddForCompilation[n-3]+"/"+jacocoPluginGradleFolderAddForCompilation[n-2]+"/"+jacocoPluginGradleFolderAddForCompilation[n-1]+"/"+jacocoPluginGradleCompileCommandLine.get(i).replace("/", "#"));
		}
		
		for(int i=0;i<coberturaPluginGradleCompileCommandLine.size();i++) {
			coberturaPluginGradleCompileCommandLine.set(i,coberturaFirstPart+" "+coberturaPluginGradleFolderAddForCompilation[n-3]+"/"+coberturaPluginGradleFolderAddForCompilation[n-2]+"/"+coberturaPluginGradleFolderAddForCompilation[n-1]+"/"+coberturaPluginGradleCompileCommandLine.get(i).replace("/", "#"));
		}
		
		myUtils.writeUrlInFile(jacocoPluginGradleCompileCommandLine, http.getJacocoPluginProjectGradleCompileCommandLineBatFilename());
		myUtils.writeUrlInFile(coberturaPluginGradleCompileCommandLine, http.getCoberturaPluginProjectGradleCompileCommandLineBatFilename());
	
	
		System.out.println("End generating Gradle Compile CommandLine");
	}
	
	public void creatingMavenAndGradlePlugingJacocoAndCoberturaSonartestCommandLine() throws Exception{
		
		HttpURLConnect http=new HttpURLConnect() ;
		UtilsSortingProjects myUtils=new UtilsSortingProjects();
		List<String> jacocoPluginMavenSonarTestCommandLine=new ArrayList<String>();
		List<String> coberturaPluginMavenSonarTestCommandLine=new ArrayList<String>();
		List<String> jacocoPluginGradleSonarTestCommandLine=new ArrayList<String>();
		List<String> coberturaPluginGradleSonarTestCommandLine=new ArrayList<String>();
		
		System.out.println("Starting generating Jacoco and Cobertura Maven and Gradle Sonar Test CommandLine");
		
		jacocoPluginMavenSonarTestCommandLine.addAll(myUtils.readUrlFromFile(http.getJacocoPluginProjectMavenFileName()));
		
		coberturaPluginMavenSonarTestCommandLine.addAll(myUtils.readUrlFromFile(http.getCoberturaPluginProjectMavenFileName()));
		
		jacocoPluginGradleSonarTestCommandLine.addAll(myUtils.readUrlFromFile(http.getJacocoPluginProjectGradleFileName()));
		
		coberturaPluginGradleSonarTestCommandLine.addAll(myUtils.readUrlFromFile(http.getCoberturaPluginProjectGradleFileName()));
		
		File jacocoPluginMavenDownloadedProjectAbsolutePath=new File(http.getJacocoPluginMavenDownloadedProject());
		
		File coberturaPluginMavenDownloadedProjectAbsolutePath=new File(http.getCoberturaPluginMavenDownloadedProject());
		
		File jacocoPluginGradleDownloadedProjectAbsolutePath=new File(http.getJacocoPluginGradleDownloadedProject());
		
		File coberturaPluginGradleDownloadedProjectAbsolutePath=new File(http.getCoberturaPluginGradleDownloadedProject());
		
		System.out.println("Jacoco Plugin Maven DownloadedProject AbsolutePath="+jacocoPluginMavenDownloadedProjectAbsolutePath.getAbsolutePath()+"\texist="+jacocoPluginMavenDownloadedProjectAbsolutePath.getAbsoluteFile().exists());
		
		System.out.println("Cobertura Plugin Maven DownloadedProject AbsolutePath="+coberturaPluginMavenDownloadedProjectAbsolutePath.getAbsolutePath()+"\texist="+coberturaPluginMavenDownloadedProjectAbsolutePath.getAbsoluteFile().exists());
		
		System.out.println("Jacoco Plugin Gradle DownloadedProject AbsolutePath="+jacocoPluginGradleDownloadedProjectAbsolutePath.getAbsolutePath()+"\texist="+jacocoPluginGradleDownloadedProjectAbsolutePath.getAbsoluteFile().exists());
		
		System.out.println("Cobertura Plugin Gradle DownloadedProject Folder="+coberturaPluginGradleDownloadedProjectAbsolutePath.getAbsolutePath()+"\texist="+coberturaPluginGradleDownloadedProjectAbsolutePath.getAbsoluteFile().exists());
		
		if(jacocoPluginMavenDownloadedProjectAbsolutePath.exists()==true && coberturaPluginMavenDownloadedProjectAbsolutePath.exists()==true && jacocoPluginGradleDownloadedProjectAbsolutePath.exists()==true && coberturaPluginGradleDownloadedProjectAbsolutePath.exists()==true ) {
		
		String sonarJacocoPluginMavenBaseDir=jacocoPluginMavenDownloadedProjectAbsolutePath.getAbsolutePath();
		
		String sonarCoberturaPluginMavenBaseDir=coberturaPluginMavenDownloadedProjectAbsolutePath.getAbsolutePath();
				
		String sonarJacocoPluginGradleBaseDir=jacocoPluginGradleDownloadedProjectAbsolutePath.getAbsolutePath();
		
		String sonarCoberturaPluginGradleBaseDir=coberturaPluginGradleDownloadedProjectAbsolutePath.getAbsolutePath();
		
		String sonarScannerLocation=http.getSonnarScannerBatFileLocation();
		
		String sonarHostUrl=http.getSonarHosturl();
		
		String sonarServerLogin="admin";
		
		String sonarServerPassword="admin";
		
		for(int i=0;i<jacocoPluginMavenSonarTestCommandLine.size();i++) {
			jacocoPluginMavenSonarTestCommandLine.set(i,"call \""+sonarScannerLocation+"\""+" "+"-Dsonar.host.url="+sonarHostUrl+" "+"-Dsonar.projectName="+jacocoPluginMavenSonarTestCommandLine.get(i).replace("/", "#")+" "+"-Dsonar.projectVersion=1.0"+" "+"-Dsonar.projectKey="+jacocoPluginMavenSonarTestCommandLine.get(i).replace("/", "#")
					+" "+"-Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java \"-Dsonar.projectBaseDir="+sonarJacocoPluginMavenBaseDir+"\\"+jacocoPluginMavenSonarTestCommandLine.get(i).replace("/", "#")+"\""+" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPaths=target/jacoco.exec -Dsonar.login="+sonarServerLogin+" "+"-Dsonar.password="+sonarServerPassword);
		}
		
		for(int i=0;i<coberturaPluginMavenSonarTestCommandLine.size();i++) {
			coberturaPluginMavenSonarTestCommandLine.set(i,"call \""+sonarScannerLocation+"\""+" "+"-Dsonar.host.url="+sonarHostUrl+" "+"-Dsonar.projectName="+coberturaPluginMavenSonarTestCommandLine.get(i).replace("/", "#")+" "+"-Dsonar.projectVersion=1.0"+" "+"-Dsonar.projectKey="+coberturaPluginMavenSonarTestCommandLine.get(i).replace("/", "#")
					+" "+"-Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java \"-Dsonar.projectBaseDir="+sonarCoberturaPluginMavenBaseDir+"\\"+coberturaPluginMavenSonarTestCommandLine.get(i).replace("/", "#")+"\""+" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=target/site/cobertura/coverage.xml -Dsonar.login="+sonarServerLogin+" "+"-Dsonar.password="+sonarServerPassword);
		}
		
		for(int i=0;i<jacocoPluginGradleSonarTestCommandLine.size();i++) {
			jacocoPluginGradleSonarTestCommandLine.set(i,"call \""+sonarScannerLocation+"\""+" "+"-Dsonar.host.url="+sonarHostUrl+" "+"-Dsonar.projectName="+jacocoPluginGradleSonarTestCommandLine.get(i).replace("/", "#")+" "+"-Dsonar.projectVersion=1.0"+" "+"-Dsonar.projectKey="+jacocoPluginGradleSonarTestCommandLine.get(i).replace("/", "#")
					+" "+"-Dsonar.java.binaries=build/classes/java/main  -Dsonar.java.test.binaries=build/classes/java/test -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java \"-Dsonar.projectBaseDir="+sonarJacocoPluginGradleBaseDir+"\\"+jacocoPluginGradleSonarTestCommandLine.get(i).replace("/", "#")+"\""+" -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPaths=build/jacoco/test.exec -Dsonar.login="+sonarServerLogin+" "+"-Dsonar.password="+sonarServerPassword);
		}
		
		for(int i=0;i<coberturaPluginGradleSonarTestCommandLine.size();i++) {
			coberturaPluginGradleSonarTestCommandLine.set(i,"call \""+sonarScannerLocation+"\""+" "+"-Dsonar.host.url="+sonarHostUrl+" "+"-Dsonar.projectName="+coberturaPluginGradleSonarTestCommandLine.get(i).replace("/", "#")+" "+"-Dsonar.projectVersion=1.0"+" "+"-Dsonar.projectKey="+coberturaPluginGradleSonarTestCommandLine.get(i).replace("/", "#")
					+" "+"-Dsonar.java.binaries=build/classes/java/main  -Dsonar.java.test.binaries=build/classes/java/test -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java \"-Dsonar.projectBaseDir="+sonarCoberturaPluginGradleBaseDir+"\\"+coberturaPluginGradleSonarTestCommandLine.get(i).replace("/", "#")+"\""+" -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath=build/reports/cobertura/coverage.xml -Dsonar.login="+sonarServerLogin+" "+"-Dsonar.password="+sonarServerPassword);
		}
		
		myUtils.writeUrlInFile(jacocoPluginMavenSonarTestCommandLine, http.getJacocoPluginProjectMavenSonarTestCommandLineBatFilename());
		myUtils.writeUrlInFile(coberturaPluginMavenSonarTestCommandLine, http.getCoberturaPluginProjectMavenSonarTestCommandLineBatFilename());
		myUtils.writeUrlInFile(jacocoPluginGradleSonarTestCommandLine, http.getJacocoPluginProjectGradleSonarTestCommandLineBatFilename());
		myUtils.writeUrlInFile(coberturaPluginGradleSonarTestCommandLine, http.getCoberturaPluginProjectGradleSonarTestCommandLineBatFilename());
	
		System.out.println("End generating Jacoco and Cobertura Maven and Gradle Sonar Test CommandLine");
		
	}
	else {
		System.out.println("The Project Directory Could not be found");
	}
	}
	
}
