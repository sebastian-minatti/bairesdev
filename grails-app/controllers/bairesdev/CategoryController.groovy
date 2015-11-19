package bairesdev

import grails.transaction.Transactional;

@Transactional(readOnly = true)
class CategoryController {
	def index() {
		[categories: Category.list()]
	}

	def edit() {
		[category: Category.get(params.id)]
	}
	
	def create() {
		[category: new Category(params)]
	}
	
	@Transactional
	def save() {
		def categoryInstance = new Category(name: params.name, description: params.description).save(failOnError: true)
		categoryInstance.save flush:true
		redirect(action: "index")
	}
	
	@Transactional
	def update(Category categoryInstance) {
		categoryInstance.save flush:true
		redirect(action: "index")
	}
	
	@Transactional
	def delete() {
		def categoryInstance = Category.get(params.id)
		categoryInstance.delete flush:true
		redirect(action: "index")
	}
}
