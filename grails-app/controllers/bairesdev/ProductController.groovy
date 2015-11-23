package bairesdev

import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductController {
	def scaffold = Product
	
	def index() {
		[products: Product.list()]
	}

	def edit() {
		[product: Product.get(params.id)]
	}
	
	def create() {
		[product: new Product(params)]
	}
	
	@Transactional
	def save() {
		def productInstance = new Product(code: params.code, description: params.description, price: params.price, currency: params.currency).save(failOnError: true)
		productInstance.save flush:true
		redirect(action: "index")
	}
	
	@Transactional
	def update(Product productInstance) {
		System.out.println("el valor es" + productInstance)
		productInstance.save flush:true
		redirect(action: "index")
	}
	
	@Transactional
	def delete() {
		def productInstance = Product.get(params.id)
		productInstance.delete flush:true
		redirect(action: "index")
	}
}
