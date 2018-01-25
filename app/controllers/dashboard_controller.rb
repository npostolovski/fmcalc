class DashboardController < ApplicationController
  def index
    @club = Club.first
    @roles = Role.all
    render :index
  end
end
