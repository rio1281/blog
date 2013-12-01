class AdminsController < ApplicationController
	before_action :check_if_own_site_in_admin!

	# GET /sites/:site_id/admin
  def show
  	@posts = Post.all
  end
end
