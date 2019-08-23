package testing;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class Tasks {

	protected void extractingProjectsFromGithub() throws Exception

	{

		HttpURLConnect http = new HttpURLConnect();
		HttpURLConnection httpCon;
		UtilsSortingProjects myUtils = new UtilsSortingProjects();
		// Gson gson = new Gson();
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		JsonParser jsonParser = new JsonParser();
		String response;
		List<String> myUrls = new ArrayList<String>();

		List<String> myUrls1 = new ArrayList<String>();

		String checkWorkingDirectoryName = http.getWorkingDirectory();
		Path checkWorkingDirectory = Paths.get(checkWorkingDirectoryName);

		if (!Files.exists(checkWorkingDirectory)) {

			Files.createDirectory(checkWorkingDirectory);
			System.out.println("The Directory --" + http.getWorkingDirectory() + "--created");
		} else {

			System.out.println("Directory --" + http.getWorkingDirectory() + "--already exists");
		}

		
		  for (int i=1;i<=10;i++) {
		  
		  System.out.println("Sending a GET Request Nummber:"+i);
		  
		  http.setUrlPage(i);
		  
		  http.setPath(http.getPath1()+http.getUrlPage()+"&per_page="+http.
		  getUrlPerPage());
		  
		  System.out.println("UrlPage From Main function="+http.getUrlPage());
		  
		  System.out.println("Url From Main function="+http.getPath());
		  
		  httpCon=http.sendGet();
		  
		  
		  
		  
		  response=myUtils.printResponse(httpCon);
		  
		  String json = gson.toJson(jsonParser.parse(response));
		  
		  
		  System.out.println("Printing in JSON Format \n");
		  
		  //System.out.println(json);
		  
		  System.out.println("Extracting 2 informations and saving it in a table \n");
		  
		  //MyProject[] myProject =gson.fromJson(json, MyProject[].class);
		  MyProject2
		  myProject =gson.fromJson(json, MyProject2.class);
		  
		  System.out.println("Printing the content of the table \n");
		  //myUtils.myProjectListing(myProject);
		  
		  
		  myUrls.addAll(myUtils.myProjectListing2(myProject)); //add all Urls
		  
		  }
		  
		  
		  
		  // myUtils.writeUrlLangageJavaInFile(myUrls, http.getLangageJavaUrls());
		  //Save all the urls that where fetch
		  
		  
		  
		  for (int i=1;i<=10;i++) {
		  
		  System.out.println("Sending a Second time GET Request Nummber:"+i);
		  
		  http.setUrlPage(i); http.setPath(http.getPath2()+http.getUrlPage());
		  
		  System.out.println("UrlPage From Main function="+http.getUrlPage());
		  System.out.println("Url_Path From Main function="+http.getPath());
		  
		  httpCon=http.sendGet();
		  
		  
		  response=myUtils.printResponse(httpCon);
		  
		  String json = gson.toJson(jsonParser.parse(response));
		  
		  
		  System.out.println("Printing in JSON Format \n");
		  
		  //System.out.println(json);
		  
		  System.out.println("Extracting 2 informations and saving it in a table \n");
		  
		  //MyProject[] myProject =gson.fromJson(json, MyProject[].class);
		  MyProject1
		  myProject1 =gson.fromJson(json, MyProject1.class);
		  
		  System.out.println("Printing the content of the table \n");
		  //myUtils.myProjectListing(myProject);
		  
		  
		  
		  myUrls1.addAll(myUtils.myProjectListing1(myProject1)); //add all Urls
		  
		  }
		  
		  
		  
		  
		  //myUtils.ShowProjectUrl(myUrls); //Show all the Urls that where recorded
		  
		  
		  //myUtils.writeUrlLangageJavaInFile(myUrls1, http.getLangageJavaUrls());
		  //Save all the urls that where fetch
		  
		  
		  List<String> myUrlsAll=new ArrayList<String>();
		  
		  myUrlsAll.addAll(myUrls);
		  
		  myUrlsAll.addAll(myUrls1);
		  
		  Set<String> mySetRemoveDouble = new HashSet<String>(myUrlsAll);
		  
		  List<String> myUrlsUniqueEntry = new ArrayList<String>(mySetRemoveDouble);
		  
		  
		  myUtils.writeUrlLangageJavaInFile(myUrlsUniqueEntry,
		  http.getLangageJavaUrlsFileName());
		  //Save all the urls uniquely that where fetch
		 

		
		  List<String> myUrlsLangageJava=new ArrayList<String>() ;
		  
		  myUrlsLangageJava=myUtils.readUrlFromFile(http.getLangageJavaUrlsFileName());
		  //read all the Language Java Urls
		  
		  
		  myUtils.writeUrlMavenProjectInFile(myUrlsLangageJava,http.
		  getMavenProjectUrlsFileName()); //sort only Maven Project
		  
		  
		  myUtils.writeUrlGradleProjectInFile(myUrlsLangageJava,http.
		  getGradleProjectUrlsFileName()); //sort only Gradle Project
		 

		
		  List<String> mavenProjectUrl=new ArrayList<String>() ;
		  
		  mavenProjectUrl=myUtils.readUrlFromFile(http.getMavenProjectUrlsFileName());
		  //read all the Maven Project Urls
		  
		  
		  
		  
		  myUtils.writeUrlJacocoMavenInFile(mavenProjectUrl,http.
		  getJacocoPluginProjectMavenFileName());
		  //sort only Maven Project who have the Jacoco Plugin
		  
		  
		  myUtils.writeUrlCoberturaMavenInFile(mavenProjectUrl,http.
		  getCoberturaPluginProjectMavenFileName());
		  //sort only Maven Project who have the Cobertura Plugin
		  
		  
		  
		  List<String> gradleProjectUrl=new ArrayList<String>() ;
		  
		  gradleProjectUrl=myUtils.readUrlFromFile(http.getGradleProjectUrlsFileName())
		  ; //read all the Gradle Project Urls
		  
		  
		  myUtils.writeUrlJacocoGradleInFile(gradleProjectUrl,http.
		  getJacocoPluginProjectGradleFileName());
		  //sort only Gradle Project who have the Jacoco Plugin
		  
		  myUtils.writeUrlCoberturaGradleInFile(gradleProjectUrl,http.
		  getCoberturaPluginProjectGradleFileName());
		  //sort only Gradle Project who  have the Cobertura Plugin
		 

		List<String> mymavenProjectUrl = new ArrayList<String>();

		mymavenProjectUrl = myUtils.readUrlFromFile(http.getMavenProjectUrlsFileName());
		// read all the Maven Project Urls

		myUtils.writeUrlMavenGoodStructuredProjectInFile(mymavenProjectUrl,
				http.getMavenGoodStruturedProjectUniqueGitCompileAndSonarTestFileName());
		// sort only Maven Project who are good structured : /src/main/java

		// We remove element that are present two time for different Plugins (Cobertura
		// and Jacoco)

		List<String> coberturaMavenProjectUrl = new ArrayList<String>();

		coberturaMavenProjectUrl = myUtils.readUrlFromFile(http.getCoberturaPluginProjectMavenFileName());
		// read all the Maven Project Urls With Cobertura

		List<String> jacocoMavenProjectUrl = new ArrayList<String>();

		jacocoMavenProjectUrl = myUtils.readUrlFromFile(http.getJacocoPluginProjectMavenFileName());
		// read all the Project Urls With Jacoco
		jacocoMavenProjectUrl.sort(String.CASE_INSENSITIVE_ORDER);

		coberturaMavenProjectUrl.removeAll(jacocoMavenProjectUrl);
		coberturaMavenProjectUrl.sort(String.CASE_INSENSITIVE_ORDER);

		List<String> coberturaGradleProjectUrl = new ArrayList<String>();

		coberturaGradleProjectUrl = myUtils.readUrlFromFile(http.getCoberturaPluginProjectGradleFileName());
		// read all the Gradle Project Urls With Cobertura

		List<String> jacocoGradleProjectUrl = new ArrayList<String>();

		jacocoGradleProjectUrl = myUtils.readUrlFromFile(http.getJacocoPluginProjectGradleFileName());
		jacocoGradleProjectUrl.sort(String.CASE_INSENSITIVE_ORDER);
		// read all the Gradle Project Urls With Jacoco

		coberturaGradleProjectUrl.removeAll(jacocoGradleProjectUrl);
		coberturaGradleProjectUrl.sort(String.CASE_INSENSITIVE_ORDER);

		myUtils.writeUrlInFile(coberturaMavenProjectUrl, http.getCoberturaPluginProjectMavenFileName());

		myUtils.writeUrlInFile(coberturaGradleProjectUrl, http.getCoberturaPluginProjectGradleFileName());

		myUtils.writeUrlInFile(jacocoMavenProjectUrl, http.getJacocoPluginProjectMavenFileName());

		myUtils.writeUrlInFile(jacocoGradleProjectUrl, http.getJacocoPluginProjectGradleFileName());

		System.out.println("ALL Projects allphabetic sorted");

	}

	protected void createBatCommandForGitDownloadAndCompilationAndSonartest() throws Exception {

		HttpURLConnect http = new HttpURLConnect();
		UtilsGeneratingBatFiles nextUtils = new UtilsGeneratingBatFiles();

		String checkWorkingDirectoryName = http.getWorkingDirectory();
		String checkWorkingDirectoryBatName = http.getBatDirectory();
		String checkWorkingDirectoryGitBatName = http.getGitBatDirectory();

		Path checkWorkingDirectory = Paths.get(checkWorkingDirectoryName);
		Path checkWorkingBatDirectory = Paths.get(checkWorkingDirectoryBatName);
		Path checkWorkingGitBatDirectory = Paths.get(checkWorkingDirectoryGitBatName);

		System.out.println(checkWorkingDirectory.getRoot());
		System.out.println(checkWorkingBatDirectory.getRoot());
		System.out.println(checkWorkingGitBatDirectory.getRoot());

		if (!Files.exists(checkWorkingDirectory)) {

			Files.createDirectory(checkWorkingDirectory);
			System.out.println("Directory created");
		} else {

			System.out.println("Directory " + checkWorkingDirectory + " already exists");
		}

		if (!Files.exists(checkWorkingBatDirectory)) {

			Files.createDirectory(checkWorkingBatDirectory);
			System.out.println("Directory created");
		} else {

			System.out.println("Directory " + checkWorkingBatDirectory + " already exists");
		}

		if (!Files.exists(checkWorkingGitBatDirectory)) {

			Files.createDirectory(checkWorkingGitBatDirectory);
			System.out.println("Directory created");
		} else {

			System.out.println("Directory " + checkWorkingGitBatDirectory + " already exists");
		}

		
		  nextUtils.creatingGitCommandLine();
		  
		  nextUtils.creatingMavenPlugingJacocoAndCoberturaCompileCommandLine();
		  
		  nextUtils.creatingGradlePlugingJacocoAndCoberturaCompileCommandLine();
		 

		nextUtils.creatingMavenAndGradlePlugingJacocoAndCoberturaSonartestCommandLine();
		
		nextUtils.creatingUniqueMavenGitCompileAndSonartestWithJacocoAgentCommandLine();

	}

	protected void launchBatCommandInBatFiles() throws Exception {
		UtilsexecutingBatCommands utilsBatExecutor = new UtilsexecutingBatCommands();
		HttpURLConnect http = new HttpURLConnect();

		
		  System.out.println("Begining with GIT JACOCO MAVEN");
		  utilsBatExecutor.executeCommandInBatFile(http.
		  getJacocoPluginProjectMavenGitCommandLineBatFileName(),http.getGitGoodDownloadedProjectFileName());
		  System.out.println("Begining with GIT JACOCO GRADLE");
		  utilsBatExecutor.executeCommandInBatFile(http.
		  getJacocoPluginProjectGradleGitCommandLineBatFileName(),http.getGitGoodDownloadedProjectFileName());
		  System.out.println("Begining with GIT COBERTURA MAVEN");
		  utilsBatExecutor.executeCommandInBatFile(http.
		  getCoberturaPluginProjectMavenGitCommandLineBatFileName(),http.getGitGoodDownloadedProjectFileName());
		  System.out.println("Begining with GIT COBERTURA GRADLE");
		  utilsBatExecutor.executeCommandInBatFile(http.
		  getCoberturaPluginProjectGradleGitCommandLineBatFileName(),http.getGitGoodDownloadedProjectFileName());
		 

		System.out.println("Begining with COMPILE COBERTURA MAVEN");
		utilsBatExecutor.executeCommandInBatFile(http.getCoberturaPluginProjectMavenCompileCommandLineBatFilename(),
				http.getCoberturaPluginProjectMavenGoodCompiledProjectFilename());

		System.out.println("Begining with COMPILE JACOCO MAVEN");
		utilsBatExecutor.executeCommandInBatFile(http.getJacocoPluginProjectMavenCompileCommandLineBatFilename(),
				http.getJacocoPluginProjectMavenGoodCompiledProjectFilename());

		System.out.println("Begining with COMPILE COBERTURA GRADLE");
		utilsBatExecutor.executeCommandInBatFile(http.getCoberturaPluginProjectGradleCompileCommandLineBatFilename(),
				http.getCoberturaPluginProjectGradleGoodCompiledProjectFilename());

		System.out.println("Begining with COMPILE JACOCO GRADLE");
		utilsBatExecutor.executeCommandInBatFile(http.getJacocoPluginProjectGradleCompileCommandLineBatFilename(),
				http.getJacocoPluginProjectGradleGoodCompiledProjectFilename());

		System.out.println("Begining with SONARTEST JACOCO MAVEN");
		// utilsBatExecutor.executeCommandInBatFile(http.getJacocoPluginProjectMavenSonarTestCommandLineBatFilename());
		System.out.println("Begining with SONARTEST JACOCO GRADLE");
		// utilsBatExecutor.executeCommandInBatFile(http.getJacocoPluginProjectGradleSonarTestCommandLineBatFilename());
		System.out.println("Begining with SONARTEST COBERTURA MAVEN");
		// utilsBatExecutor.executeCommandInBatFile(http.getCoberturaPluginProjectMavenSonarTestCommandLineBatFilename());
		System.out.println("Begining with SONARTEST COBERTURA GRADLE");
		// utilsBatExecutor.executeCommandInBatFile(http.getCoberturaPluginProjectGradleSonarTestCommandLineBatFilename());
	}

	@SuppressWarnings("unchecked")
	protected void extractingAnalyseResultsFromSonarQubeServerIntoExcelFile() throws Exception {
		
		HttpURLConnect http = new HttpURLConnect();
		HttpURLConnection httpCon;
		UtilsSortingProjects myUtils = new UtilsSortingProjects();
		// Gson gson = new Gson();
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		JsonParser jsonParser = new JsonParser();
		String response;
		AllComponentsSonarQube myComponents ;
		
		NumberFormat floatFormatter = new DecimalFormat("0.00");
		
		System.out.println("Sending a get to the sonar server to get 200 Results");
		
		http.setBase_url(http.getSonarHosturl());
		
		int responseCode;
		
		http.setPath("api/components/search?qualifiers=TRK&ps=200");
		
		httpCon=http.sendGet();
		
		responseCode=httpCon.getResponseCode();
		
		if (responseCode==200) {
			
		response=myUtils.printResponse(httpCon);
		
		System.out.println("Server gave a Response:"+http.getPath());
		
		String json = gson.toJson(jsonParser.parse(response));
		
		 //System.out.println("Printing in JSON Format \n");
		 
		//System.out.println(json);
		 
		 myComponents=gson.fromJson(json, AllComponentsSonarQube.class);
		 
		 System.out.println("Number of Projects:"+myComponents.components.size());
		 
		 Map<String, String> data =new HashMap();
		 
		 http.setBase_url(http.getSonarHosturl());
		 
		 MetricsValues myMetrics;
		 
		 List<Map<String, String>> allComponents=new ArrayList<Map<String, String>>();
		 
	        String[] sheetTitle={"PROJECTNAME", "BRANCH_COVERAGE", "LINE_COVERAGE","COVERAGE","TESTS","CODE_SMELLS","SQALE_RATING","SQALE_INDEX","DUPLICATED_LINES","DUPLICATED_LINES_DENSITY","LINES","BUGS","RELIABILITY_RATING","RELIABILITY_REMEDIATION_EFFORT","COMPLEXITY","VULNERABILITIES","SECURITY_REMEDIATION_EFFORT"};

	        String[] sheetRawTitle={"PROJECTNAME", "BRANCH_COVERAGE", "LINE_COVERAGE","COVERAGE","TESTS","CODE_SMELLS","MAINTAINABILITY RATING","TECHNICAL_DEBT","DUPLICATED_LINES","DUPLICATED_LINES_DENSITY (%)","LINES","BUGS","RELIABILITY_RATING","RELIABILITY_REMEDIATION_EFFORT","COMPLEXITY","VULNERABILITIES","SECURITY_REMEDIATION_EFFORT"};

	        
		 for (int i=0;i<myComponents.components.size();i++) {
			 
			 
			 http.setPath("api/measures/component?componentId="+myComponents.components.get(i).id+"&metricKeys=branch_coverage,"
			 		+ "line_coverage,coverage,tests,code_smells,sqale_rating,sqale_index,duplicated_lines,"
			 		+ "duplicated_lines_density,lines,bugs,reliability_rating,reliability_remediation_effort,complexity,vulnerabilities,security_remediation_effort");
			 
				httpCon=http.sendGet();
				
				responseCode=httpCon.getResponseCode();
				
				if (responseCode==200) {
					
					data =new HashMap();
					
					response=myUtils.printResponse(httpCon);
					
					json = gson.toJson(jsonParser.parse(response));
					
				//	System.out.println(json);
					
					myMetrics=gson.fromJson(json, MetricsValues.class);
					
					data.put(sheetTitle[0],myComponents.components.get(i).name);
					
					System.out.println("Adding the Projectname:"+myMetrics.component.name);
					
					System.out.println("Number of Metrics:"+myMetrics.component.measures.size());
					
					for (int j=1;j<sheetTitle.length;j++) {
						  
						  data.put(sheetTitle[j], "0");
						  System.out.println("Initialising -->"+sheetTitle[j]+":"+
						  data.get(sheetTitle[j])); }
					
					  for (int j=0;j<myMetrics.component.measures.size();j++) {
					  
					  data.put(myMetrics.component.measures.get(j).metric.toUpperCase(), myMetrics.component.measures.get(j).value);
					  System.out.println(myMetrics.component.measures.get(j).metric.toUpperCase()+":"+
					  myMetrics.component.measures.get(j).value); }
					  
					  
					 
				
					allComponents.add(data);
				}
				
			 
				
			 
		 }
		 
		// Create a Workbook
	        Workbook workbook = new XSSFWorkbook(); // new HSSFWorkbook() for generating `.xls` file

	        /* CreationHelper helps us create instances of various things like DataFormat, 
	           Hyperlink, RichTextString etc, in a format (HSSF, XSSF) independent way */
	        CreationHelper createHelper = workbook.getCreationHelper();

	        // Create a Sheet
	        Sheet sheet = workbook.createSheet("info");
	        
	      //  Map<String, Object[]> data = new TreeMap<String, Object[]>();
	        
		 
	        int rowNum=0;
	        int cellNum=0;
	        
	        Row myRow=sheet.createRow(rowNum++);
	        
	        Cell myCell;
	        System.out.println("adding Title");
	        
	        for(int k=0;k<sheetRawTitle.length;k++) {
	        	myCell=myRow.createCell(cellNum++);
	        	myCell.setCellValue(sheetRawTitle[k]);
	        }
	        
	        
	        
	        for(int i=0;i<allComponents.size();i++) {
	        	
	        	myRow=sheet.createRow(rowNum++);
	        	cellNum=0;
	        	for(int k=0;k<sheetTitle.length;k++) {
		        	myCell=myRow.createCell(cellNum++);
		        	
		        	if(allComponents.get(i).get(sheetTitle[k])!=null) {
		        	
		        	if(k>0){
		        		System.out.println("metric:"+sheetTitle[k]+"-->adding Number Value:"+Float.parseFloat(allComponents.get(i).get(sheetTitle[k]))+" \t in cell:"+rowNum+"->"+cellNum);
		        		myCell.setCellValue(Float.parseFloat(allComponents.get(i).get(sheetTitle[k])));
		        	}
		        	else {
		        		System.out.println("metric:"+sheetTitle[k]+"adding Text Value:"+allComponents.get(i).get(sheetTitle[k])+"\t in cell:"+rowNum+"->"+cellNum);
		        	myCell.setCellValue(allComponents.get(i).get(sheetTitle[k]));
		        	}
		        	
		        	
	        	}
		        	
	        	}
	        }
	        

	        FileOutputStream excelWriter = new FileOutputStream(new File(http.getExcelResultsFileName()));
	             
	             workbook.write(excelWriter);
	             excelWriter.close();
	             System.out.println("Excel File created Path:"+http.getExcelResultsFileName());
	        
	        
		}else {
			System.out.println("No response from servser:"+http.getPath());
		}
	}
	
}
