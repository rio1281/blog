class SessionsController < ApplicationController

	# GET /session/new
  def new
  end

  # POST /session
  def create
  	user = User.find_by_name(params[:name])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		# TODO: redirect to the admin page
  	else
  		redirect_to new_session_path, alert: "ユーザー名かパスワードが間違っています"
  	end
  end

  # DELETE /session
  def destroy
  end
end
