class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		
		"/product" {
			controller = "product"
			action = "list"
		}

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
