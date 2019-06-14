package testing;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;

import org.gitlab4j.api.models.Project;

public class UtilsShowResponse {
	
	protected String printResponse(HttpURLConnection connection) throws Exception {
		BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine+"\n");
		}
		in.close();

		// printing result
		System.out.println(response.toString());
		
		return response.toString();
	}
	
	protected void listProjects(List<Project> projects) {

		for (int i=0;i<projects.size();i++) {
			System.out.println(projects.get(i).getName()+"--->"+projects.get(i).getDescription());
		}
	}
	
	protected void myProjectListing(MyProject[] myProject) {
		for(int i=0;i<myProject.length;i++) {
			System.out.println(myProject[i].full_name);
		}
	}
	
	protected List<String> myProjectListing2(MyProject2 myProject) {
		List<String> projectUrl=new ArrayList<String>() ;
		for(int i=0;i<myProject.items.size();i++) {
			projectUrl.add(myProject.items.get(i).full_name);
		}
		return projectUrl;
	}
	
	protected void ShowProjectUrl(List<String> projectUrl) {
		for(int i=0;i<projectUrl.size();i++) {
			System.out.println(projectUrl.get(i));
		}
	}
	
	protected List<String> toDownloadablePomXml(List<String> projectUrl){
		List<String> myPomXmlUrl=projectUrl ;
		String firstPartUrl="https://raw.githubusercontent.com/";
		String secondPartUrl="/master/pom.xml";
		
		for(int i=0;i<myPomXmlUrl.size();i++) {
			myPomXmlUrl.set(i, firstPartUrl+myPomXmlUrl.get(i)+secondPartUrl);
		}
		
		return myPomXmlUrl;
	}
	
}
