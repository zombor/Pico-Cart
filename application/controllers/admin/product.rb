module Picombo
	module Controllers
		class Admin_product < Picombo::Controllers::Template
			def initialize
				super
			end

			def index
				@template[:body] = Picombo::Stache::Admin_Product_Index.render
			end

			def edit
				id = Picombo::Input.instance.get('id')

				body = Picombo::Stache::Admin_Product_Edit.new
				body.id = id

				if Picombo::Input.instance.post.length > 0
					post = Picombo::Input.instance.post
					product = Picombo::Models::Product.first(:id => id)
					product.name = post['name']
					product.price = post['price']
					product.description = post['description']
					product.product_category_id = post['product_category_id']
					product.save
					body.status_message = 'You have updated the product'
				end
				

				@template[:body] = body.render
			end
		end
	end
end