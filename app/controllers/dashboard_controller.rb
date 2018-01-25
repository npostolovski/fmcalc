class DashboardController < ApplicationController
  def index
    @club = Club.first
    @roles = Role.all
    @players = Player.where(club: @club)
    @least_versatile_players = @players.order(versatility_score: :asc).limit(3)
    @most_versatile_players = @players.order(versatility_score: :desc).limit(3)
    
    highest_suitability_scores = Role.all.map do |role|
      role.suitability_scores.order(suitability_rating: :desc).first
    end

    @highest_potential_roles = highest_suitability_scores.max_by(10) do |suitability_score|
      suitability_score.suitability_rating
    end

    render :index
  end
end
