namespace :utils do
  desc "Generate SuitabilityScores for squad"
  task :squad_suitability_report => :environment do |task|
    SuitabilityScore.destroy_all
    Player.all.each do |player|
      player.versatility_score = 0
      player.save
    end

    players = Player.where(club: Club.first)

    Role.all.each do |role|
      players.each do |player|
        suitability = Suitability.new(player, role)

        suitability.determine
      end

      top3 = role.suitability_scores.order(suitability_rating: :desc).limit(3)
      available_score = 3
      top3.each do |option|
        option.player.versatility_score += available_score
        option.player.save
        available_score -= 1
      end
    end
  end
end
