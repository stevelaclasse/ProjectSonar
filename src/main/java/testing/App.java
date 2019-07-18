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
        
    	 Tasks myProgramm=new Tasks();
    	//myProgramm.extractingProjectsFromGithub();
    	myProgramm.createBatCommandForGitDownloadAndCompilationAndSonartest();
    }
}
