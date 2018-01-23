namespace :utils do
  IMPORT_DIR = "tmp/import"

  desc "Import the squad for a new club from an XLSX file"
  task :import_from_xlsx => :environment do |task|
    Dir.foreach(IMPORT_DIR) do |fname|
      Import.club(fname)
    end
  end
end
