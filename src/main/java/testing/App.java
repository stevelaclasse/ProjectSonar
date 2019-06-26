package testing;



import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;


import javax.net.ssl.HttpsURLConnection;

import org.gitlab4j.api.Pager;
import org.gitlab4j.api.models.Project;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParser;

public class App 
{
    
  
     
    public static void main( String[] args ) throws Exception
    {
        
		HttpURLConnect http=new HttpURLConnect() ;
		HttpURLConnection httpCon;
		UtilsShowResponse myUtils=new UtilsShowResponse();
	//	Gson gson = new Gson();
		Gson gson=new GsonBuilder().setPrettyPrinting().create();
		JsonParser jsonParser = new JsonParser();
		String response;
		List<String> myUrls=new ArrayList<String>();
		
/*
		
		for (int i=1;i<=10;i++) {
		
		System.out.println("Sending a GET Request Nummber:"+i);
		
		http.setUrlPage(i);

		httpCon=http.sendGet();
		
		
		System.out.println("UrlPage From Main function="+http.getUrlPage());
		System.out.println("Url From Main function="+http.getPath());
		
		response=myUtils.printResponse(httpCon);
		
		String json = gson.toJson(jsonParser.parse(response));
		

		System.out.println("Printing in JSON Format \n");
		
		//System.out.println(json);

		System.out.println("Extracting 2 informations and saving it in a table \n");
		
		//MyProject[] myProject =gson.fromJson(json, MyProject[].class);
		MyProject2 myProject =gson.fromJson(json, MyProject2.class);
		
		System.out.println("Printing the content of the table \n");
		//myUtils.myProjectListing(myProject);
		
		
		
		myUrls.addAll(myUtils.myProjectListing2(myProject)); //add all Urls
		
		}	
		
		//myUtils.ShowProjectUrl(myUrls);   //Show all the Urls that where recorded
		
		
		myUtils.writeUrlLangageJavaInFile(myUrls, http.getLangageJavaUrls()); //Save all the urls that where fetch
		
		
		
		
		*/
		
		
	//	List<String> myUrlsLangageJava=new ArrayList<String>() ;
		
	//	myUrlsLangageJava=myUtils.readUrlFromFile(http.getLangageJavaUrls());//read all the Language Java Urls
		
	//	myUtils.writeUrlMavenProjectInFile(myUrlsLangageJava, http.getMavenProjectUrls()); //sort only Maven Project
		
	//	myUtils.writeUrlGradleProjectInFile(myUrlsLangageJava, http.getGradleProjectUrls()); //sort only Gradle Project
		
		
		
		
		List<String> mavenProjectUrl=new ArrayList<String>() ;
		
		mavenProjectUrl=myUtils.readUrlFromFile(http.getMavenProjectUrls());//read all the Maven Project Urls
		
		myUtils.writeUrlJacocoMavenInFile(mavenProjectUrl, http.getJacocoPluginProjectMaven()); //sort only Maven Project 	
		//who have the Jacoco Plugin
		
		
		
		List<String> gradleProjectUrl=new ArrayList<String>() ;
		
		gradleProjectUrl=myUtils.readUrlFromFile(http.getGradleProjectUrls());//read all the Maven Project Urls
		
		myUtils.writeUrlJacocoGradleInFile(gradleProjectUrl, http.getJacocoPluginProjectGradle()); //sort only Maven Project		
		
		//List<String> JacocoPluginUrl=new ArrayList<String>() ;
		
		//JacocoPluginUrl=myUtils.readUrlFromFile(http.getJacocoPluginProject());//read all Project with the Plugin Jacoco
		
		//myUtils.ShowProjectUrl(JacocoPluginUrl);
		
		//ConnectWithGitLabApi connectWithGitLabApi = new ConnectWithGitLabApi();
		//List<Project> projects=connectWithGitLabApi.getProjets();
		

    }
}
