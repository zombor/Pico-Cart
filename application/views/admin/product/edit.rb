module Picombo
	module Stache
		class Admin_Product_Edit < Mustache
			include Picombo::Baseview
			self.template = File.open(Picombo::Core.find_file('views', 'admin/product/edit', true, 'mustache').shift).read

			@id = nil

			def initialize(id)
				@id = id
			end

			def product
				Picombo::Models::Product.first(:id => @id)
			end

			def product_categories
				categories = []

				Picombo::Models::Product_category.all.each do |category|
					categories << {
						:id => category.id,
						:name => category.name,
						:selected? => product.product_category.id == category.id
					}
				end

				categories
			end
		end
	end
end