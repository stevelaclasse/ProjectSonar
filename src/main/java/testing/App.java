package testing;



import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;

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
		
		System.out.println("Sending a GET Request");
		
		httpCon=http.sendGet();
		
		response=myUtils.printResponse(httpCon);
		
		String json = gson.toJson(jsonParser.parse(response));
		
		//responseInMapFormat= gson.fromJson(json, Map.class);
		
		//System.out.println(responseInMapFormat+"\n");
		
		System.out.println("Printing in JSON Format \n");
		System.out.println(json);

		System.out.println("Extracting 2 informations and saving it in a table \n");
		
		//MyProject[] myProject =gson.fromJson(json, MyProject[].class);
		MyProject2 myProject =gson.fromJson(json, MyProject2.class);
		
		System.out.println("Printing the content of the table \n");
		//myUtils.myProjectListing(myProject);
		
		
		
		List<String> myUrls=myUtils.myProjectListing2(myProject);
		myUtils.ShowProjectUrl(myUrls);
		
		//ConnectWithGitLabApi connectWithGitLabApi = new ConnectWithGitLabApi();
		//List<Project> projects=connectWithGitLabApi.getProjets();
		

    }
}
