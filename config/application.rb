require_relative 'boot'

require 'rails/all'
require "./app/modules/enums"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TestProject
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.time_zone = 'Asia/Seoul'
    config.i18n.default_locale = :en
    config.assets.paths << "#{Rails.root}/app/assets/videos"
    #config.force_ssl = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
