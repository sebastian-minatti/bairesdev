package bairesdev

class Product {
	static hasMany = [categories :Category]
	String code
	String description
	double price
	Currency currency
	Supplier supplier
	Date dateCreated
	Date lastUpdated
	long stock
	boolean isActive
	
    static constraints = {
		code blank: false, nullable:false
		description blank: false, nullable:false
		price(matches: '^\\d{0,8}(\\.\\d{1,4})?$')
		stock(matches: '^\\d')
    }
	static mapping = {
		version false
		id generator:'assigned', name:'code'
	}

}
