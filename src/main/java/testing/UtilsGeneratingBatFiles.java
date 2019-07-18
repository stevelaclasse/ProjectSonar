package testing;

import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;

public class UtilsGeneratingBatFiles {

	protected void creatingGitCommandLine() throws Exception {
		
		List<String> gitJacocoPluginMaven = new ArrayList<String>();
		List<String> gitJacocoPluginGradle = new ArrayList<String>();
		List<String> gitCoberturaPluginMaven = new ArrayList<String>();
		List<String> gitCoberturaPluginGradle = new ArrayList<String>();
		
			HttpURLConnect http=new HttpURLConnect() ;
			HttpURLConnection httpCon;
			UtilsSortingProjects myUtils=new UtilsSortingProjects();
		
			gitJacocoPluginMaven.addAll(myUtils.readUrlFromFile(http.getJacocoPluginProjectMavenFileName()));
			
			gitJacocoPluginGradle.addAll(myUtils.readUrlFromFile(http.getJacocoPluginProjectGradleFileName()));
			
			gitCoberturaPluginMaven.addAll(myUtils.readUrlFromFile(http.getCoberturaPluginProjectMavenFileName()));
			
			gitCoberturaPluginGradle.addAll(myUtils.readUrlFromFile(http.getCoberturaPluginProjectGradleFileName()));
			
			String firstPart ="git clone";
			String secondPart="https://github.com/";
			String lastPart=".git";
			
			for (int i=0;i<gitJacocoPluginMaven.size();i++) {
				gitJacocoPluginMaven.set(i,firstPart+" "+secondPart+gitJacocoPluginMaven.get(i)+lastPart);
			}
			
			for (int i=0;i<gitJacocoPluginGradle.size();i++) {
				gitJacocoPluginGradle.set(i,firstPart+" "+secondPart+gitJacocoPluginGradle.get(i)+lastPart);
			}
			
			for (int i=0;i<gitCoberturaPluginMaven.size();i++) {
				gitCoberturaPluginMaven.set(i,firstPart+" "+secondPart+gitCoberturaPluginMaven.get(i)+lastPart);
			}
			
			for (int i=0;i<gitCoberturaPluginGradle.size();i++) {
				gitCoberturaPluginGradle.set(i,firstPart+" "+secondPart+gitCoberturaPluginGradle.get(i)+lastPart);
			}
			
			myUtils.writeUrlInFile(gitJacocoPluginMaven, http.getJacocoPluginProjectMavenBatFileName());
			myUtils.writeUrlInFile(gitJacocoPluginGradle, http.getJacocoPluginProjectGradleBatFileName());
			myUtils.writeUrlInFile(gitCoberturaPluginMaven, http.getCoberturaPluginProjectMavenBatFileName());
			myUtils.writeUrlInFile(gitCoberturaPluginGradle, http.getCoberturaPluginProjectGradleBatFileName());
	}
}
