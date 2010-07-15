module Picombo
	module Stache
		class Admin_Product_Index < Mustache
			include Picombo::Baseview
			self.template = File.open(Picombo::Core.find_file('views', 'admin/product/index', true, 'mustache').shift).read

			def products
				Picombo::Models::Product.all
			end
		end
	end
end