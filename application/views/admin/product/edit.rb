module Picombo
	module Stache
		class Admin_Product_Edit < Mustache
			self.template = File.open(Picombo::Core.find_file('views', 'admin/product/edit', true, 'mustache').shift).read

			@id = nil
			@status_message = nil

			def id=(id)
				@id = id
			end

			def status_message=(message)
				@status_message = message
			end

			def status_message
				{
					:message => @status_message,
					:type => 'good'
				}
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