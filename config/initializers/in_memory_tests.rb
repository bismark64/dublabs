# def in_memory_database?
#   Rails.env == "development" and ActiveRecord::Base.connection.class == ActiveRecord::ConnectionAdapters::SQLiteAdapter || ActiveRecord::Base.connection.class == ActiveRecord::ConnectionAdapters::SQLite3Adapter and Rails.configuration.database_configuration['development']['database'] == ':memory:'
# end

# if in_memory_database?
#   puts "creating sqlite in memory database"
#   load "#{Rails.root}/db/schema.rb"
# end