package bairesdev

import grails.rest.Resource

@Resource(uri='/suppliers', formats=['json', 'xml'])
class Supplier {

	String code
	String description
	
    static constraints = {
    }
	
	static mapping = {
		version false
		id generator:'assigned', name:'code'
	}
}
