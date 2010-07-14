require 'dm-core'
puts 'SETTING UP DM'
DataMapper.setup(:default,
                 {:host => Picombo::Config.get('datamapper.default.host'),
                  :adapter => Picombo::Config.get('datamapper.default.driver'),
                  :database => Picombo::Config.get('datamapper.default.database'),
                  :username => Picombo::Config.get('datamapper.default.username'),
                  :password => Picombo::Config.get('datamapper.default.password')})