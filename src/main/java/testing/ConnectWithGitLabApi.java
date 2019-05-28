package testing;

import java.util.List;

import org.gitlab4j.api.GitLabApi;
import org.gitlab4j.api.GitLabApiException;
import org.gitlab4j.api.Pager;
import org.gitlab4j.api.models.Project;

public class ConnectWithGitLabApi {

	protected List<Project> getProjets() throws GitLabApiException{

		//	GitLabApi gitLabApi = new GitLabApi("http://www.gitlab.com", "gzr3FC9hjyyKwxBDMAbh");

		GitLabApi gitLabApi = GitLabApi.login("https://www.gitlab.com", "stevelaclasse","williamsteve");

		// Get the list of projects your account has access to
		List<Project> projects = gitLabApi.getProjectApi().getProjects();
		//Pager<Project> projectPager = gitLabApi.getProjectApi().getProjects(10);

		return projects;
	}


}
