module Picombo
	module Stache
		class Admin_Product_Index < Mustache
			self.template = File.open(Picombo::Core.find_file('views', 'admin/product/index', true, 'mustache').shift).read

			def products
				puts Picombo::Models::Product.all.inspect
				Picombo::Models::Product.all
			end
		end
	end
end