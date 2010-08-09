module Picombo
	module Controllers
		class Admin_category < Picombo::Controllers::Template
			def initialize
				super
			end

			def index
				@template[:body] = Picombo::Stache::Admin_Category_Index.render
			end

			def add
				body = Picombo::Stache::Admin_Category_Form.new

				if Picombo::Input.instance.post.length > 0
					post = Picombo::Input.instance.post
					product = Picombo::Models::Product_category.new
					product.name = post['name']
					product.order = post['order']
					product.save

					body = Picombo::Stache::Admin_Category_Index.new
					body.status_message = 'You have created the category'
				end

				@template[:body] = body.render
			end

			def edit
				id = Picombo::Input.instance.get('id')

				body = Picombo::Stache::Admin_Category_Form.new(id)

				if Picombo::Input.instance.post.length > 0
					post = Picombo::Input.instance.post
					product = Picombo::Models::Product_category.first(:id => id)
					product.name = post['name']
					product.order = post['order']
					product.save
					body.status_message = 'You have updated the category'
				end

				@template[:body] = body.render
			end
		end
	end
end