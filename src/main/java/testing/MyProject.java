package testing;

import java.util.List;

public class MyProject {
	String full_name;
//String html_url;
}

class MyProject2 {
	List<MyProject> items;
}

class MyRepositories {
	String url;
}

class MyProject1 {
	List<MyRepositories> repositories;
}

class PagingInformations {
	int pageIndex;
	int pageSize;
	int total;
}

class SonarQubeComponents {
	String id;
	String key;
	String name;
}

class AllComponentsSonarQube {
	PagingInformations paging;
	List<SonarQubeComponents> components;
}

class ComponentInformation {
	String id;
	String key;
	String name;
	List<Metrics> measures;
}

class Metrics {

	String metric;
	String value;

}

class MetricsValues {
	ComponentInformation component;
}