package testing;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;


//import javax.net.ssl.HttpsURLConnection;

public class HttpURLConnect {

	private final String USER_AGENT = "Mozilla/5.0";

	//private final String base_url = "https://gitlab.com/api/v4/";
	
	private  String base_url ="https://api.github.com";
	
	private String workingDirectory="WORKINGDIRECTORY";
	
	private String batDirectory=getWorkingDirectory()+"/BatFiles";
	
	//private String gitBatDirectory=getBatDirectory()+"/GIT";
	
	//private String mavenBatDirectory=getBatDirectory()+"/MAVEN";
	
	//private String gradleBatDirectory=getBatDirectory()+"/GRADLE";

	private String gitBatDirectory=getBatDirectory()+"";
	
	private String mavenBatDirectory=getBatDirectory()+"";
	
	private String gradleBatDirectory=getBatDirectory()+"";
	
	private String downloadedProject = getBatDirectory()+"/ALLPROJECTS";
	
	private String mavenGoodStruturedDownloadedProjectDirectory = getDownloadedProject()+"/NEW_MAVEN_PROJECTS";
	
	private String jacocoPluginMavenDownloadedProjectDirectory = getDownloadedProject()+"/MAVEN/JACOCO";
	
	private String jacocoPluginGradleDownloadedProjectDirectory = getDownloadedProject()+"/GRADLE/JACOCO";
	
	private String coberturaPluginMavenDownloadedProjectDirectory = getDownloadedProject()+"/MAVEN/COBERTURA";
	
	private String coberturaPluginGradleDownloadedProjectDirectory = getDownloadedProject()+"/GRADLE/COBERTURA";
	
	private String sonnarScannerBatFileLocation="C:\\sonar-scanner-cli-4.0.0.1744-windows\\sonar-scanner-4.0.0.1744-windows\\bin\\sonar-scanner.bat";
	
	private String jacocoAgentFileLocation="C:\\jacoco-maven-plugin-0.8.3\\jacoco-maven-plugin-0.8.3.jar";
	


	private String langageJavaUrlsFileName=getWorkingDirectory()+"/langageJavaUrls.txt";
	

	private String mavenProjectUrlsFileName=getWorkingDirectory()+"/mavenProjectUrls.txt";
	
	private String gradleProjectUrlsFileName=getWorkingDirectory()+"/gradleProjectUrls.txt";
	
	private String excelResultsFileName=getWorkingDirectory()+"/excelResultsFileName.xlsx";
	

	private String jacocoPluginProjectMavenFileName=getWorkingDirectory()+"/JacocoPluginProjectMaven.txt";
	
	private String jacocoPluginProjectGradleFileName=getWorkingDirectory()+"/JacocoPluginProjectGradle.txt";
	
	private String coberturaPluginProjectGradleFileName=getWorkingDirectory()+"/CoberturaPluginProjectGradle.txt";
	
	private String coberturaPluginProjectMavenFileName=getWorkingDirectory()+"/CoberturaPluginProjectMaven.txt";
	
	private String mavenGoodStruturedProjectUniqueGitCompileAndSonarTestFileName=getWorkingDirectory()+"/mavenGoodStruturedProjectUniqueGitCompileAndSonarTestFileName.txt";
	
	private String mavenExploitableProjectUniqueGitCompileAndSonarTestFileName=getWorkingDirectory()+"/mavenExploitableProjectUniqueGitCompileAndSonarTestFileName.txt";
	
	private String jacocoPluginProjectMavenGoodCompiledProjectFilename=getBatDirectory()+"/JacocoPluginProjectMavenGoodCompiledProjectFilename.txt";
	
	private String jacocoPluginProjectGradleGoodCompiledProjectFilename=getBatDirectory()+"/JacocoPluginProjectGradleGoodCompiledProjectFilename.txt";
	
	private String CoberturaPluginProjectMavenGoodCompiledProjectFilename=getBatDirectory()+"/CoberturaPluginProjectMavenGoodCompiledProjectFilename.txt";
	
