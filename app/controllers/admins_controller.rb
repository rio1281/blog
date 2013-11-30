class AdminsController < ApplicationController
	before_action :check_if_own_site_in_admin!

  def show
  end
end
