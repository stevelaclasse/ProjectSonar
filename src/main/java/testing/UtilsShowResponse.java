package testing;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
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
}
