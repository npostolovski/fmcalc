class DashboardController < ApplicationController
  def index
    @roles = Role.all
    render :index
  end
end
