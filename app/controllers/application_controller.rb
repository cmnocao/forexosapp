class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user

	def admin
		current_user.admin == true
	end
	helper_method :admin

	def authorize
	  redirect_to login_path, alert: "Not authorized" if current_user.nil?
	end
	helper_method :authorize

	def authorize_admin
	  redirect_to root_path, alert: "Not authorized" if !current_user.admin?
	end
	helper_method :authorize_admin
end
