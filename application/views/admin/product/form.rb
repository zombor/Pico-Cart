module Picombo
	module Stache
		class Admin_Product_Form < Mustache
			include Picombo::Baseview
			self.template = File.open(Picombo::Core.find_file('views', 'admin/product/form', true, 'mustache').shift).read

			@id = nil

			def initialize(id = nil)
				@id = id
			end

			def product
				product = Picombo::Models::Product.first(:id => @id)
				return product.nil? ? Picombo::Models::Product.new : product
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