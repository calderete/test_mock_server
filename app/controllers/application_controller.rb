class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  require 'factory_bot_rails'
end
