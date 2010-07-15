module Picombo
	module Stache
		class Admin_Category_Edit < Mustache
			include Picombo::Baseview
			self.template = File.open(Picombo::Core.find_file('views', 'admin/category/edit', true, 'mustache').shift).read

			@id = nil

			def initialize(id)
				@id = id
			end

			def category
				Picombo::Models::Product_category.first(:id => @id)
			end
		end
	end
end