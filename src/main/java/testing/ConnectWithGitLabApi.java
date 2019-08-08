package testing;

import java.util.List;

import org.gitlab4j.api.GitLabApi;
import org.gitlab4j.api.GitLabApi.ApiVersion;
import org.gitlab4j.api.GitLabApiException;
import org.gitlab4j.api.Pager;
import org.gitlab4j.api.models.Project;

public class ConnectWithGitLabApi {

	protected List<Project> getProjets() throws GitLabApiException{

		GitLabApi gitLabApi = new GitLabApi(ApiVersion.V4,"http://www.gitlab.com", "fof3zUzKbVzsPUsMw4ju");

		//GitLabApi gitLabApi = GitLabApi.login("https://www.gitlab.com", "stevelaclasse","williamsteve");

		// Get the list of projects your account has access to
		List<Project> projects = gitLabApi.getProjectApi().getProjects();
		//Pager<Project> projectPager = gitLabApi.getProjectApi().getProjects(10);
		
		//https://api.github.com/repositories?since=100&language:java;
		//https://api.github.com/legacy/repos/search/language=java;
		//https://api.github.com/repos/rzwitserloot/lombok/contents/
		//https://api.github.com/search/repositories?q=maven+language:java&page=2&per_page=100
		//https://api.github.com/repos/octokit/octokit.rb/contents/spec1
		
		//Don't forget to ignore test failure with maven or gradle

		return projects;
	}


}
