class SessionsController < ApplicationController

  # GET /session/new
  def new
  end

  # POST /session
  def create
    user = User.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.site
        redirect_to site_admin_path(user.site)
      else
        redirect_to new_site_path
      end
    else
      redirect_to new_session_path, alert: "ユーザー名かパスワードが間違っています"
    end
  end

  # DELETE /session
  def destroy
    session[:user_id] = nil
    redirect_to root_path, :notice => "Log out"
  end
end
