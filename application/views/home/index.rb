module Picombo
	module Stache
		class Home_Index < Mustache
			include Picombo::Baseview
			self.template = File.open(Picombo::Core.find_file('views', 'home/index', true, 'mustache').shift).read

			def total_items
				Picombo::Models::Shopping_Cart.instance.total_items
			end
		end
	end
end