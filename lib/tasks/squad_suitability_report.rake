namespace :utils do
  desc "Generate SuitabilityScores for squad"
  task :squad_suitability_report => :environment do |task|
    SuitabilityScore.destroy_all
    players = Player.where(club: Club.first)

    Role.all.each do |role|
      players.each do |player|
        suitability = Suitability.new(player, role)

        suitability.determine
      end
    end
  end
end