	private String CoberturaPluginProjectGradleGoodCompiledProjectFilename=getBatDirectory()+"/CoberturaPluginProjectGradleGoodCompiledProjectFilename.txt";
	
	private String gitGoodDownloadedProjectFileName=getBatDirectory()+"/GitGoodDownloadedProjectFilename.txt";
	
	private String jacocoPluginProjectMavenGoodSonarTestFilename=getBatDirectory()+"/JacocoPluginProjectMavenGoodSonarTestFilename.txt";
	
	private String jacocoPluginProjectGradleGoodSonarTestFilename=getBatDirectory()+"/JacocoPluginProjectGradleGoodSonarTestFilename.txt";
	
	private String CoberturaPluginProjectMavenGoodSonarTestFilename=getBatDirectory()+"/CoberturaPluginProjectMavenGoodSonarTestFilename.txt";
	
	private String CoberturaPluginProjectGradleGoodSonarTestFilename=getBatDirectory()+"/CoberturaPluginProjectGradleGoodSonarTestFilename.txt";
	
	private String mavenGoodStruturedProjectUniqueGitCompileAndSonarTestCommandLine = getBatDirectory()+"/mavenGoodStruturedProjectUniqueGitCompileAndSonarTestCommandLine.bat";

	private String jacocoPluginProjectMavenGitCommandLineBatFileName=getGitBatDirectory()+"/JacocoPluginProjectMavenGitCommandLineBat.bat";
	
	private String jacocoPluginProjectGradleGitCommandLineBatFileName=getGitBatDirectory()+"/JacocoPluginProjectGradleGitCommandLineBat.bat";
	
	private String coberturaPluginProjectGradleGitCommandLineBatFileName=getGitBatDirectory()+"/CoberturaPluginProjectGradleGitCommandLineBat.bat";
	
	private String coberturaPluginProjectMavenGitCommandLineBatFileName=getGitBatDirectory()+"/CoberturaPluginProjectMavenGitCommandLineBat.bat";
	
	
	private String jacocoPluginProjectMavenCompileCommandLineBatFilename=getMavenBatDirectory()+"/jacocoPluginProjectMavenCompileCommandLineBat.bat";

	private String coberturaPluginProjectMavenCompileCommandLineBatFilename=getMavenBatDirectory()+"/coberturaPluginProjectMavenCompileCommandLineBat.bat";
	
	private String jacocoPluginProjectGradleCompileCommandLineBatFilename=getGradleBatDirectory()+"/jacocoPluginProjectGradleCompileCommandLineBat.bat";
	
	private String coberturaPluginProjectGradleCompileCommandLineBatFilename=getGradleBatDirectory()+"/coberturaPluginProjectGradleCompileCommandLineBat.bat";
	
	
	private String jacocoPluginProjectMavenSonarTestCommandLineBatFilename=getMavenBatDirectory()+"/jacocoPluginProjectMavenSonarTestCommandLineBat.bat";

	private String coberturaPluginProjectMavenSonarTestCommandLineBatFilename=getMavenBatDirectory()+"/coberturaPluginProjectMavenSonarTestCommandLineBat.bat";
	
	private String jacocoPluginProjectGradleSonarTestCommandLineBatFilename=getGradleBatDirectory()+"/jacocoPluginProjectGradleSonarTestCommandLineBat.bat";
	
	private String coberturaPluginProjectGradleSonarTestCommandLineBatFilename=getGradleBatDirectory()+"/coberturaPluginProjectGradleSonarTestCommandLineBat.bat";
	
	private int urlPage=1;
	private int urlPerPage=100;
	private int since=100;


	private String path = "";
	
	private String path1 = "/search/repositories?q=language:java&page=";
	
	private String path2="/legacy/repos/search/language=java?start_page=";

	private String access_token="c818b41a65cf9e388083a466b6a6e33a27697ff7";
	
	private String sonarHosturl="http://localhost:9000/";
	
	private String sonarServerUser="admin";
	
	private String sonarServerPassword="admin";
	
	
	

	public String getExcelResultsFileName() {
		return excelResultsFileName;
	}

