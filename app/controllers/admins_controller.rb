class AdminsController < ApplicationController
  before_action :check_if_own_site_in_admin!

  # GET /sites/:site_id/admin
  def show
    @site = current_user.site
    @posts = @site.posts
  end
end
