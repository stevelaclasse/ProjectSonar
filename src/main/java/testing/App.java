package testing;



import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
		
		List<String> myUrls1=new ArrayList<String>();
		
		
		
		/*
		 * for (int i=1;i<=10;i++) {
		 * 
		 * System.out.println("Sending a GET Request Nummber:"+i);
		 * 
		 * http.setUrlPage(i);
		 * 
		 * http.setPath(http.getPath1()+http.getUrlPage()+"&per_page="+http.
		 * getUrlPerPage());
		 * 
		 * System.out.println("UrlPage From Main function="+http.getUrlPage());
		 * 
		 * System.out.println("Url From Main function="+http.getPath());
		 * 
		 * httpCon=http.sendGet();
		 * 
		 * 
		 * 
		 * 
		 * response=myUtils.printResponse(httpCon);
		 * 
		 * String json = gson.toJson(jsonParser.parse(response));
		 * 
		 * 
		 * System.out.println("Printing in JSON Format \n");
		 * 
		 * //System.out.println(json);
		 * 
		 * System.out.println("Extracting 2 informations and saving it in a table \n");
		 * 
		 * //MyProject[] myProject =gson.fromJson(json, MyProject[].class); MyProject2
		 * myProject =gson.fromJson(json, MyProject2.class);
		 * 
		 * System.out.println("Printing the content of the table \n");
		 * //myUtils.myProjectListing(myProject);
		 * 
		 * 
		 * myUrls.addAll(myUtils.myProjectListing2(myProject)); //add all Urls
		 * 
		 * }
		 */
		 
		
		//  myUtils.writeUrlLangageJavaInFile(myUrls, http.getLangageJavaUrls()); //Save all the urls that where fetch  

		  
		/*
		 * for (int i=1;i<=10;i++) {
		 * 
		 * System.out.println("Sending a Second time GET Request Nummber:"+i);
		 * 
		 * http.setUrlPage(i); http.setPath(http.getPath2()+http.getUrlPage());
		 * 
		 * System.out.println("UrlPage From Main function="+http.getUrlPage());
		 * System.out.println("Url_Path From Main function="+http.getPath());
		 * 
		 * httpCon=http.sendGet();
		 * 
		 * 
		 * response=myUtils.printResponse(httpCon);
		 * 
		 * String json = gson.toJson(jsonParser.parse(response));
		 * 
		 * 
		 * System.out.println("Printing in JSON Format \n");
		 * 
		 * //System.out.println(json);
		 * 
		 * System.out.println("Extracting 2 informations and saving it in a table \n");
		 * 
		 * //MyProject[] myProject =gson.fromJson(json, MyProject[].class); MyProject1
		 * myProject1 =gson.fromJson(json, MyProject1.class);
		 * 
		 * System.out.println("Printing the content of the table \n");
		 * //myUtils.myProjectListing(myProject);
		 * 
		 * 
		 * 
		 * myUrls1.addAll(myUtils.myProjectListing1(myProject1)); //add all Urls
		 * 
		 * }
		 */
		
		
		
		//myUtils.ShowProjectUrl(myUrls);   //Show all the Urls that where recorded
		
		
		//myUtils.writeUrlLangageJavaInFile(myUrls1, http.getLangageJavaUrls()); //Save all the urls that where fetch
		
		/*
		 * List<String> myUrlsAll=new ArrayList<String>();
		 * 
		 * myUrlsAll.addAll(myUrls);
		 * 
		 * myUrlsAll.addAll(myUrls1);
		 * 
		 * Set<String> mySetRemoveDouble = new HashSet<String>(myUrlsAll);
		 * 
		 * List<String> myUrlsUniqueEntry = new ArrayList<String>(mySetRemoveDouble);
		 * 
		 * 
		 * myUtils.writeUrlLangageJavaInFile(myUrlsUniqueEntry,
		 * http.getLangageJavaUrls()); //Save all the urls uniquely that where fetch
		 * 
		 * 
		 * List<String> myUrlsLangageJava=new ArrayList<String>() ;
		 * 
		 * myUrlsLangageJava=myUtils.readUrlFromFile(http.getLangageJavaUrls());//read
		 * all the Language Java Urls
		 * 
		 * myUtils.writeUrlMavenProjectInFile(myUrlsLangageJava,
		 * http.getMavenProjectUrls()); //sort only Maven Project
		 * 
		 * myUtils.writeUrlGradleProjectInFile(myUrlsLangageJava,
		 * http.getGradleProjectUrls()); //sort only Gradle Project
		 * 
		 */
		
		/*
		 * List<String> mavenProjectUrl=new ArrayList<String>() ;
		 * 
		 * mavenProjectUrl=myUtils.readUrlFromFile(http.getMavenProjectUrls());//read
		 * all the Maven Project Urls
		 * 
		 * //myUtils.writeUrlJacocoMavenInFile(mavenProjectUrl,
		 * http.getJacocoPluginProjectMaven()); //sort only Maven Project who have the
		 * Jacoco Plugin
		 * 
		 * myUtils.writeUrlCoberturaMavenInFile(mavenProjectUrl,
		 * http.getCoberturaPluginProjectMaven()); //sort only Maven Project who have
		 * the Cobertura Plugin
		 * 
		 */
		
		/*
		 * List<String> gradleProjectUrl=new ArrayList<String>() ;
		 * 
		 * gradleProjectUrl=myUtils.readUrlFromFile(http.getGradleProjectUrls());//read
		 * all the Gradle Project Urls
		 * 
		 * //myUtils.writeUrlJacocoGradleInFile(gradleProjectUrl,
		 * http.getJacocoPluginProjectGradle()); //sort only Maven Project
		 * 
		 * myUtils.writeUrlCoberturaGradleInFile(gradleProjectUrl,
		 * http.getCoberturaPluginProjectGradle()); //sort only Gradle Project who have
		 * the Cobertura Plugin
		 * 
		 */
		
		
		//We remove element that are present two time for different Plugins (Cobertura and Jacoco
		
		List<String> coberturaMavenProjectUrl=new ArrayList<String>() ;
		
		coberturaMavenProjectUrl=myUtils.readUrlFromFile(http.getCoberturaPluginProjectMaven());//read all the Project Urls With Cobertura
		
		List<String> jacocoMavenProjectUrl=new ArrayList<String>() ;
		
		jacocoMavenProjectUrl=myUtils.readUrlFromFile(http.getJacocoPluginProjectMaven());//read all the Project Urls With Cobertura
		
		coberturaMavenProjectUrl.removeAll(jacocoMavenProjectUrl);
		
		
		List<String> coberturaGradleProjectUrl=new ArrayList<String>() ;
		
		coberturaGradleProjectUrl=myUtils.readUrlFromFile(http.getCoberturaPluginProjectGradle());//read all the Project Urls With Cobertura
		
		List<String> jacocoGradleProjectUrl=new ArrayList<String>() ;
		
		jacocoGradleProjectUrl=myUtils.readUrlFromFile(http.getJacocoPluginProjectGradle());//read all the Project Urls With Cobertura
		
		coberturaGradleProjectUrl.removeAll(jacocoGradleProjectUrl);
		
		
		
		myUtils.writeUrlInFile(coberturaMavenProjectUrl, http.getCoberturaPluginProjectMaven());
		
		myUtils.writeUrlInFile(coberturaGradleProjectUrl, http.getCoberturaPluginProjectGradle());
		
    }
}
