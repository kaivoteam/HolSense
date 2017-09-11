class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #load_and_authorize_resource

  #autenticar excepto en el index
  before_action :authenticate_user!

  def after_sign_in_path_for(resource_or_scope)
		print current_user
		if current_user.holsense_role?
      rails_admin.dashboard_path	
    elsif current_user.utp_role?
      dash_utp_path
    elsif current_user.subject_role?
      levels_path
    end
	end

end
