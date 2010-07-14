module Picombo
	module Models
		class Product_category
			include DataMapper::Resource
			storage_names[:default] = 'product_categories'

			property :id,   Serial
			property :name, String, :length => 50

			has n, :products, :model => 'Picombo::Models::Product'
		end
	end
end