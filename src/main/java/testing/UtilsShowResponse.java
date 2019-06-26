package testing;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
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
		//System.out.println(response.toString());
		
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
	
	
	protected void writeUrlLangageJavaInFile(List<String> projectUrl,String fileName) 
			  throws IOException {

			    BufferedWriter writer = new BufferedWriter(new FileWriter(fileName,true));
			    
			    
				for(int i=0;i<projectUrl.size();i++) {
					
					writer.write(projectUrl.get(i));
					writer.write("\n");
				}
			     
			    writer.close();
			}
	
	protected void writeUrlMavenProjectInFile(List<String> projectUrl,String fileName) 
			  throws Exception {

			    BufferedWriter writer = new BufferedWriter(new FileWriter(fileName,true));
			    
				HttpURLConnect http=new HttpURLConnect() ;
				HttpURLConnection httpCon;
				
				int responseCode;
				
				http.setBase_url("https://raw.githubusercontent.com/");
				
				for(int i=0;i<projectUrl.size();i++) {
					
					http.setPath(projectUrl.get(i)+"/master/pom.xml");

					httpCon=http.sendGet();
					
					responseCode=httpCon.getResponseCode();
					
					if (responseCode==200) {
					writer.write(projectUrl.get(i));
					System.out.println("testing raw pom.xml:"+http.getPath());
					writer.write("\n");
					}
				}
			     
			    writer.close();
			}
	
	protected void writeUrlGradleProjectInFile(List<String> projectUrl,String fileName) 
			  throws Exception {

			    BufferedWriter writer = new BufferedWriter(new FileWriter(fileName,true));
			    
				HttpURLConnect http=new HttpURLConnect() ;
				HttpURLConnection httpCon;
				
				int responseCode;
				
				http.setBase_url("https://raw.githubusercontent.com/");
				
				for(int i=0;i<projectUrl.size();i++) {
					
					http.setPath(projectUrl.get(i)+"/master/build.gradle");

					httpCon=http.sendGet();
					
					responseCode=httpCon.getResponseCode();
					
					if (responseCode==200) {
					writer.write(projectUrl.get(i));
					System.out.println("testing raw build.gradle:"+http.getPath());
					writer.write("\n");
					}
				}
			     
			    writer.close();
			}
	
	protected void writeUrlJacocoGradleInFile(List<String> projectUrl,String fileName) 
			  throws Exception {

	    BufferedWriter writer = new BufferedWriter(new FileWriter(fileName,true));

		BufferedReader read ;	    
	    
		HttpURLConnect http=new HttpURLConnect() ;
		HttpURLConnection httpCon;
		int responseCode;
		String responseData ="";
		String matchJacocoPlugin="apply plugin: 'jacoco'";
		http.setBase_url("https://raw.githubusercontent.com/");
		
		int jacocoPluginFound;
		int totalJacocopluginFound=0;
		
		for(int i=0;i<projectUrl.size();i++) {
			
			http.setPath(projectUrl.get(i)+"/master/build.gradle");

			httpCon=http.sendGet();
			
			responseCode=httpCon.getResponseCode();
			
			jacocoPluginFound=0;
			
			System.out.println("testing raw build.gradle:"+http.getPath());
			
			if (responseCode==200) {
			
			System.out.println("There ist a raw build.gradle at :"+http.getPath());
			read = new BufferedReader(new InputStreamReader(httpCon.getInputStream()));
						

			while ((responseData = read.readLine()) != null) {
				if(responseData.trim().contains(matchJacocoPlugin.trim())==true) { 
						jacocoPluginFound++;
						totalJacocopluginFound++;
						System.out.println("Plugin Jacoco Found:"+totalJacocopluginFound);
						System.out.println("Line of the Plugin Jacoco:"+responseData);
						break;
				}
			}
			read.close();
			
			if(jacocoPluginFound==1) {
				writer.write(projectUrl.get(i));
				writer.write("\n");
			}
			else {
				System.out.println("No Jacoco Plugin at:"+http.getPath());
			}

			
			
			}
			
			else {
				System.out.println("NO raw build.gradle at :"+http.getPath());	
			}
		}
	     
	    writer.close();
	}
	
	
	protected void writeUrlJacocoMavenInFile(List<String> projectUrl,String fileName) 
			  throws Exception {

	    BufferedWriter writer = new BufferedWriter(new FileWriter(fileName,true));

		BufferedReader read ;	    
	    
		HttpURLConnect http=new HttpURLConnect() ;
		HttpURLConnection httpCon;
		int responseCode;
		String responseData ="";
		String matchJacocoPlugin="<groupId>org.jacoco</groupId>";
		http.setBase_url("https://raw.githubusercontent.com/");
		
		int jacocoPluginFound;
		int totalJacocopluginFound=0;
		
		for(int i=0;i<projectUrl.size();i++) {
			
			http.setPath(projectUrl.get(i)+"/master/pom.xml");

			httpCon=http.sendGet();
			
			responseCode=httpCon.getResponseCode();
			
			jacocoPluginFound=0;
			
			System.out.println("testing raw pom.xml:"+http.getPath());
			
			if (responseCode==200) {
			
			System.out.println("There ist a raw pom.xml at :"+http.getPath());
			read = new BufferedReader(new InputStreamReader(httpCon.getInputStream()));
						

			while ((responseData = read.readLine()) != null) {
				if(responseData.trim().contains(matchJacocoPlugin)==true) { 
						jacocoPluginFound++;
						totalJacocopluginFound++;
						System.out.println("Plugin Jacoco Found:"+totalJacocopluginFound);
						System.out.println("Line of the Plugin Jacoco:"+responseData);
						break;
				}
			}
			read.close();
			
			if(jacocoPluginFound==1) {
				writer.write(projectUrl.get(i));
				writer.write("\n");
			}
			else {
				System.out.println("No Jacoco Plugin at:"+http.getPath());
			}

			
			}
			
			else {
				System.out.println("NO raw pom.xml at :"+http.getPath());	
			}
		}
	     
	    writer.close();
	}
	
	
	  protected List<String> readUrlFromFile(String fileName)throws Exception 
	  { 

		  List<String> theUrl=new ArrayList<String>() ;
		  
	  File file = new File(fileName); 
	  
	  BufferedReader br = new BufferedReader(new FileReader(file)); 
	  
	  String st; 
	  while ((st = br.readLine()) != null) {
	    theUrl.add(st); 
	  } 
	  return theUrl;
	  
	  }
	
}
