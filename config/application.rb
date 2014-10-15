require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Angtest
  class Application < Rails::Application
  
	config.encoding = "utf-8"
	config.filter_parameters += [:password]
	config.active_support.escape_html_entities_in_json = true

    config.active_record.schema_format = :sql
    config.assets.enabled = true
    config.assets.version = '2.0'
	config.action_controller.perform_caching = false
  end
end
