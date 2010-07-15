module Picombo
	module Stache
		class Admin_Category_Index < Mustache
			include Picombo::Baseview
			self.template = File.open(Picombo::Core.find_file('views', 'admin/category/index', true, 'mustache').shift).read

			def categories
				Picombo::Models::Product_category.all
			end
		end
	end
end