	public void setExcelResultsFileName(String excelResultsFileName) {
		this.excelResultsFileName = excelResultsFileName;
	}

	public String getSonarServerUser() {
		return sonarServerUser;
	}

	public void setSonarServerUser(String sonarServerUser) {
		this.sonarServerUser = sonarServerUser;
	}

	public String getSonarServerPassword() {
		return sonarServerPassword;
	}

	public void setSonarServerPassword(String sonarServerPassword) {
		this.sonarServerPassword = sonarServerPassword;
	}

	public String getAccess_token() {
		return access_token;
	}

	public void setAccess_token(String access_token) {
		this.access_token = access_token;
	}

	public String getSonnarScannerBatFileLocation() {
		return sonnarScannerBatFileLocation;
	}

	public void setSonnarScannerBatFileLocation(String sonnarScannerBatFileLocation) {
		this.sonnarScannerBatFileLocation = sonnarScannerBatFileLocation;
	}

	public String getSonarHosturl() {
		return sonarHosturl;
	}

	public void setSonarHosturl(String sonarHosturl) {
		this.sonarHosturl = sonarHosturl;
	}

	public String getWorkingDirectory() {
		return workingDirectory;
	}

	public void setWorkingDirectory(String workingDirectory) {
		this.workingDirectory = workingDirectory;
	}
	
	public String getBatDirectory() {
		return batDirectory;
	}

	public void setBatDirectory(String batDirectory) {
		this.batDirectory = batDirectory;
	}

	public String getGitBatDirectory() {
		return gitBatDirectory;
	}

	public void setGitBatDirectory(String gitBatDirectory) {
		this.gitBatDirectory = gitBatDirectory;
	}

	public String getMavenBatDirectory() {
		return mavenBatDirectory;
	}

	public void setMavenBatDirectory(String mavenBatDirectory) {
		this.mavenBatDirectory = mavenBatDirectory;
	}

	public String getGradleBatDirectory() {
		return gradleBatDirectory;
	}

	public void setGradleBatDirectory(String gradleBatDirectory) {
		this.gradleBatDirectory = gradleBatDirectory;
	}
	
	
	
	public int getSince() {
		return since;
	}

	public void setSince(int since) {
		this.since = since;
	}
	
	protected String getBase_url() {
		return base_url;
	}

	protected void setBase_url(String base_url) {
		this.base_url = base_url;
	}
	
	protected void setPath(String strPath) {
		this.path=strPath;
	}
	
	protected void setPath2(String strPath) {
		this.path2=strPath;
	}
	
	protected void setPath1(String strPath) {
		this.path1=strPath;
	}
	
	protected String getPath() {
		return path;
	}
	
	
	protected String getPath1() {
		return path1;
	}
	
	protected String getPath2() {
		return path2;
	}
	
	protected int getUrlPage() {
		return this.urlPage;
	}

	protected void setUrlPage(int urlPage) {
		this.urlPage = urlPage;
	}

	protected int getUrlPerPage() {
		return this.urlPerPage;
	}

	protected void setUrlPerPage(int urlPerPage) {
		this.urlPerPage = urlPerPage;
	}


	public String getLangageJavaUrlsFileName() {
		return langageJavaUrlsFileName;
	}

	public void setLangageJavaUrlsFileName(String langageJavaUrls) {
		this.langageJavaUrlsFileName = langageJavaUrls;
	}

	public String getMavenProjectUrlsFileName() {
		return mavenProjectUrlsFileName;
	}

	public void setMavenProjectUrlsFileName(String mavenProjectUrls) {
		this.mavenProjectUrlsFileName = mavenProjectUrls;
	}

	
	public String getGradleProjectUrlsFileName() {
		return gradleProjectUrlsFileName;
	}

	public void setGradleProjectUrlsFileName(String gradleProjectUrls) {
		this.gradleProjectUrlsFileName = gradleProjectUrls;
	}

	public String getJacocoPluginProjectMavenFileName() {
		return jacocoPluginProjectMavenFileName;
	}

