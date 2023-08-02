# This file is used by Rack-based servers to start the application.
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'
      resource '*', headers: :any, methods: [:get, :post,:update,:delete]
    end
  end
require_relative "config/environment"

run Rails.application
Rails.application.load_server
