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
	
	private String workingDirectory="Projects";

	private String langageJavaUrlsFileName=getWorkingDirectory()+"/langageJavaUrls.txt";
	

	private String mavenProjectUrlsFileName=getWorkingDirectory()+"/mavenProjectUrls.txt";
	
	private String gradleProjectUrlsFileName=getWorkingDirectory()+"/gradleProjectUrls.txt";
	


	private String jacocoPluginProjectMavenFileName=getWorkingDirectory()+"/JacocoPluginProjectMaven.txt";
	
	private String jacocoPluginProjectGradleFileName=getWorkingDirectory()+"/JacocoPluginProjectGradle.txt";
	
	private String coberturaPluginProjectGradleFileName=getWorkingDirectory()+"/CoberturaPluginProjectGradle.txt";
	
	private String coberturaPluginProjectMavenFileName=getWorkingDirectory()+"/CoberturaPluginProjectMaven.txt";
	

	private String jacocoPluginProjectMavenBatFileName=getWorkingDirectory()+"/JacocoPluginProjectMavenBat.bat";
	
	private String jacocoPluginProjectGradleBatFileName=getWorkingDirectory()+"/JacocoPluginProjectGradleBat.bat";
	
	private String coberturaPluginProjectGradleBatFileName=getWorkingDirectory()+"/CoberturaPluginProjectGradleBat.bat";
	
	private String coberturaPluginProjectMavenBatFileName=getWorkingDirectory()+"/CoberturaPluginProjectMavenBat.bat";
	

	private int urlPage=1;
	private int urlPerPage=100;
	private int since=100;


	private String path = "";
	
	private String path1 = "/search/repositories?q=language:java&page=";
	
	private String path2="/legacy/repos/search/language=java?start_page=";

	public String getWorkingDirectory() {
		return workingDirectory;
	}

	public void setWorkingDirectory(String workingDirectory) {
		this.workingDirectory = workingDirectory;
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
	
	public String getJacocoPluginProjectMavenBatFileName() {
		return jacocoPluginProjectMavenBatFileName;
	}

	public void setJacocoPluginProjectMavenBatFileName(String jacocoPluginProjectMavenBat) {
		this.jacocoPluginProjectMavenBatFileName = jacocoPluginProjectMavenBat;
	}

	public String getJacocoPluginProjectGradleBatFileName() {
		return jacocoPluginProjectGradleBatFileName;
	}

	public void setJacocoPluginProjectGradleBatFileName(String jacocoPluginProjectGradleBat) {
		this.jacocoPluginProjectGradleBatFileName = jacocoPluginProjectGradleBat;
	}

	public String getCoberturaPluginProjectGradleBatFileName() {
		return coberturaPluginProjectGradleBatFileName;
	}

	public void setCoberturaPluginProjectGradleBatFileName(String coberturaPluginProjectGradleBat) {
		this.coberturaPluginProjectGradleBatFileName = coberturaPluginProjectGradleBat;
	}

	public String getCoberturaPluginProjectMavenBatFileName() {
		return coberturaPluginProjectMavenBatFileName;
	}

	public void setCoberturaPluginProjectMavenBatFileName(String coberturaPluginProjectMavenBat) {
		this.coberturaPluginProjectMavenBatFileName = coberturaPluginProjectMavenBat;
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
