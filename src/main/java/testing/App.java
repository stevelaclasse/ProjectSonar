package testing;



import java.net.HttpURLConnection;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

import org.gitlab4j.api.Pager;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParser;

public class App 
{
    public static void main( String[] args ) throws Exception
    {
        System.out.println( "Hello World!" );
        
		HttpURLConnect http=new HttpURLConnect() ;
		HttpURLConnection httpCon;
		UtilsShowResponse myUtils=new UtilsShowResponse();
	//	Gson gson = new Gson();
		Gson gson=new GsonBuilder().setPrettyPrinting().create();
		JsonParser jsonParser = new JsonParser();
		String response;
		Map responseInMapFormat;
		
		System.out.println("Sending a GET Request");
		
		httpCon=http.sendGet();
		
		response=myUtils.printResponse(httpCon);
		
		String json = gson.toJson(jsonParser.parse(response));
		
		//responseInMapFormat= gson.fromJson(json, Map.class);
		
		//System.out.println(responseInMapFormat+"\n");
		
		System.out.println("Printing in JSON Format \n");
		System.out.println(json);

		

		

    }
}
