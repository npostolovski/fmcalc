require 'roo'
require_relative '../models/club.rb'

class Import
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def club
    filepath = File.expand_path("tmp/import/#{filename}")
    xlsx = Roo::Spreadsheet.open(filepath)
    club_name = xlsx.sheet(0).row(1)[0]

    xlsx.each_row_streaming(offset: 2) do |row|
      name = row[0].to_s.split

      Player.create(first_name: name[0], last_name: name[1])
    end

    Club.create(name: club_name)
  end
end
