package bairesdev

class ProductService {

	Product createProduct(String code, String description, List<Category> categories, double price, Currency currency) {
		def product = new Product(code: code, description: description, price: price, currency: currency)
		product.save()
		product
	}

	void updateProduct(Product product, String code, String description, List<Category> categories, double price, Currency currency) {
		product.code = code
		product.description = description
		product.categories = categories
		product.price = price
		product.currency = currency
		product.save()
	}
}
