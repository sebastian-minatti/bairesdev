package bairesdev

class Supplier {

	int code
	String description
	
    static constraints = {
    }
	
	static mapping = {
		version false
		id generator:'assigned', name:'code'
	}
}
