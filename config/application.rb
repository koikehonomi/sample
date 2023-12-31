require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Shukatu
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    config.i18n.default_locale = :ja  #--------------追加
    config.time_zone = 'Tokyo'   #---------------追加
    # config.eager_load_paths << Rails.root.join("extras")
    config.hosts << 'xxx.onrender.com'
  end
end
