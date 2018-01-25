class DashboardController < ApplicationController
  def index
    @club = Club.first
    @roles = Role.all
    @players = Player.where(club: @club)
    @least_versatile_players = @players.order(versatility_score: :asc).limit(3)
    @most_versatile_players = @players.order(versatility_score: :desc).limit(3)
    render :index
  end
end
