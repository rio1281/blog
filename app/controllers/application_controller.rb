class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private

	def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def check_if_logged_in!
  	redirect_to new_session_path unless current_user
  end

  def check_if_own_user_page!
  	redirect_to root_path unless current_user == User.find(params[:id])
  end

end
