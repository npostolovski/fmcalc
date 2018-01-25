namespace :utils do
  IMPORT_DIR = File.expand_path("tmp/import")

  desc "Import the squad for a new club from an XLSX file"
  task :import_from_xlsx => :environment do |task|
    Club.destroy_all
    Player.destroy_all
    club_files = Dir.entries(IMPORT_DIR) - %w[. ..]
    club_files.each do |fname|
      Import.new(fname).club
    end
  end
end
