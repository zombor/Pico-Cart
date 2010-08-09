module Picombo
	module Models
		class Product
			include DataMapper::Resource
			storage_names[:default] = 'products'
			property :id,                  Serial
			property :name,                String, :length => 50
			property :price,               Float
			property :description,         String, :length => 50
			property :product_category_id, Integer
			property :order,               Integer

			belongs_to :product_category, :model => 'Picombo::Models::Product_category'
		end
	end
end