	public void setJacocoPluginProjectMavenFileName(String jacocoPluginProjectMaven) {
		this.jacocoPluginProjectMavenFileName = jacocoPluginProjectMaven;
	}

	public String getJacocoPluginProjectGradleFileName() {
		return jacocoPluginProjectGradleFileName;
	}

	public void setJacocoPluginProjectGradleFileName(String jacocoPluginProjectGradle) {
		this.jacocoPluginProjectGradleFileName = jacocoPluginProjectGradle;
	}
	
	
	public String getCoberturaPluginProjectGradleFileName() {
		return coberturaPluginProjectGradleFileName;
	}

	public void setCoberturaPluginProjectGradleFileName(String coberturaPluginProjectGradle) {
		this.coberturaPluginProjectGradleFileName = coberturaPluginProjectGradle;
	}

	public String getCoberturaPluginProjectMavenFileName() {
		return coberturaPluginProjectMavenFileName;
	}

	public void setCoberturaPluginProjectMavenFileName(String coberturaPluginProjectMaven) {
		this.coberturaPluginProjectMavenFileName = coberturaPluginProjectMaven;
	}
	
	
	
	public String getJacocoPluginProjectMavenGoodSonarTestFilename() {
		return jacocoPluginProjectMavenGoodSonarTestFilename;
	}

	public void setJacocoPluginProjectMavenGoodSonarTestFilename(String jacocoPluginProjectMavenGoodSonarTestFilename) {
		this.jacocoPluginProjectMavenGoodSonarTestFilename = jacocoPluginProjectMavenGoodSonarTestFilename;
	}

	public String getJacocoPluginProjectGradleGoodSonarTestFilename() {
		return jacocoPluginProjectGradleGoodSonarTestFilename;
	}

	public void setJacocoPluginProjectGradleGoodSonarTestFilename(String jacocoPluginProjectGradleGoodSonarTestFilename) {
		this.jacocoPluginProjectGradleGoodSonarTestFilename = jacocoPluginProjectGradleGoodSonarTestFilename;
	}

	public String getCoberturaPluginProjectMavenGoodSonarTestFilename() {
		return CoberturaPluginProjectMavenGoodSonarTestFilename;
	}

	public void setCoberturaPluginProjectMavenGoodSonarTestFilename(
			String coberturaPluginProjectMavenGoodSonarTestFilename) {
		CoberturaPluginProjectMavenGoodSonarTestFilename = coberturaPluginProjectMavenGoodSonarTestFilename;
	}

	public String getCoberturaPluginProjectGradleGoodSonarTestFilename() {
		return CoberturaPluginProjectGradleGoodSonarTestFilename;
	}

	public void setCoberturaPluginProjectGradleGoodSonarTestFilename(
			String coberturaPluginProjectGradleGoodSonarTestFilename) {
		CoberturaPluginProjectGradleGoodSonarTestFilename = coberturaPluginProjectGradleGoodSonarTestFilename;
	}

	public String getJacocoPluginProjectMavenGoodCompiledProjectFilename() {
		return jacocoPluginProjectMavenGoodCompiledProjectFilename;
	}

	public void setJacocoPluginProjectMavenGoodCompiledProjectFilename(
			String jacocoPluginProjectMavenGoodCompiledProjectFilename) {
		this.jacocoPluginProjectMavenGoodCompiledProjectFilename = jacocoPluginProjectMavenGoodCompiledProjectFilename;
	}

	public String getJacocoPluginProjectGradleGoodCompiledProjectFilename() {
		return jacocoPluginProjectGradleGoodCompiledProjectFilename;
	}

	public void setJacocoPluginProjectGradleGoodCompiledProjectFilename(
			String jacocoPluginProjectGradleGoodCompiledProjectFilename) {
		this.jacocoPluginProjectGradleGoodCompiledProjectFilename = jacocoPluginProjectGradleGoodCompiledProjectFilename;
	}

	public String getCoberturaPluginProjectMavenGoodCompiledProjectFilename() {
		return CoberturaPluginProjectMavenGoodCompiledProjectFilename;
	}

