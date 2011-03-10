Rails::Configuration.class_eval do 
  def database_configuration_with_db_env
    puts "connecting to: #{ENV['DB_ENV']}"

    (config = database_configuration_without_db_env).merge({
      "_#{Rails.env}" => config[Rails.env], # original config
      Rails.env => config[ENV['DB_ENV']]    # overriden one
    })
  end

  alias :database_configuration_without_db_env :database_configuration
  alias :database_configuration :database_configuration_with_db_env

  # since gems are loaded after configuration 
  # re establish connection with DB_ENV env
  warn "[rails-db_env]: reconnecting to \x1B[1;37;42m#{ENV['DB_ENV']}\x1B[m DB "

  ActiveRecord::Base.configurations = Rails.configuration.database_configuration
  ActiveRecord::Base.establish_connection
end if ENV['DB_ENV'] && Rails.configuration.frameworks.include?(:active_record)
