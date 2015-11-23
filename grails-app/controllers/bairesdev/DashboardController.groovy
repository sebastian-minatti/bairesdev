package bairesdev

class DashboardController {
	static defaultAction = "index"
	
    def index() { 
		render view: 'index.ftl', model: [name: 'Jake', state: 'Missouri']
	}
}
