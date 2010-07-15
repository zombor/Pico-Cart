module Picombo
	module Stache
		class Admin_Product_Edit < Mustache
			self.template = File.open(Picombo::Core.find_file('views', 'admin/product/edit', true, 'mustache').shift).read

			@id = nil

			def id=(id)
				@id = id
			end

			def product
				Picombo::Models::Product.first(:id => @id)
			end

			def product_categories
				Picombo::Models::Product_Category.all
			end
		end
	end
end