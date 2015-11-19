import bairesdev.Product
import bairesdev.Category
import bairesdev.Currency

class BootStrap {

    def init = { servletContext ->
		if (!Category.count()) {
			new Category(name: "Mobile", description: "smartphones" ).save(failOnError: true)
			new Category(name: "Computer", description: "pcs" ).save(failOnError: true)
			new Category(name: "Audio", description: "audio" ).save(failOnError: true)
		}
		if (!Product.count()){
			new Product(code: "LG122", description: "cellphone", price:7120.55, currency: Currency.DOLLAR).save(failOnError: true)
			new Product(code: "LG123", description: "cellphone", price:7121.55, currency: Currency.DOLLAR).save(failOnError: true)
			new Product(code: "LG124", description: "cellphone", price:7122.55, currency: Currency.DOLLAR).save(failOnError: true)
		}		
    }
    def destroy = {
    }
}
