require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Assignment
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.secret_key = '92ac447697d618cf8c08ea901c9663e79e51f399ad23be1c4746be576d18e1c0c884c2d19a0bd8ab206911efaef6e7c11cfa0fabfe2a96eac8a9552950f11ef8'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
