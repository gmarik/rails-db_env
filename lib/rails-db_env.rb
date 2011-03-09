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

end if ENV['DB_ENV']
