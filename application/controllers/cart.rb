module Picombo
	module Controllers
		class Cart < Picombo::Controllers::Template
			def initialize
				super
			end

			def add
				id = Picombo::Input.instance.get('id')

				# make sure that this is a valid item
				product = Picombo::Models::Product.first(:id => id)

				raise Picombo::E404 if product.nil?

				Picombo::Models::Shopping_Cart.instance.add_item(product, 1)
				Picombo::Core.redirect('home')
			end
		end
	end
end