	public void setCoberturaPluginProjectMavenGoodCompiledProjectFilename(
			String coberturaPluginProjectMavenGoodCompiledProjectFilename) {
		CoberturaPluginProjectMavenGoodCompiledProjectFilename = coberturaPluginProjectMavenGoodCompiledProjectFilename;
	}

	public String getCoberturaPluginProjectGradleGoodCompiledProjectFilename() {
		return CoberturaPluginProjectGradleGoodCompiledProjectFilename;
	}

	public void setCoberturaPluginProjectGradleGoodCompiledProjectFilename(
			String coberturaPluginProjectGradleGoodCompiledProjectFilename) {
		CoberturaPluginProjectGradleGoodCompiledProjectFilename = coberturaPluginProjectGradleGoodCompiledProjectFilename;
	}
	
	

	public String getGitGoodDownloadedProjectFileName() {
		return gitGoodDownloadedProjectFileName;
	}

	public void setGitGoodDownloadedProjectFileName(String gitGoodDownloadedProjectFileName) {
		this.gitGoodDownloadedProjectFileName = gitGoodDownloadedProjectFileName;
	}

	public String getJacocoPluginProjectMavenGitCommandLineBatFileName() {
		return jacocoPluginProjectMavenGitCommandLineBatFileName;
	}

	public void setJacocoPluginProjectMavenGitCommandLineBatFileName(String jacocoPluginProjectMavenBat) {
		this.jacocoPluginProjectMavenGitCommandLineBatFileName = jacocoPluginProjectMavenBat;
	}

	public String getJacocoPluginProjectGradleGitCommandLineBatFileName() {
		return jacocoPluginProjectGradleGitCommandLineBatFileName;
	}

	public void setJacocoPluginProjectGradleGitCommandLineBatFileName(String jacocoPluginProjectGradleBat) {
		this.jacocoPluginProjectGradleGitCommandLineBatFileName = jacocoPluginProjectGradleBat;
	}

	public String getCoberturaPluginProjectGradleGitCommandLineBatFileName() {
		return coberturaPluginProjectGradleGitCommandLineBatFileName;
	}

	public void setCoberturaPluginProjectGradleGitCommandLineBatFileName(String coberturaPluginProjectGradleBat) {
		this.coberturaPluginProjectGradleGitCommandLineBatFileName = coberturaPluginProjectGradleBat;
	}

	public String getCoberturaPluginProjectMavenGitCommandLineBatFileName() {
		return coberturaPluginProjectMavenGitCommandLineBatFileName;
	}

	public void setCoberturaPluginProjectMavenGitCommandLineBatFileName(String coberturaPluginProjectMavenBat) {
		this.coberturaPluginProjectMavenGitCommandLineBatFileName = coberturaPluginProjectMavenBat;
	}
	
	
	
	
	
	public String getMavenExploitableProjectUniqueGitCompileAndSonarTestFileName() {
		return mavenExploitableProjectUniqueGitCompileAndSonarTestFileName;
	}

	public void setMavenExploitableProjectUniqueGitCompileAndSonarTestFileName(
			String mavenExploitableProjectUniqueGitCompileAndSonarTestFileName) {
		this.mavenExploitableProjectUniqueGitCompileAndSonarTestFileName = mavenExploitableProjectUniqueGitCompileAndSonarTestFileName;
	}

	public String getJacocoAgentFileLocation() {
		return jacocoAgentFileLocation;
	}

	public void setJacocoAgentFileLocation(String jacocoAgentFileLocation) {
		this.jacocoAgentFileLocation = jacocoAgentFileLocation;
	}

	public String getMavenGoodStruturedDownloadedProjectDirectory() {
		return mavenGoodStruturedDownloadedProjectDirectory;
	}

	public void setMavenGoodStruturedDownloadedProjectDirectory(String mavenGoodStruturedDownloadedProject) {
		this.mavenGoodStruturedDownloadedProjectDirectory = mavenGoodStruturedDownloadedProject;
	}

	public String getMavenGoodStruturedProjectUniqueGitCompileAndSonarTestFileName() {
		return mavenGoodStruturedProjectUniqueGitCompileAndSonarTestFileName;
	}

