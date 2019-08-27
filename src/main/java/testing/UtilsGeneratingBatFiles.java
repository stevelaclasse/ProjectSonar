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

		HttpURLConnect http = new HttpURLConnect();
		UtilsSortingProjects myUtils = new UtilsSortingProjects();

		gitJacocoPluginMaven = (myUtils.readUrlFromFile(http.getJacocoPluginProjectMavenFileName()));

		gitJacocoPluginGradle = (myUtils.readUrlFromFile(http.getJacocoPluginProjectGradleFileName()));

		gitCoberturaPluginMaven = (myUtils.readUrlFromFile(http.getCoberturaPluginProjectMavenFileName()));

		gitCoberturaPluginGradle = (myUtils.readUrlFromFile(http.getCoberturaPluginProjectGradleFileName()));

		String firstPart = "git clone";
		String secondPart = "https://github.com/";
		String lastPart = ".git";

		System.out.println("Start creating git commandline");

		String[] jacocoPluginMavenFolderAddForCompilation = http.getJacocoPluginMavenDownloadedProjectDirectory()
				.split("/");

		String[] jacocoPluginGradleFolderAddForCompilation = http.getJacocoPluginGradleDownloadedProjectDirectory()
				.split("/");

		String[] coberturaPluginMavenFolderAddForCompilation = http.getCoberturaPluginMavenDownloadedProjectDirectory()
				.split("/");

		String[] coberturaPluginGradleFolderAddForCompilation = http
				.getCoberturaPluginGradleDownloadedProjectDirectory().split("/");

		int n = coberturaPluginGradleFolderAddForCompilation.length;

		for (int i = 0; i < gitJacocoPluginMaven.size(); i++) {
			gitJacocoPluginMaven.set(i,
					firstPart + " " + secondPart + gitJacocoPluginMaven.get(i) + lastPart + " "
							+ jacocoPluginMavenFolderAddForCompilation[n - 3] + "/"
							+ jacocoPluginMavenFolderAddForCompilation[n - 2] + "/"
							+ jacocoPluginMavenFolderAddForCompilation[n - 1] + "/"
							+ gitJacocoPluginMaven.get(i).replace("/", "#"));
		}

		for (int i = 0; i < gitJacocoPluginGradle.size(); i++) {
			gitJacocoPluginGradle.set(i,
					firstPart + " " + secondPart + gitJacocoPluginGradle.get(i) + lastPart + " "
							+ jacocoPluginGradleFolderAddForCompilation[n - 3] + "/"
							+ jacocoPluginGradleFolderAddForCompilation[n - 2] + "/"
							+ jacocoPluginGradleFolderAddForCompilation[n - 1] + "/"
							+ gitJacocoPluginGradle.get(i).replace("/", "#"));
		}

		for (int i = 0; i < gitCoberturaPluginMaven.size(); i++) {
			gitCoberturaPluginMaven.set(i,
					firstPart + " " + secondPart + gitCoberturaPluginMaven.get(i) + lastPart + " "
							+ coberturaPluginMavenFolderAddForCompilation[n - 3] + "/"
							+ coberturaPluginMavenFolderAddForCompilation[n - 2] + "/"
							+ coberturaPluginMavenFolderAddForCompilation[n - 1] + "/"
							+ gitCoberturaPluginMaven.get(i).replace("/", "#"));
		}

		for (int i = 0; i < gitCoberturaPluginGradle.size(); i++) {
			gitCoberturaPluginGradle.set(i,
					firstPart + " " + secondPart + gitCoberturaPluginGradle.get(i) + lastPart + " "
							+ coberturaPluginGradleFolderAddForCompilation[n - 3] + "/"
							+ coberturaPluginGradleFolderAddForCompilation[n - 2] + "/"
							+ coberturaPluginGradleFolderAddForCompilation[n - 1] + "/"
							+ gitCoberturaPluginGradle.get(i).replace("/", "#"));
		}

		myUtils.writeUrlInFile(gitJacocoPluginMaven, http.getJacocoPluginProjectMavenGitCommandLineBatFileName());
		myUtils.writeUrlInFile(gitJacocoPluginGradle, http.getJacocoPluginProjectGradleGitCommandLineBatFileName());
		myUtils.writeUrlInFile(gitCoberturaPluginMaven, http.getCoberturaPluginProjectMavenGitCommandLineBatFileName());
		myUtils.writeUrlInFile(gitCoberturaPluginGradle,
				http.getCoberturaPluginProjectGradleGitCommandLineBatFileName());

		System.out.println("End creating git commandline");
	}

	public void creatingMavenPlugingJacocoAndCoberturaCompileCommandLine() throws Exception {

		HttpURLConnect http = new HttpURLConnect();
		UtilsSortingProjects myUtils = new UtilsSortingProjects();
		List<String> jacocoPluginMavenCompileCommandLine = new ArrayList<String>();
		List<String> coberturaPluginMavenCompileCommandLine = new ArrayList<String>();

		System.out.println("Starting generating Maven Compile CommandLine");

		jacocoPluginMavenCompileCommandLine = (myUtils.readUrlFromFile(http.getJacocoPluginProjectMavenFileName()));

		coberturaPluginMavenCompileCommandLine = (myUtils
				.readUrlFromFile(http.getCoberturaPluginProjectMavenFileName()));

		String[] jacocoPluginMavenFolderAddForCompilation = http.getJacocoPluginMavenDownloadedProjectDirectory()
				.split("/");

		String[] coberturaPluginMavenFolderAddForCompilation = http.getCoberturaPluginMavenDownloadedProjectDirectory()
				.split("/");

		int n = jacocoPluginMavenFolderAddForCompilation.length;

		File jacocoGoodCompiled = new File(http.getJacocoPluginProjectMavenGoodCompiledProjectFilename());

		File coberturaGoodCompiled = new File(http.getCoberturaPluginProjectMavenGoodCompiledProjectFilename());

		String jacocoFirstPart = "@echo off \r\n Set var=call mvn clean test -Dmaven.test.failure.ignore=true -f";

		// String jacocoLastPart="/pom.xml";

		String jacocoLastPart = "/pom.xml \r\n echo executing Command: %var% \r\n %var% \r\n IF %ERRORLEVEL% EQU 0 ( "
				+ "\r\n echo ECHO #####GOOD COMPILED PROJECT##### \r\n echo %var% \r\n echo %var% 1>> "
				+ jacocoGoodCompiled.getName() + " \r\n"
				+ ")ELSE ( \r\n echo ECHO -----FAILED----- \r\n echo %var% \r\n ) \r\n";

		String coberturaLastPart = "/pom.xml \r\n echo executing Command: %var% \r\n %var% \r\n IF %ERRORLEVEL% EQU 0 ( "
				+ "\r\n echo ECHO #####GOOD COMPILED PROJECT##### \r\n echo %var% \r\n echo %var% 1>> "
				+ coberturaGoodCompiled.getName() + " \r\n"
				+ ")ELSE ( \r\n echo ECHO -----FAILED----- \r\n echo %var% \r\n ) \r\n";

		String coberturaFirstPart = "@echo off \r\n Set var=call mvn clean cobertura:cobertura -Dcobertura.report.format=xml -Dmaven.test.failure.ignore=true -f";

		for (int i = 0; i < jacocoPluginMavenCompileCommandLine.size(); i++) {
			jacocoPluginMavenCompileCommandLine.set(i,
					jacocoFirstPart + " " + jacocoPluginMavenFolderAddForCompilation[n - 3] + "/"
							+ jacocoPluginMavenFolderAddForCompilation[n - 2] + "/"
							+ jacocoPluginMavenFolderAddForCompilation[n - 1] + "/"
							+ jacocoPluginMavenCompileCommandLine.get(i).replace("/", "#") + jacocoLastPart);
		}

		for (int i = 0; i < coberturaPluginMavenCompileCommandLine.size(); i++) {
			coberturaPluginMavenCompileCommandLine.set(i,
					coberturaFirstPart + " " + coberturaPluginMavenFolderAddForCompilation[n - 3] + "/"
							+ coberturaPluginMavenFolderAddForCompilation[n - 2] + "/"
							+ coberturaPluginMavenFolderAddForCompilation[n - 1] + "/"
							+ coberturaPluginMavenCompileCommandLine.get(i).replace("/", "#") + coberturaLastPart);
		}

		myUtils.writeUrlInFile(jacocoPluginMavenCompileCommandLine,
				http.getJacocoPluginProjectMavenCompileCommandLineBatFilename());
		myUtils.writeUrlInFile(coberturaPluginMavenCompileCommandLine,
				http.getCoberturaPluginProjectMavenCompileCommandLineBatFilename());

		System.out.println("End generating Maven Compile CommandLine");
	}

	public void creatingGradlePlugingJacocoAndCoberturaCompileCommandLine() throws Exception {

		HttpURLConnect http = new HttpURLConnect();
		UtilsSortingProjects myUtils = new UtilsSortingProjects();
		List<String> jacocoPluginGradleCompileCommandLine = new ArrayList<String>();
		List<String> coberturaPluginGradleCompileCommandLine = new ArrayList<String>();

		System.out.println("Starting generating Gradle Compile CommandLine");

		jacocoPluginGradleCompileCommandLine = (myUtils.readUrlFromFile(http.getJacocoPluginProjectGradleFileName()));

		coberturaPluginGradleCompileCommandLine = (myUtils
				.readUrlFromFile(http.getCoberturaPluginProjectGradleFileName()));

		String[] jacocoPluginGradleFolderAddForCompilation = http.getJacocoPluginGradleDownloadedProjectDirectory()
				.split("/");

		String[] coberturaPluginGradleFolderAddForCompilation = http
				.getCoberturaPluginGradleDownloadedProjectDirectory().split("/");

		int n = jacocoPluginGradleFolderAddForCompilation.length;

		File jacocoGoodCompiled = new File(http.getJacocoPluginProjectGradleGoodCompiledProjectFilename());

		File coberturaGoodCompiled = new File(http.getCoberturaPluginProjectGradleGoodCompiledProjectFilename());

		String jacocoFirstPart = "@echo off \r\n Set var=call gradle clean build test --continue -p";

		String coberturaFirstPart = "@echo off \r\n Set var=call gradle clean build test --continue -p";

		String jacocoLastPart = "\r\n echo executing Command: %var% \r\n %var% \r\n IF %ERRORLEVEL% EQU 0 ( "
				+ "\r\n echo ECHO #####GOOD COMPILED PROJECT##### \r\n echo %var% \r\n echo %var% 1>> "
				+ jacocoGoodCompiled.getName() + " \r\n"
				+ ")ELSE ( \r\n echo ECHO -----FAILED----- \r\n echo %var% \r\n ) \r\n";

		String coberturaLastPart = "\r\n echo executing Command: %var% \r\n %var% \r\n IF %ERRORLEVEL% EQU 0 ( "
				+ "\r\n echo ECHO #####GOOD COMPILED PROJECT##### \r\n echo %var% \r\n echo %var% 1>> "
				+ coberturaGoodCompiled.getName() + " \r\n"
				+ ")ELSE ( \r\n echo ECHO -----FAILED----- \r\n echo %var% \r\n ) \r\n";

		for (int i = 0; i < jacocoPluginGradleCompileCommandLine.size(); i++) {
			jacocoPluginGradleCompileCommandLine.set(i,
					jacocoFirstPart + " " + jacocoPluginGradleFolderAddForCompilation[n - 3] + "/"
							+ jacocoPluginGradleFolderAddForCompilation[n - 2] + "/"
							+ jacocoPluginGradleFolderAddForCompilation[n - 1] + "/"
							+ jacocoPluginGradleCompileCommandLine.get(i).replace("/", "#") + jacocoLastPart);
		}

		for (int i = 0; i < coberturaPluginGradleCompileCommandLine.size(); i++) {
			coberturaPluginGradleCompileCommandLine.set(i,
					coberturaFirstPart + " " + coberturaPluginGradleFolderAddForCompilation[n - 3] + "/"
							+ coberturaPluginGradleFolderAddForCompilation[n - 2] + "/"
							+ coberturaPluginGradleFolderAddForCompilation[n - 1] + "/"
							+ coberturaPluginGradleCompileCommandLine.get(i).replace("/", "#") + coberturaLastPart);
		}

		myUtils.writeUrlInFile(jacocoPluginGradleCompileCommandLine,
				http.getJacocoPluginProjectGradleCompileCommandLineBatFilename());
		myUtils.writeUrlInFile(coberturaPluginGradleCompileCommandLine,
				http.getCoberturaPluginProjectGradleCompileCommandLineBatFilename());

		System.out.println("End generating Gradle Compile CommandLine");
	}

	public void creatingMavenAndGradlePlugingJacocoAndCoberturaSonartestCommandLine() throws Exception {

		HttpURLConnect http = new HttpURLConnect();
		UtilsSortingProjects myUtils = new UtilsSortingProjects();
		List<String> jacocoPluginMavenSonarTestCommandLine = new ArrayList<String>();
		List<String> coberturaPluginMavenSonarTestCommandLine = new ArrayList<String>();
		List<String> jacocoPluginGradleSonarTestCommandLine = new ArrayList<String>();
		List<String> coberturaPluginGradleSonarTestCommandLine = new ArrayList<String>();

		List<String> jacocoPluginMavenSonarTestGoodCommandLine = new ArrayList<String>();
		List<String> coberturaPluginMavenSonarTestGoodCommandLine = new ArrayList<String>();
		List<String> jacocoPluginGradleSonarTestGoodCommandLine = new ArrayList<String>();
		List<String> coberturaPluginGradleSonarTestGoodCommandLine = new ArrayList<String>();

		System.out.println("Starting generating Jacoco and Cobertura Maven and Gradle Sonar Test CommandLine");

		jacocoPluginMavenSonarTestCommandLine = (myUtils.readUrlFromFile(http.getJacocoPluginProjectMavenFileName()));

		coberturaPluginMavenSonarTestCommandLine = (myUtils
				.readUrlFromFile(http.getCoberturaPluginProjectMavenFileName()));

		jacocoPluginGradleSonarTestCommandLine = (myUtils.readUrlFromFile(http.getJacocoPluginProjectGradleFileName()));

		coberturaPluginGradleSonarTestCommandLine = (myUtils
				.readUrlFromFile(http.getCoberturaPluginProjectGradleFileName()));

		File jacocoPluginMavenDownloadedProjectAbsolutePath = new File(
				http.getJacocoPluginMavenDownloadedProjectDirectory());

		File coberturaPluginMavenDownloadedProjectAbsolutePath = new File(
				http.getCoberturaPluginMavenDownloadedProjectDirectory());

		File jacocoPluginGradleDownloadedProjectAbsolutePath = new File(
				http.getJacocoPluginGradleDownloadedProjectDirectory());

		File coberturaPluginGradleDownloadedProjectAbsolutePath = new File(
				http.getCoberturaPluginGradleDownloadedProjectDirectory());

		System.out.println("Jacoco Plugin Maven DownloadedProject AbsolutePath="
				+ jacocoPluginMavenDownloadedProjectAbsolutePath.getAbsolutePath() + "\texist="
				+ jacocoPluginMavenDownloadedProjectAbsolutePath.getAbsoluteFile().exists());

		System.out.println("Cobertura Plugin Maven DownloadedProject AbsolutePath="
				+ coberturaPluginMavenDownloadedProjectAbsolutePath.getAbsolutePath() + "\texist="
				+ coberturaPluginMavenDownloadedProjectAbsolutePath.getAbsoluteFile().exists());

		System.out.println("Jacoco Plugin Gradle DownloadedProject AbsolutePath="
				+ jacocoPluginGradleDownloadedProjectAbsolutePath.getAbsolutePath() + "\texist="
				+ jacocoPluginGradleDownloadedProjectAbsolutePath.getAbsoluteFile().exists());

		System.out.println("Cobertura Plugin Gradle DownloadedProject Folder="
				+ coberturaPluginGradleDownloadedProjectAbsolutePath.getAbsolutePath() + "\texist="
				+ coberturaPluginGradleDownloadedProjectAbsolutePath.getAbsoluteFile().exists());

		// adapting to allow the generatio of at soar bat files before te exectio of git
		// comd lie to creat foldes
		if ((1 == 1) || (jacocoPluginMavenDownloadedProjectAbsolutePath.exists() == true
				&& coberturaPluginMavenDownloadedProjectAbsolutePath.exists() == true
				&& jacocoPluginGradleDownloadedProjectAbsolutePath.exists() == true
				&& coberturaPluginGradleDownloadedProjectAbsolutePath.exists() == true)) {

			String sonarJacocoPluginMavenBaseDir = jacocoPluginMavenDownloadedProjectAbsolutePath.getAbsolutePath();

			String sonarCoberturaPluginMavenBaseDir = coberturaPluginMavenDownloadedProjectAbsolutePath
					.getAbsolutePath();

			String sonarJacocoPluginGradleBaseDir = jacocoPluginGradleDownloadedProjectAbsolutePath.getAbsolutePath();

			String sonarCoberturaPluginGradleBaseDir = coberturaPluginGradleDownloadedProjectAbsolutePath
					.getAbsolutePath();

			String sonarScannerLocation = http.getSonnarScannerBatFileLocation();

			String sonarHostUrl = http.getSonarHosturl();

			String sonarServerLogin = http.getSonarServerUser();

			String sonarServerPassword = http.getSonarServerPassword();

			File testingFileAvaibility;

			File jacocoMavenGoodSonarTest = new File(http.getJacocoPluginProjectMavenGoodSonarTestFilename());

			File coberturaMavenGoodSonarTest = new File(http.getCoberturaPluginProjectMavenGoodSonarTestFilename());

			File jacocoGradleGoodSonarTest = new File(http.getJacocoPluginProjectGradleGoodSonarTestFilename());

			File coberturaGradleGoodSonarTest = new File(http.getCoberturaPluginProjectGradleGoodSonarTestFilename());

			String baseDir = "";

			String reportPath = "";

			int numberGoodCompiledProject = 0;

			int numberGoodCompiledProjectTotal = 0;

			String jacocoMavenFirstPart = "@echo off \r\n Set var=";

			String jacocoMavenLastPart = "\r\n echo executing Command: %var% \r\n %var% \r\n IF %ERRORLEVEL% EQU 0 ( "
					+ "\r\n echo ECHO #####GOOD SONAR TESTED PROJECT##### \r\n echo %var% \r\n echo %var% 1>> "
					+ jacocoMavenGoodSonarTest.getName() + " \r\n"
					+ ")ELSE ( \r\n echo ECHO -----FAILED----- \r\n echo %var% \r\n ) \r\n";

			String erasePart1 = "@echo off \r\ndel /f /s /q";
			String erasePart2 = "RD /S /Q";

			for (int i = 0; i < jacocoPluginMavenSonarTestCommandLine.size(); i++) {

				baseDir = sonarJacocoPluginMavenBaseDir + "\\"
						+ jacocoPluginMavenSonarTestCommandLine.get(i).replace("/", "#");

				reportPath = "target/jacoco.exec";

				testingFileAvaibility = new File(baseDir + "\\" + reportPath.replace("/", "\\"));

				System.out.println("testingFileAvaibility :" + testingFileAvaibility.getAbsolutePath());

				if (testingFileAvaibility.exists() == true) {

					jacocoPluginMavenSonarTestGoodCommandLine.add(jacocoMavenFirstPart + "call \""
							+ sonarScannerLocation + "\"" + " " + "-Dsonar.host.url=" + sonarHostUrl + " "
							+ "-Dsonar.projectName=" + jacocoPluginMavenSonarTestCommandLine.get(i).replace("/", "#")
							+ " " + "-Dsonar.projectVersion=1.0" + " " + "-Dsonar.projectKey="
							+ jacocoPluginMavenSonarTestCommandLine.get(i).replace("/", ":") + " "
							+ "-Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java \"-Dsonar.projectBaseDir="
							+ baseDir + "\"" + " -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath="
							+ reportPath + " " + " -Dsonar.login=" + sonarServerLogin + " " + "-Dsonar.password="
							+ sonarServerPassword + jacocoMavenLastPart);

					System.out.println("ReportFile Found At :" + testingFileAvaibility.getAbsolutePath());

					numberGoodCompiledProject++;
					numberGoodCompiledProjectTotal++;
				}

				else {
					jacocoPluginMavenSonarTestGoodCommandLine
							.add(erasePart1 + " \"" + baseDir + "\"\r\n" + erasePart2 + " \"" + baseDir + "\"\r\n");
				}

			}

			System.out.println("Number of Maven Jacoco Report file found:" + numberGoodCompiledProject);

			numberGoodCompiledProject = 0;

			String coberturaMavenFirstPart = "@echo off \r\n Set var=";

			String coberturaMavenLastPart = "\r\n echo executing Command: %var% \r\n %var% \r\n IF %ERRORLEVEL% EQU 0 ( "
					+ "\r\n echo ECHO #####GOOD SONAR TESTED PROJECT##### \r\n echo %var% \r\n echo %var% 1>> "
					+ coberturaMavenGoodSonarTest.getName() + " \r\n"
					+ ")ELSE ( \r\n echo ECHO -----FAILED----- \r\n echo %var% \r\n ) \r\n";

			for (int i = 0; i < coberturaPluginMavenSonarTestCommandLine.size(); i++) {

				baseDir = sonarCoberturaPluginMavenBaseDir + "\\"
						+ coberturaPluginMavenSonarTestCommandLine.get(i).replace("/", "#");

				reportPath = "target/site/cobertura/coverage.xml";

				testingFileAvaibility = new File(baseDir + "\\" + reportPath.replace("/", "\\"));

				System.out.println("testingFileAvaibility :" + testingFileAvaibility.getAbsolutePath());

				if (testingFileAvaibility.exists() == true) {

					coberturaPluginMavenSonarTestGoodCommandLine.add(coberturaMavenFirstPart + "call \""
							+ sonarScannerLocation + "\"" + " " + "-Dsonar.host.url=" + sonarHostUrl + " "
							+ "-Dsonar.projectName=" + coberturaPluginMavenSonarTestCommandLine.get(i).replace("/", "#")
							+ " " + "-Dsonar.projectVersion=1.0" + " " + "-Dsonar.projectKey="
							+ coberturaPluginMavenSonarTestCommandLine.get(i).replace("/", ":") + " "
							+ "-Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java \"-Dsonar.projectBaseDir="
							+ baseDir + "\"" + " -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath="
							+ reportPath + " " + " -Dsonar.login=" + sonarServerLogin + " " + "-Dsonar.password="
							+ sonarServerPassword + coberturaMavenLastPart);

					System.out.println("ReportFile Found At :" + testingFileAvaibility.getAbsolutePath());

					numberGoodCompiledProject++;
					numberGoodCompiledProjectTotal++;
				}

				else {
					coberturaPluginMavenSonarTestGoodCommandLine
							.add(erasePart1 + " \"" + baseDir + "\"\r\n" + erasePart2 + " \"" + baseDir + "\"\r\n");
				}
			}

			System.out.println("Number of Maven Cobertura Report file found:" + numberGoodCompiledProject);

			numberGoodCompiledProject = 0;

			String jacocoGradleFirstPart = "@echo off \r\n Set var=";

			String jacocoGradleLastPart = "\r\n echo executing Command: %var% \r\n %var% \r\n IF %ERRORLEVEL% EQU 0 ( "
					+ "\r\n echo ECHO #####GOOD SONAR TESTED PROJECT##### \r\n echo %var% \r\n echo %var% 1>> "
					+ jacocoGradleGoodSonarTest.getName() + " \r\n"
					+ ")ELSE ( \r\n echo ECHO -----FAILED----- \r\n echo %var% \r\n ) \r\n";

			for (int i = 0; i < jacocoPluginGradleSonarTestCommandLine.size(); i++) {

				baseDir = sonarJacocoPluginGradleBaseDir + "\\"
						+ jacocoPluginGradleSonarTestCommandLine.get(i).replace("/", "#");

				reportPath = "build/jacoco/test.exec";

				testingFileAvaibility = new File(baseDir + "\\" + reportPath.replace("/", "\\"));

				System.out.println("testingFileAvaibility :" + testingFileAvaibility.getAbsolutePath());

				if (testingFileAvaibility.exists() == true) {
					jacocoPluginGradleSonarTestGoodCommandLine.add(jacocoGradleFirstPart + "call \""
							+ sonarScannerLocation + "\"" + " " + "-Dsonar.host.url=" + sonarHostUrl + " "
							+ "-Dsonar.projectName=" + jacocoPluginGradleSonarTestCommandLine.get(i).replace("/", "#")
							+ " " + "-Dsonar.projectVersion=1.0" + " " + "-Dsonar.projectKey="
							+ jacocoPluginGradleSonarTestCommandLine.get(i).replace("/", ":") + " "
							+ "-Dsonar.java.binaries=build/classes/java/main  -Dsonar.java.test.binaries=build/classes/java/test -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java \"-Dsonar.projectBaseDir="
							+ baseDir + "\"" + " -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath="
							+ reportPath + " " + " -Dsonar.login=" + sonarServerLogin + " " + "-Dsonar.password="
							+ sonarServerPassword + jacocoGradleLastPart);

					System.out.println("ReportFile Found At :" + testingFileAvaibility.getAbsolutePath());

					numberGoodCompiledProject++;
					numberGoodCompiledProjectTotal++;
				}

				else {
					jacocoPluginGradleSonarTestGoodCommandLine
							.add(erasePart1 + " \"" + baseDir + "\"\r\n" + erasePart2 + " \"" + baseDir + "\"\r\n");
				}
			}

			System.out.println("Number of Gradle Jacoco Report file found:" + numberGoodCompiledProject);

			numberGoodCompiledProject = 0;

			String coberturaGradleFirstPart = "@echo off \r\n Set var=";

			String coberturaGradleLastPart = "\r\n echo executing Command: %var% \r\n %var% \r\n IF %ERRORLEVEL% EQU 0 ( "
					+ "\r\n echo ECHO #####GOOD SONAR TESTED PROJECT##### \r\n echo %var% \r\n echo %var% 1>> "
					+ coberturaGradleGoodSonarTest.getName() + " \r\n"
					+ ")ELSE ( \r\n echo ECHO -----FAILED----- \r\n echo %var% \r\n ) \r\n";

			for (int i = 0; i < coberturaPluginGradleSonarTestCommandLine.size(); i++) {

				baseDir = sonarCoberturaPluginGradleBaseDir + "\\"
						+ coberturaPluginGradleSonarTestCommandLine.get(i).replace("/", "#");

				reportPath = "build/reports/cobertura/coverage.xml";

				testingFileAvaibility = new File(baseDir + "\\" + reportPath.replace("/", "\\"));

				System.out.println("testingFileAvaibility :" + testingFileAvaibility.getAbsolutePath());

				if (testingFileAvaibility.exists() == true) {

					coberturaPluginGradleSonarTestGoodCommandLine.add(coberturaGradleFirstPart + "call \""
							+ sonarScannerLocation + "\"" + " " + "-Dsonar.host.url=" + sonarHostUrl + " "
							+ "-Dsonar.projectName="
							+ coberturaPluginGradleSonarTestCommandLine.get(i).replace("/", "#") + " "
							+ "-Dsonar.projectVersion=1.0" + " " + "-Dsonar.projectKey="
							+ coberturaPluginGradleSonarTestCommandLine.get(i).replace("/", ":") + " "
							+ "-Dsonar.java.binaries=build/classes/java/main  -Dsonar.java.test.binaries=build/classes/java/test -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java \"-Dsonar.projectBaseDir="
							+ baseDir + "\"" + " -Dsonar.java.coveragePlugin=cobertura -Dsonar.cobertura.reportPath="
							+ reportPath + " " + " -Dsonar.login=" + sonarServerLogin + " " + "-Dsonar.password="
							+ sonarServerPassword + coberturaGradleLastPart);

					System.out.println("ReportFile Found At :" + testingFileAvaibility.getAbsolutePath());

					numberGoodCompiledProject++;
					numberGoodCompiledProjectTotal++;
				}

				else {
					coberturaPluginGradleSonarTestGoodCommandLine
							.add(erasePart1 + " \"" + baseDir + "\"\r\n" + erasePart2 + " \"" + baseDir + "\"\r\n");
				}

			}

			System.out.println("Number of Gradle Cobertura Report file found:" + numberGoodCompiledProject);

			myUtils.writeUrlInFile(jacocoPluginMavenSonarTestGoodCommandLine,
					http.getJacocoPluginProjectMavenSonarTestCommandLineBatFilename());
			myUtils.writeUrlInFile(coberturaPluginMavenSonarTestGoodCommandLine,
					http.getCoberturaPluginProjectMavenSonarTestCommandLineBatFilename());
			myUtils.writeUrlInFile(jacocoPluginGradleSonarTestGoodCommandLine,
					http.getJacocoPluginProjectGradleSonarTestCommandLineBatFilename());
			myUtils.writeUrlInFile(coberturaPluginGradleSonarTestGoodCommandLine,
					http.getCoberturaPluginProjectGradleSonarTestCommandLineBatFilename());

			System.out.println("End generating Jacoco and Cobertura Maven and Gradle Sonar Test CommandLine");

			System.out.println("\n\n\n Total Number of Report file found:" + numberGoodCompiledProjectTotal + "\n\n");

		} else {
			System.out.println("The Project Directory Could not be found");
		}
	}

	public void creatingUniqueMavenGitCompileAndSonartestWithJacocoAgentCommandLine() throws Exception {

		HttpURLConnect http = new HttpURLConnect();
		UtilsSortingProjects myUtils = new UtilsSortingProjects();
		List<String> uniqueCommandLine = new ArrayList<String>();
		List<String> uniqueCommandLineCopy = new ArrayList<String>();

		System.out.println("Starting generating the unique complet CommandLine");

		uniqueCommandLine = (myUtils
				.readUrlFromFile(http.getMavenGoodStruturedProjectUniqueGitCompileAndSonarTestFileName()));

		File mavenGoodStructuredProjectDownloadFileName = new File(
				http.getMavenExploitableProjectUniqueGitCompileAndSonarTestFileName());

		// System.out.println("Maven Good Structured DownloadedProject
		// Folder="+mavenGoodStructuredProjectDownloadFileName.getAbsolutePath()+"\texist="+mavenGoodStructuredProjectDownloadFileName.getAbsoluteFile().exists());

		// String
		// mavenGoodStructuredProjectBaseDir=mavenGoodStructuredProjectDownloadFileName.getAbsolutePath();

		String sonarScannerLocation = http.getSonnarScannerBatFileLocation();

		String sonarHostUrl = http.getSonarHosturl();

		String sonarServerLogin = http.getSonarServerUser();

		String sonarServerPassword = http.getSonarServerPassword();

		String gitFirstPart = "@echo off \r\n set var=call git clone ";
		String gitSecondPart = "https://github.com/";
		String gitLastPart = ".git";

		String gitDownloadDir = "";

		String[] gitDownloadFolder = http.getMavenGoodStruturedDownloadedProjectDirectory().split("/");

		int n = gitDownloadFolder.length;

		String gitCommandLine = "";

		String gitTemp = "";

		String mavenCompileDir = "";

		String mavenCommandLine = "";

		String mavenTemp = "";

		String sonarTestBaseDir = http.getMavenGoodStruturedDownloadedProjectDirectory();

		String sonarTestCommandLine = "";

		File testingFileAvaibility;

		String reportPath = "";

		String sonarTestFirstPart = "@echo off \r\n Set var=";

		String sonarTestTemp = "";

		uniqueCommandLineCopy.add("git config --system core.longpaths true \r\n");
		uniqueCommandLineCopy.add("setlocal enableDelayedExpansion \r\n");

		for (int i = 0; i < uniqueCommandLine.size(); i++) {

			gitDownloadDir = gitDownloadFolder[n - 2] + "/" + gitDownloadFolder[n - 1] + "/"
					+ uniqueCommandLine.get(i).replace("/", "#");

			gitCommandLine = gitFirstPart + gitSecondPart + uniqueCommandLine.get(i) + gitLastPart + " "
					+ gitDownloadDir;

			gitTemp = "\r\n echo executing git command line: %var% \r\n %var% \r\n IF %ERRORLEVEL% EQU 0 ( \r\n"
					+ "echo Git Command Success \r\n";

			mavenCompileDir = gitDownloadDir;

			mavenCommandLine = "@echo off \r\n set var=call mvn -DargLine=-javaagent:"
					+ http.getJacocoAgentFileLocation() + "=output=file,destfile=target/jacoco.exec"
					+ " clean test -f  " + mavenCompileDir;

			reportPath = "target/jacoco.exec";

			mavenTemp = " \r\n echo executing maven Command Line: !var! \r\n !var! \r\n IF %ERRORLEVEL% EQU 0 "
					+ "IF EXIST " + gitDownloadDir.replace("/", "\\") + "\\" + reportPath.replace("/", "\\") + " ( \r\n"
					+ "echo Maven Compilation Command Success And Jacoco Repoprt Success \r\n";

			testingFileAvaibility = new File(sonarTestBaseDir);

			System.out.println("testingFileAvaibility :" + testingFileAvaibility.getAbsolutePath());

			sonarTestCommandLine = sonarTestFirstPart + "call \"" + sonarScannerLocation + "\"" + " "
					+ "-Dsonar.host.url=" + sonarHostUrl + " " + "-Dsonar.projectName="
					+ uniqueCommandLine.get(i).replace("/", "#") + " " + "-Dsonar.projectVersion=1.0" + " "
					+ "-Dsonar.projectKey=" + uniqueCommandLine.get(i).replace("/", ":") + " "
					+ "-Dsonar.java.binaries=target/classes  -Dsonar.java.test.binaries=target/test-classes -Dsonar.tests=src/test/java -Dsonar.sources=src/main/java \"-Dsonar.projectBaseDir="
					+ testingFileAvaibility.getAbsolutePath().replace("/", "\\") + "\\"
					+ uniqueCommandLine.get(i).replace("/", "#") + "\""
					+ " -Dsonar.java.coveragePlugin=jacoco -Dsonar.jacoco.reportPath=" + reportPath + " "
					+ " -Dsonar.login=" + sonarServerLogin + " " + "-Dsonar.password=" + sonarServerPassword;

			sonarTestTemp = "\r\n echo executing SonarTest Commmand Line:!var! \r\n !var! \r\n"
					+ "IF %ERRORLEVEL% EQU 0 (\r\n echo SonarTest Succes \r\n echo " + uniqueCommandLine.get(i) + " 1>>"
					+ mavenGoodStructuredProjectDownloadFileName.getName() + "\r\n"
					+ ") ELSE ( \r\n echo Sonar Test error \r\n RD /S /Q " + gitDownloadDir.replace("/", "\\")
					+ "\r\n ) \r\n )" + "ELSE ( \r\n  echo Maven compile error or no generated reportPath \r\n"
					+ " echo Maven exit code: %ERRORLEVEL% \r\n RD /S /Q " + gitDownloadDir.replace("/", "\\")
					+ "\r\n ) \r\n )" + "ELSE ( \r\n echo git error \r\n RD /S /Q " + gitDownloadDir.replace("/", "\\")
					+ "\r\n ) \r\n";

			uniqueCommandLineCopy.add(
					gitCommandLine + gitTemp + mavenCommandLine + mavenTemp + sonarTestCommandLine + sonarTestTemp);
		}

		myUtils.writeUrlInFile(uniqueCommandLineCopy,
				http.getMavenGoodStruturedProjectUniqueGitCompileAndSonarTestCommandLine());

		System.out.println("End Generation of Unique CommandLine");
	}

}
