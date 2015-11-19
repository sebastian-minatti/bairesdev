package bairesdev

class Product {
	static hasMany = [categories :Category]
	String code
	String description
	double price
	Currency currency
	
    static constraints = {
		code blank: false, nullable:false
		description blank: false, nullable:false
		price(matches: '^\\d{0,8}(\\.\\d{1,4})?$')
    }
	static mapping = {
		version false;
	}

}
