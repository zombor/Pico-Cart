module Picombo
	module Models
		class Shopping_Cart
			include Singleton

			def initialize
				@items = Picombo::Session.instance.get('cart')
				@items = {} if @items.nil?
			end

			def items
				@items
			end

			def add_item(product, quantity)
				if @items[product.id].nil?
					@items[product.id] = {
						:quantity => quantity,
						:product => product
					}
				elsif
					@items[product.id][:quantity]+=quantity
				end

				Picombo::Session.instance.set('cart', @items)
			end

			def total_items
				@items.count
			end

			def total_price
				total = 0

				@items.each do |item|
					total+=item.price
				end

				total
			end

			def clear!
				@items = {}
				Picombo::Session.instance.set('cart', @items)
			end
		end
	end
end