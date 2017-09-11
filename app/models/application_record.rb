class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  RailsAdmin.config do |config|
	  config.main_app_name = ["HolSense"]
	end
end
