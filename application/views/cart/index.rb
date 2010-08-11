module Picombo
	module Stache
		class Cart_Index < Mustache
			include Picombo::Baseview
			self.template = File.open(Picombo::Core.find_file('views', 'cart/index', true, 'mustache').shift).read

			def items
				Picombo::Models::Shopping_Cart.instance.items
			end

			def total_price
				Picombo::Models::Shopping_Cart.instance.total_price
			end

			def total_items
				Picombo::Models::Shopping_Cart.instance.total_items
			end
		end
	end
end