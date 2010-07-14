task :default => :install_db

desc "Installs the database"
task :install_db do
	ruby('cli.rb /migrations_picocart/index/up')
end