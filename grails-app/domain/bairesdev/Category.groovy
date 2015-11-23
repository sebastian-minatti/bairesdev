package bairesdev

class Category {
	String name
	String description
	
    static constraints = {
		name(nullable:false)
		description(nullable:false)
    }
	
	static mapping = {
		version false
		id generator:'assigned', name:'name'
	}
}