	public void setMavenGoodStruturedProjectUniqueGitCompileAndSonarTestFileName(
			String mavenGoodStruturedProjectUniqueGitCompileAndSonarTestFileName) {
		this.mavenGoodStruturedProjectUniqueGitCompileAndSonarTestFileName = mavenGoodStruturedProjectUniqueGitCompileAndSonarTestFileName;
	}

	public String getMavenGoodStruturedProjectUniqueGitCompileAndSonarTestCommandLine() {
		return mavenGoodStruturedProjectUniqueGitCompileAndSonarTestCommandLine;
	}

	public void setMavenGoodStruturedProjectUniqueGitCompileAndSonarTestCommandLine(
			String mavenGoodStruturedProjectUniqueGitCompileAndSonarTestCommandLine) {
		this.mavenGoodStruturedProjectUniqueGitCompileAndSonarTestCommandLine = mavenGoodStruturedProjectUniqueGitCompileAndSonarTestCommandLine;
	}

	public String getDownloadedProject() {
		return downloadedProject;
	}

	public void setDownloadedProject(String downloadedProject) {
		this.downloadedProject = downloadedProject;
	}

	public String getJacocoPluginMavenDownloadedProjectDirectory() {
		return jacocoPluginMavenDownloadedProjectDirectory;
	}

	public void setJacocoPluginMavenDownloadedProjectDirectory(String jacocoPluginMavenDownloadedProject) {
		this.jacocoPluginMavenDownloadedProjectDirectory = jacocoPluginMavenDownloadedProject;
	}

	public String getJacocoPluginGradleDownloadedProjectDirectory() {
		return jacocoPluginGradleDownloadedProjectDirectory;
	}

	public void setJacocoPluginGradleDownloadedProjectDirectory(String jacocoPluginGradleDownloadedProject) {
		this.jacocoPluginGradleDownloadedProjectDirectory = jacocoPluginGradleDownloadedProject;
	}

	public String getCoberturaPluginMavenDownloadedProjectDirectory() {
		return coberturaPluginMavenDownloadedProjectDirectory;
	}

	public void setCoberturaPluginMavenDownloadedProjectDirectory(String coberturaPluginMavenDownloadedProject) {
		this.coberturaPluginMavenDownloadedProjectDirectory = coberturaPluginMavenDownloadedProject;
	}

	public String getCoberturaPluginGradleDownloadedProjectDirectory() {
		return coberturaPluginGradleDownloadedProjectDirectory;
	}

	public void setCoberturaPluginGradleDownloadedProjectDirectory(String coberturaPluginGradleDownloadedProject) {
		this.coberturaPluginGradleDownloadedProjectDirectory = coberturaPluginGradleDownloadedProject;
	}

	public String getJacocoPluginProjectMavenCompileCommandLineBatFilename() {
		return jacocoPluginProjectMavenCompileCommandLineBatFilename;
	}

	public void setJacocoPluginProjectMavenCompileCommandLineBatFilename(
			String jacocoPluginProjectMavenCompileCommandLineBatFilename) {
		this.jacocoPluginProjectMavenCompileCommandLineBatFilename = jacocoPluginProjectMavenCompileCommandLineBatFilename;
	}

	public String getCoberturaPluginProjectMavenCompileCommandLineBatFilename() {
		return coberturaPluginProjectMavenCompileCommandLineBatFilename;
	}

	public void setCoberturaPluginProjectMavenCompileCommandLineBatFilename(
			String coberturaPluginProjectMavenCompileCommandLineBatFilename) {
		this.coberturaPluginProjectMavenCompileCommandLineBatFilename = coberturaPluginProjectMavenCompileCommandLineBatFilename;
	}

	public String getJacocoPluginProjectGradleCompileCommandLineBatFilename() {
		return jacocoPluginProjectGradleCompileCommandLineBatFilename;
	}

	public void setJacocoPluginProjectGradleCompileCommandLineBatFilename(
			String jacocoPluginProjectGradleCompileCommandLineBatFilename) {
		this.jacocoPluginProjectGradleCompileCommandLineBatFilename = jacocoPluginProjectGradleCompileCommandLineBatFilename;
	}

