require 'dm-migrations'
require 'dm-migrations/migration_runner'

DataMapper::Logger.new(STDOUT, :debug)
DataMapper.logger.debug('Starting Migration')

DataMapper::MigrationRunner.migration 1, :create_initial_schema do
	up do
		create_table :users do
			column :id,       DataMapper::Property::Serial
			column :username, String, :size => 50
			column :password, String, :size => 50
			column :email,    String, :size => 50
		end

		create_table :products do
			column :id,                  DataMapper::Property::Serial
			column :name,                String, :size => 50
			column :price,               Float
			column :description,         String, :size => 50
			column :product_category_id, Integer
		end

		create_table :product_categories do
			column :id,                  DataMapper::Property::Serial
			column :name,                String, :size => 50
		end
	end

	down do
		drop_table :users
		drop_table :products
		drop_table :product_categories
	end
end