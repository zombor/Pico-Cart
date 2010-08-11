module Picombo
	module Controllers
		class Cart < Picombo::Controllers::Template
			def initialize
				super
			end

			def index
				@template[:body] = Picombo::Stache::Cart_Index.render
			end

			def add
				id = Picombo::Input.instance.get('id')

				# make sure that this is a valid item
				product = Picombo::Models::Product.first(:id => id)

				raise Picombo::E404 if product.nil?

				Picombo::Models::Shopping_Cart.instance.add_item(product, 1)
				Picombo::Core.redirect('cart/index')
			end

			def empty
				Picombo::Models::Shopping_Cart.instance.empty!

				Picombo::Core.redirect('cart/index')
			end
		end
	end
end