	public String getCoberturaPluginProjectGradleCompileCommandLineBatFilename() {
		return coberturaPluginProjectGradleCompileCommandLineBatFilename;
	}

	public void setCoberturaPluginProjectGradleCompileCommandLineBatFilename(
			String coberturaPluginProjectGradleCompileCommandLineBatFilename) {
		this.coberturaPluginProjectGradleCompileCommandLineBatFilename = coberturaPluginProjectGradleCompileCommandLineBatFilename;
	}

	
	public String getJacocoPluginProjectMavenSonarTestCommandLineBatFilename() {
		return jacocoPluginProjectMavenSonarTestCommandLineBatFilename;
	}

	public void setJacocoPluginProjectMavenSonarTestCommandLineBatFilename(
			String jacocoPluginProjectMavenSonarTestCommandLineBatFilename) {
		this.jacocoPluginProjectMavenSonarTestCommandLineBatFilename = jacocoPluginProjectMavenSonarTestCommandLineBatFilename;
	}

	public String getCoberturaPluginProjectMavenSonarTestCommandLineBatFilename() {
		return coberturaPluginProjectMavenSonarTestCommandLineBatFilename;
	}

	public void setCoberturaPluginProjectMavenSonarTestCommandLineBatFilename(
			String coberturaPluginProjectMavenSonarTestCommandLineBatFilename) {
		this.coberturaPluginProjectMavenSonarTestCommandLineBatFilename = coberturaPluginProjectMavenSonarTestCommandLineBatFilename;
	}

	public String getJacocoPluginProjectGradleSonarTestCommandLineBatFilename() {
		return jacocoPluginProjectGradleSonarTestCommandLineBatFilename;
	}

	public void setJacocoPluginProjectGradleSonarTestCommandLineBatFilename(
			String jacocoPluginProjectGradleSonarTestCommandLineBatFilename) {
		this.jacocoPluginProjectGradleSonarTestCommandLineBatFilename = jacocoPluginProjectGradleSonarTestCommandLineBatFilename;
	}

	public String getCoberturaPluginProjectGradleSonarTestCommandLineBatFilename() {
		return coberturaPluginProjectGradleSonarTestCommandLineBatFilename;
	}

	public void setCoberturaPluginProjectGradleSonarTestCommandLineBatFilename(
			String coberturaPluginProjectGradleSonarTestCommandLineBatFilename) {
		this.coberturaPluginProjectGradleSonarTestCommandLineBatFilename = coberturaPluginProjectGradleSonarTestCommandLineBatFilename;
	}

	// HTTP GET request
	protected HttpURLConnection sendGet() throws Exception {

		//String path = "projects/?with_programming_language=java";
		//String path = "/repositories?since=100&language:java";
		
		String url = getBase_url()+ getPath();
		
		System.out.println("Url in function SendGet:"+url);
		
		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();

		// optional default is GET
		con.setRequestMethod("GET");

		// add request header
		con.setRequestProperty("User-Agent", USER_AGENT);

		int responseCode = con.getResponseCode();
		System.out.println("\nSending 'GET' Request to URL : " + url);
		System.out.println("Response Code : " + responseCode);

		return con;
	}

	// HTTP POST request
	protected HttpsURLConnection sendPost() throws Exception {

		String url = "";
		URL obj = new URL(url);
		HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();

		// add reuqest header
		con.setRequestMethod("POST");
		con.setRequestProperty("User-Agent", USER_AGENT);
		con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");

		String urlParameters = "";

		// Send post request
		con.setDoOutput(true);
		DataOutputStream wr = new DataOutputStream(con.getOutputStream());
		wr.writeBytes(urlParameters);
		wr.flush();
		wr.close();

		int responseCode = con.getResponseCode();
		System.out.println("\nSending 'POST' Request to URL : " + url);
		System.out.println("Post parameters : " + urlParameters);
		System.out.println("Response Code : " + responseCode);

		return con;

	}



}
