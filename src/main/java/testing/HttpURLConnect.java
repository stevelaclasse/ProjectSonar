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
	private int urlPage=1;
	private int urlPerPage=100;
	private String path = "/search/repositories?q=language:java&page="+urlPage+"&per_page"+urlPerPage;

	private void setPath(String strPath) {
		this.path=strPath;
	}
	
	private String getPath() {
		return path;
	}
	
	public int getUrlPage() {
		return urlPage;
	}

	public void setUrlPage(int urlPage) {
		this.urlPage = urlPage;
	}

	public int getUrlPerPage() {
		return urlPerPage;
	}

	public void setUrlPerPage(int urlPerPage) {
		this.urlPerPage = urlPerPage;
	}


	
	// HTTP GET request
	protected HttpURLConnection sendGet() throws Exception {

		//String path = "projects/?with_programming_language=java";
		//String path = "/repositories?since=100&language:java";
		
		String url = base_url + path;
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
