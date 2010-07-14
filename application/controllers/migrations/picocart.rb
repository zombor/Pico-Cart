require Picombo::Core.find_file('hooks', 'migrations')[0]

module Picombo
	module Controllers
		class Migrations_picocart
			def index(direction = 'up')
				DataMapper::MigrationRunner.migrate_up! if direction == 'up'
				DataMapper::MigrationRunner.migrate_down! if direction == 'down'
			end
		end
	end
end